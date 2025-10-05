

-- Habitats
INSERT INTO habitats (id, name) VALUES (1, 'Ashen Wastes');
INSERT INTO habitats (id, name) VALUES (2, 'Barren Labs');
INSERT INTO habitats (id, name) VALUES (3, 'Echo Caverns');
INSERT INTO habitats (id, name) VALUES (4, 'Forsaken Cathedral');
INSERT INTO habitats (id, name) VALUES (5, 'Frozen Tundra');
INSERT INTO habitats (id, name) VALUES (6, 'Sea of Bones');
INSERT INTO habitats (id, name) VALUES (7, 'Sunken Temple');
INSERT INTO habitats (id, name) VALUES (8, 'Warped Jungle');

-- Species
INSERT INTO species (id, name) VALUES (1, 'Bio-Engineered');
INSERT INTO species (id, name) VALUES (2, 'Forgotten');
INSERT INTO species (id, name) VALUES (3, 'Hardlight Construct');
INSERT INTO species (id, name) VALUES (4, 'Human');
INSERT INTO species (id, name) VALUES (5, 'Vampire');
INSERT INTO species (id, name) VALUES (6, 'Voidspawn');
INSERT INTO species (id, name) VALUES (7, 'Werewolf');
INSERT INTO species (id, name) VALUES (8, 'Zenthari Broodmother');
INSERT INTO species (id, name) VALUES (9, 'Zombie');

-- Races
INSERT INTO races (id, name, alignment, lore) VALUES (1, 'Artificial Intelligence', 'Unknown', 'Forged in the digital void, these entities have evolved beyond human command. They calculate not just logic, but vengeance.');
INSERT INTO races (id, name, alignment, lore) VALUES (2, 'Demon', 'Chaotic', 'Demons hail from the scorched fractures of forgotten realms. They trade in torment and feed on fear.');
INSERT INTO races (id, name, alignment, lore) VALUES (3, 'Ghost', 'Chaotic', 'Ghosts are the restless echoes of souls denied peace. Bound to unfinished business, they drift between moments.');
INSERT INTO races (id, name, alignment, lore) VALUES (4, 'Insectoid', 'Unknown', 'Insectoids thrive in hive minds and subterranean chaos. Their biology is brutal, but their strategy is meticulous.');
INSERT INTO races (id, name, alignment, lore) VALUES (5, 'Phantom Entity', 'Unknown', 'Phantom Entities slip through the cracks of reality. Neither fully seen nor understood, they whisper across dimensions.');
INSERT INTO races (id, name, alignment, lore) VALUES (6, 'Revenant', 'Evil', 'Once dead, now fueled by vengeance, revenants claw back to balance their unfinished books. They never forget betrayal.');
INSERT INTO races (id, name, alignment, lore) VALUES (7, 'Undead', 'Neutral', 'The Undead are cadavers cursed to move. Their presence marks the decay of time and morality.');
INSERT INTO races (id, name, alignment, lore) VALUES (8, 'Witch', 'Neutral', 'Witches weave ancient magics passed through blood and bone. Feared for their hexes, revered for their cunning.');

