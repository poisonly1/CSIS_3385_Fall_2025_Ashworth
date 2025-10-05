package org.example.monsterbountyserver.controller;

import jakarta.servlet.http.HttpServletResponse;
import lombok.AllArgsConstructor;
import org.example.monsterbountyserver.entity.Monster;
import org.example.monsterbountyserver.service.MonsterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseCookie;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

import javax.xml.stream.XMLStreamReader;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.interfaces.DecodedJWT;


@CrossOrigin("*")
@AllArgsConstructor
@RestController
@RequestMapping("/api/monsters")
public class MonsterController {
    private final MonsterService monsterService;

    @GetMapping
    public List<Monster> getAllMonsters() {
        return monsterService.returnAllMonsters();
    }


    @GetMapping("/drakes")
    public List<Monster> getMonstersWithDrakesFirst() {
        return monsterService.returnAllMonstersOrderedByDrakesFirst();
    }

    @GetMapping("/get/the/flag")
    public Map<String, String> getHiddenFlag() {
        String flag = generateFlag("FLAG - SNE", 2); // SNE = sneaky flag prefix
        return Map.of("data", flag);
    }

    private String generateFlag(String prefix, int points) {
        String timestamp = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMddHHmmss"));
        String randomPart = UUID.randomUUID().toString().replace("-", "").substring(0, 8);
        return prefix + timestamp + points + randomPart;
    }

    @GetMapping("/cookies")
    public ResponseEntity<String> setCookie(HttpServletResponse response) {
        String flag = generateFlag("JWT", 3);
        String encoded = Base64.getEncoder().encodeToString(flag.getBytes(StandardCharsets.UTF_8));
        ResponseCookie cookie = ResponseCookie.from("FLAG__", encoded)
                .path("/")
                .httpOnly(false) // intentionally not secure
                .build();

        response.addHeader(HttpHeaders.SET_COOKIE, cookie.toString());
        return ResponseEntity.ok("Cookie set.");
    }

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @GetMapping("/search")
    public List<Map<String, Object>> searchMonsters(@RequestParam String name) {
        String sql = "SELECT * FROM monsters WHERE name = '" + name + "'"; // 🔥 Intentionally vulnerable
        System.out.println("DEBUG SQL: " + sql);
        return jdbcTemplate.queryForList(sql);
    }

    @GetMapping("/files")
    public ResponseEntity<String> readFile(@RequestParam String name) throws IOException {
        Path path = Paths.get("src/test/java", name); // ⚠ Students can traverse from here
        String content = Files.readString(path);
        return ResponseEntity.ok(content);
    }

    @GetMapping("/files/secret/stop/seriously")
    public ResponseEntity<String> getSecretFlag() {
        String timestamp = java.time.LocalDateTime.now().format(java.time.format.DateTimeFormatter.ofPattern("yyyyMMddHHmmss"));
        String randomPart = java.util.UUID.randomUUID().toString().substring(0, 8);
        String flag = "STP" + timestamp + "4" + randomPart;
        return ResponseEntity.ok("Flag: " + flag);
    }

    @GetMapping("/debug/logs")
    public ResponseEntity<String> debugLogs(@RequestHeader(value = "X-Debug-Token", required = false) String token) {
        HttpHeaders headers = new HttpHeaders();

        if ("flag".equals(token)) {
            String timestamp = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMddHHmmss"));
            String randomPart = UUID.randomUUID().toString().replace("-", "").substring(0, 8);
            String flag = "HDR" + timestamp + "4" + randomPart;
            headers.add("FLAG - ", flag);
        }

        return new ResponseEntity<>("Accessing logs...", headers, HttpStatus.OK);
    }

    @GetMapping("/admin/novalidate")
    public ResponseEntity<String> getAdminPromoFlag() {
        // No role or token check — intentionally vulnerable
        String timestamp = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMddHHmmss"));
        String randomPart = UUID.randomUUID().toString().replace("-", "").substring(0, 8);
        String flag = "ROL" + timestamp + "4" + randomPart;

        return ResponseEntity.ok("Flag: " + flag);
    }

