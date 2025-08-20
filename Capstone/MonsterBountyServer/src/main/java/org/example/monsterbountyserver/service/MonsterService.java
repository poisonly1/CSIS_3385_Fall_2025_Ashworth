// package org.example.monsterbountyserver.service;
//
// import lombok.RequiredArgsConstructor;
// import org.example.monsterbountyserver.dto.MonsterDTO;
// import org.example.monsterbountyserver.entity.Monster;
// import org.example.monsterbountyserver.repository.MonsterRepository;
// import org.springframework.stereotype.Service;
//
// import java.util.List;
// import java.util.stream.Collectors;
//
// @Service
// @RequiredArgsConstructor
// public class MonsterService {
//
//     private final MonsterRepository monsterRepository;
//
//     public List<MonsterDTO> returnAllMonsters() {
//         return monsterRepository.findAll().stream()
//                 .map(this::convertToDTO)
//                 .collect(Collectors.toList());
//     }
//
//     private MonsterDTO convertToDTO(Monster monster) {
//         return new MonsterDTO(
//                 monster.getId(),
//                 monster.getName(),
//                 monster.getGender(),
//                 monster.getRace(),
//                 monster.getSpecies(),
//                 monster.getHabitat(),
//                 monster.getAge(),
//                 monster.getThreatLevel(),
//                 monster.getDescription(),
//                 monster.getLastSeenLocation(),
//                 monster.getWanted(),
//                 monster.getKnownWeaknesses(),
//                 monster.getImagePrompt(),
//                 monster.getBountyDrakes(),
//                 monster.isCaptured(),
//                 monster.getTerminationStatus()
//         );
//     }
// }


package org.example.monsterbountyserver.service;

import lombok.AllArgsConstructor;
import org.example.monsterbountyserver.entity.Monster;
import org.example.monsterbountyserver.repository.MonsterRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@AllArgsConstructor
@Service
public class MonsterService {


    private final MonsterRepository monsterRepository;

    public List<Monster> returnAllMonsters() {
        return monsterRepository.findAll();
    }

    public List<Monster> returnAllMonstersOrderedByDrakesFirst() {
        return monsterRepository.findAllOrderedByBountyDrakesFirst();
    }


}