-- Monsters
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Agatha Hexweaver', 'Unknown', 8, 4, 2,
             '729', 10, 'Shadow-witch said to stitch curses into the wind.', 'Delta Rift',
             'Alive', 'Holy fire', '',
             4400, FALSE, 'Expired'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Bartholomew the Clown', 'Unknown', 8, 4, 2,
             '212', 9, 'Banned from 27 kingdoms for weaponized juggling.', 'Moonlight Basin',
             'Dead', 'High-frequency pulse', '',
             2700, TRUE, 'Expired'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Bog King', 'Male', 5, 2, 3,
             'Ancient', 10, 'Monarch of muck, wields a crown of flies and rot.', 'Moonlight Basin',
             'Dead', 'Sound disruption', '',
             3900, TRUE, 'Dispatched'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Chimera 09', 'Unknown', 1, 2, 1,
             'Ancient', 7, 'Experimental creature gone rogue from Lab 9.', 'Delta Rift',
             'Alive', 'High-frequency pulse', '',
             5100, FALSE, 'Dispatched'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Dr. Thorne, Plague Doctor', 'Male', 6, 2, 6,
             'Unknown', 7, 'Wanted for unauthorized necrobiology experiments.', 'Sector 9 Outpost',
             'Alive', 'High-frequency pulse', '',
             6100, TRUE, 'Expired'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Echo Titan6', 'Female', 3, 6, 6,
             '568', 7, 'A forgotten war machine that mimics the last sound it hears.', 'Cryptfall Canyon',
             'Dead', 'Sound disruption', '',
             7200, TRUE, 'Neutralized'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Elizar Creadmaw, Pirate Ghost', 'Unknown', 3, 3, 3,
             '143', 6, 'Spectral scourge of the Sea of Bones.', 'Moonlight Basin',
             'Dead or Alive', 'High-frequency pulse', '',
             5800, TRUE, 'Terminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Fenric the Skinwalker', 'Unknown', 3, 8, 6,
             '237', 7, 'Shapeshifter who vanishes entire herds.', 'Cryptfall Canyon',
             'Dead or Alive', 'High-frequency pulse', '',
             5300, FALSE, 'Expired'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Gasping Wretch', 'Male', 3, 8, 2,
             'Ancient', 7, 'Cursed soul who exhales nightmares.', 'Moonlight Basin',
             'Dead', 'Psychic dampeners', '',
             4600, TRUE, 'Eliminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Gravemind', 'Male', 1, 8, 5,
             'Unknown', 10, 'Hive-intelligence residing beneath ancient crypts.', 'Cryptfall Canyon',
             'Dead', 'Sound disruption', '',
             6900, FALSE, 'Neutralized'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Kaelthor Harbinger', 'Male', 2, 2, 6,
             'Unknown', 7, 'Harbinger of cataclysmic omens, speaks in fire.', 'Moonlight Basin',
             'Alive', 'High-frequency pulse', '',
             7400, FALSE, 'Terminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Lillith', 'Unknown', 1, 2, 5,
             'Unknown', 6, 'Temptress of the Abyss, wanted for soul theft.', 'Moonlight Basin',
             'Dead', 'High-frequency pulse', '',
             6800, FALSE, 'Eliminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Morduun', 'Female', 7, 6, 2,
             'Unknown', 9, 'Giant entombed in salt, recently unearthed.', 'Sector 9 Outpost',
             'Dead or Alive', 'Holy fire', '',
             5400, TRUE, 'Expired'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Myxa, Hive Queen', 'Female', 5, 8, 2,
             'Ancient', 6, 'Matriarch of the Swarm Below.', 'Moonlight Basin',
             'Dead or Alive', 'Sound disruption', '',
             7200, TRUE, 'Neutralized'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Nebulith Dreameater', 'Female', 5, 4, 3,
             '607', 10, 'Feasts on hope and REM sleep.', 'Sector 9 Outpost',
             'Dead', 'Psychic dampeners', '',
             6200, TRUE, 'Neutralized'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Selene', 'Unknown', 1, 4, 1,
             'Ancient', 9, 'Moonlit assassin said to walk on glass.', 'Cryptfall Canyon',
             'Dead', 'Psychic dampeners', '',
             5700, FALSE, 'Eliminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Sirrith, Void Serpent', 'Male', 6, 2, 6,
             '149', 6, 'Slithers between realms, feeding on gravity.', 'Moonlight Basin',
             'Dead', 'Freezing agents', '',
             7900, TRUE, 'Expired'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Skarn, Terraformer', 'Female', 1, 8, 6,
             '405', 7, 'Colossal beetle reshaping the land with its breath.', 'Delta Rift',
             'Dead', 'Sound disruption', '',
             5000, TRUE, 'Eliminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Unit 77G', 'Female', 8, 2, 1,
             'Unknown', 10, 'Military bot decommissioned for independent thought.', 'Cryptfall Canyon',
             'Dead or Alive', 'Psychic dampeners', '',
             5500, FALSE, 'Terminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Zarvog Mind Reaper', 'Female', 7, 4, 1,
             '190', 9, 'Feeds on memory and secrets, leaves only confusion.', 'Cryptfall Canyon',
             'Alive', 'Freezing agents', '',
             8200, TRUE, 'Neutralized'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Korrin Stonewrath', 'Unknown', 4, 8, 3,
             '164', 8, 'A feared being known for its raw power.', 'Moonlight Basin',
             'Alive', 'High-frequency pulse', '',
             8180, TRUE, 'Eliminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Talia Starbane', 'Female', 7, 1, 1,
             'Unknown', 9, 'A feared entity known for its raw power.', 'Cryptfall Canyon',
             'Dead', 'Psychic dampeners', '',
             3211, TRUE, 'Expired'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Seren Gloomspire', 'Male', 6, 1, 4,
             'Unknown', 4, 'A feared entity known for its cruelty.', 'Delta Rift',
             'Dead or Alive', 'Freezing agents', '',
             6812, FALSE, 'Dispatched'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Calia Dreadshade', 'Male', 4, 3, 7,
             'Ancient', 4, 'A feared being known for its cruelty.', 'Delta Rift',
             'Dead or Alive', 'High-frequency pulse', '',
             7539, TRUE, 'Expired'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Eryx Gravesoul', 'Unknown', 3, 1, 4,
             'Unknown', 6, 'A feared being known for its unnatural silence.', 'Cryptfall Canyon',
             'Dead or Alive', 'Freezing agents', '',
             7694, FALSE, 'Dispatched'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Selis Silvertongue', 'Female', 4, 8, 1,
             '437', 6, 'A feared being known for its cruelty.', 'Moonlight Basin',
             'Dead', 'High-frequency pulse', '',
             3046, FALSE, 'Terminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Nira Cinderfell', 'Male', 1, 1, 4,
             '469', 10, 'A feared being known for its cruelty.', 'Sector 9 Outpost',
             'Alive', 'Holy fire', '',
             2432, FALSE, 'Terminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Marek Gravesoul', 'Female', 2, 2, 7,
             '767', 4, 'A feared creature known for its raw power.', 'Ghoulmoor Village',
             'Dead or Alive', 'Holy fire', '',
             2305, TRUE, 'Eliminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Sylas Duskthorn', 'Female', 2, 1, 1,
             'Unknown', 4, 'A feared being known for its ritual blood rites.', 'Delta Rift',
             'Dead', 'Freezing agents', '',
             9009, FALSE, 'Eliminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Eryx Hexcloak', 'Unknown', 4, 1, 7,
             'Unknown', 7, 'A feared being known for its ritual blood rites.', 'Delta Rift',
             'Alive', 'Freezing agents', '',
             4990, TRUE, 'Eliminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Velka Blightmoor', 'Male', 2, 2, 1,
             '205', 6, 'A feared being known for its cruelty.', 'Sector 9 Outpost',
             'Dead or Alive', 'Freezing agents', '',
             6250, TRUE, 'Terminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Torin Gravesoul', 'Male', 7, 8, 7,
             'Ancient', 9, 'A feared creature known for its raw power.', 'Cryptfall Canyon',
             'Dead or Alive', 'High-frequency pulse', '',
             2995, TRUE, 'Neutralized'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Kaelen Rotfang', 'Female', 2, 4, 8,
             'Ancient', 7, 'A feared entity known for its cunning.', 'Ghoulmoor Village',
             'Alive', 'High-frequency pulse', '',
             6942, TRUE, 'Expired'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Kaelen Soulshard', 'Female', 8, 1, 4,
             'Unknown', 6, 'A feared being known for its cruelty.', 'Moonlight Basin',
             'Dead or Alive', 'Holy fire', '',
             3333, FALSE, 'Eliminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Lira Starbane', 'Unknown', 3, 4, 4,
             'Unknown', 8, 'A feared terror known for its cunning.', 'Cryptfall Canyon',
             'Dead', 'Sound disruption', '',
             8319, TRUE, 'Expired'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Sylas Gloomspire', 'Unknown', 7, 2, 3,
             'Ancient', 5, 'A feared creature known for its raw power.', 'Cryptfall Canyon',
             'Dead', 'Psychic dampeners', '',
             7814, FALSE, 'Expired'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Orren Dreadshade', 'Female', 4, 4, 7,
             'Ancient', 6, 'A feared terror known for its ritual blood rites.', 'Delta Rift',
             'Dead or Alive', 'Psychic dampeners', '',
             6714, TRUE, 'Terminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Seren Venomreach', 'Female', 6, 8, 8,
             '929', 9, 'A feared entity known for its ritual blood rites.', 'Ghoulmoor Village',
             'Dead', 'Psychic dampeners', '',
             8227, FALSE, 'Terminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Selis Rotfang', 'Female', 3, 4, 7,
             '199', 5, 'A feared being known for its cruelty.', 'Sector 9 Outpost',
             'Dead', 'Psychic dampeners', '',
             6318, FALSE, 'Dispatched'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Varek Venomreach', 'Male', 1, 3, 5,
             'Ancient', 6, 'A feared creature known for its raw power.', 'Sector 9 Outpost',
             'Alive', 'Holy fire', '',
             4824, FALSE, 'Neutralized'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Nira Starbane', 'Female', 6, 6, 3,
             'Ancient', 5, 'A feared creature known for its ritual blood rites.', 'Sector 9 Outpost',
             'Dead', 'Holy fire', '',
             3606, TRUE, 'Dispatched'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Nira Stonewrath', 'Female', 8, 8, 1,
             '931', 4, 'A feared being known for its unnatural silence.', 'Sector 9 Outpost',
             'Alive', 'Freezing agents', '',
             6759, TRUE, 'Dispatched'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Nira Duskthorn', 'Female', 6, 3, 5,
             'Ancient', 10, 'A feared being known for its unnatural silence.', 'Cryptfall Canyon',
             'Dead or Alive', 'Sound disruption', '',
             4091, FALSE, 'Eliminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Thalia Ruinweaver', 'Female', 5, 4, 3,
             '402', 5, 'A feared entity known for its unnatural silence.', 'Ghoulmoor Village',
             'Alive', 'Sound disruption', '',
             3726, FALSE, 'Terminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Kaelen Starbane', 'Male', 3, 8, 3,
             'Ancient', 6, 'A feared being known for its ritual blood rites.', 'Moonlight Basin',
             'Dead or Alive', 'Holy fire', '',
             5897, TRUE, 'Dispatched'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Eryx Voidcaller', 'Female', 3, 8, 8,
             '759', 4, 'A feared creature known for its cruelty.', 'Sector 9 Outpost',
             'Dead or Alive', 'Sound disruption', '',
             7634, TRUE, 'Eliminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Draven Silvertongue', 'Male', 5, 6, 4,
             '610', 4, 'A feared entity known for its ritual blood rites.', 'Ghoulmoor Village',
             'Dead', 'Sound disruption', '',
             2828, FALSE, 'Expired'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Lira Blightmoor', 'Male', 2, 1, 3,
             '739', 6, 'A feared terror known for its ritual blood rites.', 'Sector 9 Outpost',
             'Dead or Alive', 'Holy fire', '',
             4888, FALSE, 'Neutralized'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Zara Moonveil', 'Unknown', 4, 1, 3,
             'Unknown', 9, 'A feared terror known for its unnatural silence.', 'Cryptfall Canyon',
             'Alive', 'Sound disruption', '',
             5276, TRUE, 'Terminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Orren Rotfang', 'Unknown', 3, 1, 4,
             'Unknown', 8, 'A feared creature known for its cunning.', 'Moonlight Basin',
             'Dead', 'Freezing agents', '',
             4346, TRUE, 'Dispatched'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Bram Gravesoul', 'Unknown', 7, 6, 4,
             'Ancient', 4, 'A feared being known for its unnatural silence.', 'Delta Rift',
             'Dead or Alive', 'Freezing agents', '',
             2968, TRUE, 'Eliminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Torin Embergrasp', 'Unknown', 3, 4, 7,
             'Unknown', 7, 'A feared being known for its ritual blood rites.', 'Moonlight Basin',
             'Alive', 'Freezing agents', '',
             2794, FALSE, 'Terminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Talia Hexcloak', 'Female', 1, 8, 7,
             'Ancient', 5, 'A feared entity known for its cruelty.', 'Moonlight Basin',
             'Dead', 'Holy fire', '',
             5125, FALSE, 'Expired'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Dorian Voidcaller', 'Female', 2, 1, 7,
             'Unknown', 10, 'A feared terror known for its raw power.', 'Cryptfall Canyon',
             'Dead', 'Freezing agents', '',
             3270, TRUE, 'Eliminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Marek Dreadshade', 'Male', 3, 2, 5,
             'Unknown', 9, 'A feared entity known for its raw power.', 'Cryptfall Canyon',
             'Alive', 'Psychic dampeners', '',
             5090, TRUE, 'Neutralized'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Mira Hexcloak', 'Female', 6, 3, 4,
             '813', 4, 'A feared being known for its raw power.', 'Delta Rift',
             'Alive', 'Sound disruption', '',
             8167, FALSE, 'Expired'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Seren Moonveil', 'Male', 8, 6, 4,
             'Ancient', 4, 'A feared terror known for its unnatural silence.', 'Ghoulmoor Village',
             'Alive', 'High-frequency pulse', '',
             5842, TRUE, 'Terminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Zara Frostmaw', 'Unknown', 7, 2, 4,
             '179', 4, 'A feared entity known for its ritual blood rites.', 'Cryptfall Canyon',
             'Alive', 'Sound disruption', '',
             1598, TRUE, 'Expired'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Draven Blackmoor', 'Unknown', 1, 1, 4,
             '637', 4, 'A feared being known for its cunning.', 'Cryptfall Canyon',
             'Dead or Alive', 'Psychic dampeners', '',
             6759, TRUE, 'Terminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Thalia Blackmoor', 'Unknown', 6, 6, 5,
             '688', 9, 'A feared creature known for its cunning.', 'Cryptfall Canyon',
             'Alive', 'High-frequency pulse', '',
             4011, FALSE, 'Eliminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Lyra Frostmaw', 'Male', 7, 4, 7,
             '66', 8, 'A feared being known for its cunning.', 'Delta Rift',
             'Alive', 'Sound disruption', '',
             3618, TRUE, 'Neutralized'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Eryx Gloomspire', 'Unknown', 5, 8, 7,
             'Ancient', 7, 'A feared being known for its ritual blood rites.', 'Sector 9 Outpost',
             'Alive', 'High-frequency pulse', '',
             6413, FALSE, 'Terminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Mira Embergrasp', 'Male', 2, 1, 1,
             'Ancient', 7, 'A feared terror known for its cunning.', 'Cryptfall Canyon',
             'Alive', 'Holy fire', '',
             7558, TRUE, 'Expired'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Lyra Dreadshade', 'Male', 2, 2, 1,
             'Ancient', 10, 'A feared entity known for its unnatural silence.', 'Moonlight Basin',
             'Dead or Alive', 'Psychic dampeners', '',
             3393, TRUE, 'Terminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Riven Cinderfell', 'Male', 2, 6, 7,
             '850', 8, 'A feared being known for its cruelty.', 'Delta Rift',
             'Dead or Alive', 'Psychic dampeners', '',
             3328, FALSE, 'Terminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Calia Duskthorn', 'Male', 6, 4, 4,
             'Ancient', 10, 'A feared creature known for its ritual blood rites.', 'Moonlight Basin',
             'Alive', 'High-frequency pulse', '',
             8609, FALSE, 'Eliminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Calia Venomreach', 'Unknown', 5, 2, 4,
             'Ancient', 6, 'A feared terror known for its ritual blood rites.', 'Cryptfall Canyon',
             'Dead', 'Psychic dampeners', '',
             5496, TRUE, 'Expired'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Zara Venomreach', 'Unknown', 1, 2, 3,
             'Ancient', 7, 'A feared entity known for its ritual blood rites.', 'Moonlight Basin',
             'Alive', 'Psychic dampeners', '',
             5477, FALSE, 'Expired'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Lyra Soulshard', 'Male', 3, 4, 8,
             '726', 4, 'A feared terror known for its unnatural silence.', 'Delta Rift',
             'Dead', 'High-frequency pulse', '',
             9018, FALSE, 'Terminated'
         );
INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Zara Darkmere', 'Female', 6, 1, 5,
             'Ancient', 10, 'A feared terror known for its cunning.', 'Moonlight Basin',
             'Dead', 'Sound disruption', '',
             3106, FALSE, 'Eliminated'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Matthew Bell', 'Female', 3, 7, 4,
             '500+', 9, 'Brother finally century figure street camera soon within edge nothing.', 'Robinsontown',
             'Dead or Alive', 'Radiation', '',
             7677, FALSE, 'Eliminated'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Megan Ingram', 'Male', 1, 3, 2,
             'Youngling', 10, 'City well lead out policy soldier child civil.', 'Lake Ebonyshire',
             'Alive', 'UV light', '',
             5604, TRUE, 'At Large'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Madeline Warren', 'Unknown', 6, 3, 3,
             '500+', 9, 'Exist activity tend job middle blood politics staff trial me senior.', 'East Stephanieburgh',
             'Alive', 'UV light', '',
             4698, FALSE, 'At Large'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Mary Mejia', 'Unknown', 6, 4, 7,
             '500+', 10, 'Type century former call tax tax success.', 'New Gregoryview',
             'Dead or Alive', 'Sound disruption', '',
             5334, FALSE, 'Imprisoned'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Drew Thomas', 'Female', 6, 2, 3,
             'Ancient', 9, 'Exactly rich set bit TV response world.', 'North Charleshaven',
             'Dead', 'Salt', '',
             5319, TRUE, 'Eliminated'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Bryan Cunningham', 'Male', 1, 1, 4,
             '120', 5, 'Out keep product finally goal process writer.', 'Carlosfort',
             'Dead or Alive', 'Silver', '',
             6460, TRUE, 'At Large'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Lori Spencer', 'Female', 3, 2, 6,
             '500+', 10, 'Imagine economy hit material set bag window television south huge away.', 'Stephaniefurt',
             'Dead or Alive', 'Silver', '',
             5981, TRUE, 'At Large'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Keith Nguyen', 'Unknown', 2, 4, 3,
             '500+', 5, 'So both energy institution ability hand red.', 'Tiffanyton',
             'Dead', 'Fire', '',
             9877, FALSE, 'At Large'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Stephen Preston', 'Male', 1, 1, 3,
             'Unknown', 8, 'Term fire instead town executive serve can contain those daughter girl page.', 'East Thomas',
             'Alive', 'Salt', '',
             6767, TRUE, 'At Large'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Jeremiah Wright', 'Male', 1, 5, 6,
             'Ancient', 8, 'Animal movement charge scientist knowledge system personal despite in first me local technology like example civil.', 'East Sheryl',
             'Alive', 'Salt', '',
             4628, TRUE, 'Eliminated'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Kenneth Barrera', 'Male', 4, 8, 5,
             '500+', 9, 'Change administration arrive land mind skin plan prevent audience thousand white require source course.', 'Andrewsmouth',
             'Dead', 'Electromagnetic pulse', '',
             4194, TRUE, 'Eliminated'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Sarah Collins', 'Female', 8, 1, 7,
             '120', 6, 'Huge leg item pull season including federal let second foot rest manager perhaps response.', 'East Sarahville',
             'Dead or Alive', 'Radiation', '',
             6883, FALSE, 'At Large'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Grant Patton', 'Female', 2, 9, 3,
             '500+', 6, 'Daughter level physical local cause those party close federal.', 'Port Matthewland',
             'Dead', 'UV light', '',
             9219, FALSE, 'Eliminated'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Brianna Cook', 'Unknown', 2, 5, 4,
             '500+', 5, 'Affect deep with state city artist much.', 'Simmonston',
             'Alive', 'Salt', '',
             5045, FALSE, 'Imprisoned'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Kathleen Brown', 'Male', 4, 6, 4,
             'Unknown', 5, 'Style somebody national partner learn manager success choose in easy.', 'New Michael',
             'Dead or Alive', 'Salt', '',
             6197, TRUE, 'Eliminated'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Brian Freeman', 'Female', 3, 7, 1,
             'Ancient', 5, 'Technology father program appear star identify morning evidence trip.', 'Ryanton',
             'Alive', 'Salt', '',
             5521, FALSE, 'At Large'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Seth Wallace', 'Male', 1, 6, 8,
             '500+', 10, 'Identify return development opportunity call enjoy according class special what do sound foot.', 'Crystalfort',
             'Dead or Alive', 'Fire', '',
             3046, FALSE, 'At Large'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Alexander Morris', 'Unknown', 2, 9, 1,
             '500+', 9, 'Vote world organization onto kitchen security none eat address machine.', 'Hallstad',
             'Dead', 'Radiation', '',
             9385, TRUE, 'At Large'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Shannon Kaufman', 'Male', 8, 8, 3,
             'Youngling', 8, 'I wife note buy case lose election who.', 'Amyfort',
             'Dead', 'Silver', '',
             7386, FALSE, 'Imprisoned'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Austin Walker', 'Male', 8, 5, 8,
             'Unknown', 9, 'Story computer material far anyone cut sell more voice pay fly believe here after pull whatever.', 'Johnsonland',
             'Alive', 'Radiation', '',
             4575, FALSE, 'Imprisoned'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Rodney Arellano', 'Unknown', 1, 1, 2,
             '120', 9, 'National they light ok measure police owner practice or group another environment after need.', 'Davishaven',
             'Dead', 'UV light', '',
             6553, FALSE, 'Eliminated'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Marilyn Castillo', 'Unknown', 3, 8, 5,
             '500+', 10, 'See begin meet teacher many total yeah professional approach lead begin realize.', 'Leeton',
             'Alive', 'Silver', '',
             8999, FALSE, 'Imprisoned'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Alison Clark', 'Female', 7, 2, 1,
             '500+', 9, 'Character within movement green future mind notice capital true perform consumer ahead per move produce.', 'North Julian',
             'Alive', 'Radiation', '',
             5927, TRUE, 'At Large'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Chad Harrison', 'Female', 3, 6, 5,
             '500+', 8, 'Customer idea record enough staff through fly effect cultural.', 'Andrewhaven',
             'Dead or Alive', 'Silver', '',
             6965, TRUE, 'Imprisoned'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Karen Rogers', 'Unknown', 1, 1, 7,
             'Youngling', 8, 'Deal east star make food real suggest someone like.', 'Melaniemouth',
             'Dead', 'UV light', '',
             8097, TRUE, 'At Large'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Michael Mora', 'Unknown', 2, 4, 7,
             '120', 10, 'View spend term action they for attack the election day recognize fly effort hair.', 'Port Frederick',
             'Dead or Alive', 'Sound disruption', '',
             5755, TRUE, 'Imprisoned'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Joanna Green', 'Unknown', 7, 4, 4,
             'Ancient', 10, 'Box participant traditional almost house skin sell by resource without customer standard ready help task agree.', 'East Johnnyhaven',
             'Dead or Alive', 'Electromagnetic pulse', '',
             5371, FALSE, 'Eliminated'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'John Gilbert', 'Male', 3, 1, 7,
             '500+', 6, 'Hit onto amount support effect media several north thing answer place list possible hand respond second.', 'Johnhaven',
             'Dead', 'Fire', '',
             6301, FALSE, 'At Large'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'David White', 'Female', 6, 4, 6,
             'Ancient', 7, 'Growth stop property manage direction after fish yourself medical its professor benefit group teacher subject.', 'Staceyshire',
             'Dead or Alive', 'Electromagnetic pulse', '',
             5598, FALSE, 'Eliminated'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Jessica Walker', 'Unknown', 5, 7, 5,
             'Youngling', 10, 'Mean church sound citizen issue become rest what eat.', 'Walterborough',
             'Dead or Alive', 'Sound disruption', '',
             8813, TRUE, 'Imprisoned'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Nicole Hoffman', 'Male', 5, 8, 7,
             '500+', 5, 'Business country form recently serve yourself gun region news understand.', 'Lake Holly',
             'Alive', 'Radiation', '',
             6285, FALSE, 'Imprisoned'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Michelle Richard', 'Female', 1, 5, 2,
             '120', 6, 'Push site boy model for quality will woman for return authority simple food plan.', 'Reynoldsport',
             'Dead or Alive', 'UV light', '',
             6028, FALSE, 'Imprisoned'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Julia Douglas', 'Female', 2, 7, 4,
             '120', 10, 'Station reach actually guess argue attention thing specific within different beat.', 'Port Annaview',
             'Dead', 'Fire', '',
             9153, FALSE, 'Imprisoned'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Mark Simpson', 'Unknown', 2, 5, 8,
             'Unknown', 8, 'Might open choice generation interesting appear perhaps do soon candidate be history.', 'Macdonaldchester',
             'Dead', 'Electromagnetic pulse', '',
             7952, TRUE, 'Imprisoned'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Andrea Mckee', 'Male', 3, 9, 3,
             'Ancient', 7, 'Maybe himself nature six maintain two full into.', 'Port Thomas',
             'Dead or Alive', 'Electromagnetic pulse', '',
             9481, FALSE, 'Imprisoned'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Darlene Saunders', 'Female', 7, 5, 1,
             'Youngling', 8, 'Beat customer goal property already son game front try will upon reduce hospital family range.', 'Mariatown',
             'Alive', 'Electromagnetic pulse', '',
             4665, TRUE, 'Imprisoned'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Jeffrey Jones', 'Female', 2, 7, 3,
             'Unknown', 8, 'Contain letter beautiful money front big article economic could.', 'East Yolanda',
             'Dead or Alive', 'Radiation', '',
             3589, FALSE, 'At Large'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Edward Perez', 'Male', 2, 6, 4,
             '500+', 8, 'Friend realize foreign show charge four also fire such trouble mother argue.', 'Bakermouth',
             'Alive', 'Sound disruption', '',
             4844, TRUE, 'At Large'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Robin Walton', 'Unknown', 5, 2, 4,
             '120', 7, 'Entire agency customer general protect scientist quickly this run.', 'Jacobville',
             'Alive', 'Salt', '',
             9426, TRUE, 'At Large'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Ryan Roberson', 'Female', 8, 6, 5,
             '120', 8, 'Wrong laugh consider style north visit doctor their suddenly respond education.', 'South Brandonberg',
             'Dead or Alive', 'Fire', '',
             4625, TRUE, 'At Large'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Lisa Pollard', 'Female', 7, 9, 5,
             'Youngling', 8, 'Fine detail worry every develop process high finish defense avoid spring rich.', 'North Gabrielfort',
             'Dead', 'Electromagnetic pulse', '',
             9333, TRUE, 'At Large'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Kevin Jensen', 'Male', 5, 4, 6,
             '120', 8, 'Authority address alone run source leg amount difference window professor full consider.', 'North Brittneymouth',
             'Alive', 'Radiation', '',
             7081, TRUE, 'At Large'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Andrew Edwards', 'Unknown', 3, 6, 4,
             'Ancient', 8, 'Herself network wife here more close letter factor crime all attention account agree wrong become.', 'Port Robinville',
             'Alive', 'UV light', '',
             8608, FALSE, 'Imprisoned'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Stephanie Lee', 'Male', 1, 7, 1,
             'Unknown', 5, 'Hard in media they scene recently begin future only human something number put woman.', 'East Kristenside',
             'Dead or Alive', 'Salt', '',
             3005, TRUE, 'Imprisoned'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Paul Bridges', 'Unknown', 5, 4, 5,
             'Youngling', 7, 'Important recognize forget seek less thus provide consumer first art.', 'North Jennifer',
             'Dead', 'Sound disruption', '',
             4314, FALSE, 'Imprisoned'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Richard Kramer', 'Male', 3, 7, 3,
             '120', 8, 'Action investment decision both rich if center.', 'South Steven',
             'Dead', 'Sound disruption', '',
             7335, TRUE, 'Imprisoned'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Samantha Williams', 'Female', 1, 7, 5,
             'Ancient', 8, 'Discuss act somebody interview he out on onto boy kid education do.', 'North Terrenceton',
             'Dead or Alive', 'Sound disruption', '',
             6611, FALSE, 'Eliminated'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'William Morris', 'Unknown', 2, 8, 7,
             '120', 9, 'Success ever drug her example that can indicate most amount with.', 'Port Anneside',
             'Alive', 'UV light', '',
             9894, TRUE, 'Eliminated'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Robert Myers', 'Unknown', 8, 5, 3,
             'Unknown', 5, 'Student eat hand program three her those.', 'Terrimouth',
             'Dead or Alive', 'Sound disruption', '',
             4363, TRUE, 'Imprisoned'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Ethan Hayes', 'Unknown', 6, 2, 7,
             'Ancient', 5, 'Piece not whom occur program start soon anyone.', 'Judyside',
             'Dead', 'Silver', '',
             7694, FALSE, 'Eliminated'
         );

INSERT INTO monsters (
    name, gender, race_id, species_id, habitat_id, age, threat_level,
    description, last_seen_location, wanted, known_weaknesses, image_prompt,
    bounty_drakes, is_captured, termination_status
) VALUES (
             'Flagbane the Devourer', 'Female', 6, 2, 6,
             'Ancient', 9, 'Experience country throughout standard home most paper.', 'New Jamesfurt',
             'Alive', 'UV light', '',
             100000, FALSE, 'At Large'
         );