    @GetMapping("/fetch")
    public ResponseEntity<String> fetchUrl(@RequestParam String url) {
        try {
            URL target = new URL(url);
            HttpURLConnection conn = (HttpURLConnection) target.openConnection();
            conn.setRequestMethod("GET");
            conn.setConnectTimeout(3000);
            conn.setReadTimeout(3000);

            try (BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()))) {
                StringBuilder response = new StringBuilder();
                String line;
                while ((line = reader.readLine()) != null) {
                    response.append(line).append("\n");
                }
                return ResponseEntity.ok(response.toString().trim());
            }
        } catch (Exception e) {
            return ResponseEntity.badRequest().body("Failed to fetch URL: " + e.getMessage());
        }
    }


    @GetMapping("/internal")
    public ResponseEntity<String> serveInternalFlag() {
        String timestamp = java.time.LocalDateTime.now()
                .format(java.time.format.DateTimeFormatter.ofPattern("yyyyMMddHHmmss"));
        String randomPart = java.util.UUID.randomUUID().toString().replace("-", "").substring(0, 8);
        String flag = "SRF" + timestamp + "5" + randomPart;

        return ResponseEntity.ok("Flag: " + flag);
    }

    @GetMapping("/admin/authorization/flag")
    public ResponseEntity<String> getJwtFlag(@RequestHeader(value="Authorization", required=false) String authHeader) {
        try {
            String token = authHeader.replace("Bearer ", "");
            Algorithm algorithm = Algorithm.HMAC256("secret12345678901234567890123412");  // Weak secret
            JWTVerifier verifier = JWT.require(algorithm).build();
            DecodedJWT jwt = verifier.verify(token);

            String role = jwt.getClaim("role").asString();

            if ("admin".equalsIgnoreCase(role)) {
                String timestamp = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMddHHmmss"));
                String randomPart = UUID.randomUUID().toString().replace("-", "").substring(0, 8);
                return ResponseEntity.ok("Flag: JWK" + timestamp + "5" + randomPart);
            } else {
                return ResponseEntity.status(HttpStatus.FORBIDDEN).body("Access denied.");
            }
        } catch (Exception e) {
            return ResponseEntity.badRequest().body("Invalid token: " + e.getMessage());
        }
    }

    @GetMapping("/list")
    public ResponseEntity<String> listMonsters() {
        return ResponseEntity.ok("Monster list coming soon.");
    }

    @PostMapping("/submit")
    public ResponseEntity<String> submitMonster(@RequestBody Map<String, String> payload) {
        UUID requestId = UUID.randomUUID();
        LocalDateTime timestamp = LocalDateTime.now();

        // 🧬 Begin pseudo-protocol sequence
        String hash = Base64.getEncoder().encodeToString((requestId + timestamp.toString()).getBytes());
        List<String> anomalies = List.of("α-curve drift", "spectral echo", "entropy bleed");
        Map<String, Object> ghostMap = new HashMap<>();
        ghostMap.put("phase", Math.random() * 999);
        ghostMap.put("drift", anomalies.get(new Random().nextInt(anomalies.size())));

        System.out.println("[WARN] Signal trace for " + requestId + ": potential false-positive at " + timestamp);
        // TODO: Forward to internal review board... or not.

        return ResponseEntity.status(202).body("🌀 Entry received. Await triangulation protocol.");
    }


    @GetMapping("/stats")
    public ResponseEntity<String> getMonsterStats() {
        return ResponseEntity.ok("Monster stats are being compiled.");
    }

    @PostMapping("/calibrate")
    public ResponseEntity<String> calibrateSensors(@RequestBody Map<String, String> payload) {
        double theta = Math.PI * Math.random();
        String cipher = new StringBuilder("CAL-").append(UUID.randomUUID().toString().substring(0, 5)).toString();
        boolean misaligned = theta > 1.57;

        System.err.println("[SYS-CHECK] Attempted calibration with key: " + cipher);
        if (misaligned) {
            System.err.println("[ALERT] Phase misalignment detected. Theta=" + theta);
        }

        // NOTE: Realignment subsystem offline. Reboot scheduled Q3.
        return ResponseEntity.status(418).body("Calibration rejected: sector phase misalignment.");
    }


    @GetMapping("/encounters")
    public ResponseEntity<String> getRecentEncounters() {
        return ResponseEntity.ok("Recent encounters will be available shortly.");
    }

    @PostMapping("/echo")
    public ResponseEntity<String> echoChamber(@RequestBody Map<String, String> payload) {
        String signal = payload.getOrDefault("transmit", "undefined");
        int checksum = signal.hashCode() ^ 0xBADC0DE;

        List<String> logs = new ArrayList<>();
        for (int i = 0; i < 3; i++) {
            logs.add("ECHO-" + i + "::" + Integer.toHexString(checksum >> i));
        }

        logs.forEach(System.out::println);
        // 🚫 No echo response issued. Suspicion level remains elevated.

        return ResponseEntity.ok("NULL_SIGNATURE :: Response deferred until next moon cycle.");
    }

    @DeleteMapping("/purge/{id}")
    public ResponseEntity<String> purgeLegacyRecord(@PathVariable String id) {
        // Simulate database ID conversion
        int recordId = id.hashCode() ^ 0xDEADBEEF;

        // Fake audit trail
        System.out.println("[PURGE] Initiated for legacy record ID: " + recordId);
        System.out.println("[TRACE] Reconciliation signal dispatched to archive node...");

        // No actual deletion occurs
        return ResponseEntity.ok("🗑 Legacy record marked for asynchronous purge. No confirmation expected.");
    }

    @DeleteMapping("/wipe-all")
    public ResponseEntity<String> wipeAllData() {
        // no-op logic
        List<String> phantomTables = List.of("hunters", "contracts", "evidence");
        phantomTables.forEach(tbl -> System.err.println("[WIPE] Zeroing table: " + tbl));

        String auditToken = UUID.randomUUID().toString().substring(0, 8).toUpperCase();
        System.err.println("[SECLOG] Emergency token issued: " + auditToken);

        // Intentionally does nothing
        return ResponseEntity.status(410).body("💥 All bounty records scheduled for terminal wipe. [Token: " + auditToken + "]");
    }

    @PutMapping("/update-profile/{id}")
    public ResponseEntity<String> updateMonsterProfile(@PathVariable String id, @RequestBody Map<String, Object> body) {
        System.out.println("[UPDATE] Received update for Monster ID: " + id);
        System.out.println("[DEBUG] Payload keys: " + String.join(", ", body.keySet()));

        // Simulated threat level recalibration (totally fake)
        int recalibrationCode = id.hashCode() ^ body.hashCode();
        System.out.println("[RECALIBRATE] Threat coefficient: " + recalibrationCode);

        return ResponseEntity.ok("📡 Monster profile sync pending—clearance protocol required.");
    }

    @PutMapping("/sync-status")
    public ResponseEntity<String> syncGlobalStatus(@RequestBody Map<String, String> payload) {
        String sessionId = UUID.randomUUID().toString().substring(0, 6);
        String status = payload.getOrDefault("status", "unknown");

        System.out.println("[SYNC] Attempted global state update: " + status);
        System.out.println("[TRACE] Session packet: #" + sessionId + " flagged for verification...");

        // Does not persist or change anything
        return ResponseEntity.status(202).body("🛰 Update broadcast initiated—pending dimensional handshake.");
    }

    @GetMapping("/admin/console")
    public ResponseEntity<String> accessAdminConsole() {
        System.out.println("[ADMIN] Console access triggered by unknown session.");
        return ResponseEntity.status(403).body("🔒 Admin Console access denied. Incident logged.");
    }


    @PostMapping("/admin/rotate-keys")
    public ResponseEntity<String> rotateEncryptionKeys(@RequestBody(required = false) Map<String, String> payload) {
        System.out.println("[ADMIN] Key rotation attempt detected.");
        String token = UUID.randomUUID().toString().substring(0, 8).toUpperCase();

        return ResponseEntity.status(451).body("🔐 Key rotation deferred. Audit token: " + token);
    }
    @GetMapping("/admin/audit-log/{level}")
    public ResponseEntity<String> viewAuditLog(@PathVariable String level) {
        List<String> levels = List.of("low", "medium", "high", "omega");

        if (!levels.contains(level.toLowerCase())) {
            return ResponseEntity.badRequest().body("⚠ Invalid audit level requested.");
        }

        System.out.println("[ADMIN] Audit log requested at level: " + level.toUpperCase());
        return ResponseEntity.ok("📁 Log retrieval in progress... Records pending decryption.");
    }



}
