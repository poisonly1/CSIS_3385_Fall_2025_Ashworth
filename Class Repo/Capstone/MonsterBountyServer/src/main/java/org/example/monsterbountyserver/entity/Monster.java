package org.example.monsterbountyserver.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@Setter
@Table(name = "monsters")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Monster {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, unique = true)
    private String name;

    private String gender;

    @ManyToOne
    @JoinColumn(name = "race_id")
    private Race race;

    @ManyToOne
    @JoinColumn(name = "species_id")
    private Species species;

    @ManyToOne
    @JoinColumn(name = "habitat_id")
    private Habitat habitat;

    private String age;

    @Column(name = "threat_level")
    private Integer threatLevel;

    @Column(columnDefinition = "TEXT")
    private String description;

    @Column(name = "last_seen_location")
    private String lastSeenLocation;

    private String wanted;  // Expected values: "Dead", "Alive", "Dead or Alive"

    @Column(name = "known_weaknesses")
    private String knownWeaknesses;

    @Column(name = "image_prompt", columnDefinition = "TEXT")
    private String imagePrompt;

    @Column(name = "bounty_drakes")
    private Integer bountyDrakes;

    @Column(name = "is_captured")
    public Boolean isCaptured;

    @Column(name = "termination_status")
    private String terminationStatus;

    public Boolean isCaptured() {
        return isCaptured;
    }
}
