package org.example.monsterbountyserver.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.example.monsterbountyserver.entity.Habitat;
import org.example.monsterbountyserver.entity.Race;
import org.example.monsterbountyserver.entity.Species;

@Data
@AllArgsConstructor
public class MonsterDTO {
    private Long id;
    private String name;
    private String gender;
    private String race;
    private String species;
    private String habitat;
    private String age;
    private int threatLevel;
    private String description;
    private String lastSeenLocation;
    private String wanted;
    private String knownWeaknesses;
    private String imagePrompt;
    private int bountyDrakes;
    private boolean isCaptured;
    private String terminationStatus;

    public MonsterDTO(Long id, String name, String gender, Race race, Species species, Habitat habitat, String age, Integer threatLevel, String description, String lastSeenLocation, String wanted, String knownWeaknesses, String imagePrompt, Integer bountyDrakes, Boolean captured, String terminationStatus) {
    }
}
