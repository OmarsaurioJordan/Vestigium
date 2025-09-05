# Vestigium

this is a project of Javeriana University at Cali Colombia, about Ignacio of Loyola christian saint, this is mainly a platformer, divided in many levels with a cute art

## Technical Details

here some details of how to program the videogame in Godot 4.4

### About Collision Masks

1. (blue) **solids**, for all the walls, floor and static obstacles
2. (purple) **semi-solids**, for tiers and falling platforms, solids that player can pass
3. (green) **entities**, for the player and NPCs, they do not collide with each other
4. (red) **projectiles**, for cannon balls, bullets, etc
5. (red) **hitboxes**, for fight collision masks, usually minor than entities ones
6. (yellow) **triggers**, for areas of action, like vision areas, interactuables E, etc

### About Global Groups

- **tier_colliders**, for tiers that can be passed from bottom to top like stairs

### About 1st Level

the node tree is ordered to put things cleanly:

- first Background contains all the sprites of environment, houses, threes and back walls
- next BackObjects contains walls and floor (only visual), here is too much sprites, subdivided in categories
- Interactuables has checkpoints, and another control points
- Enemies its self explained
- Player has the main character and camera
- FrontObjects is like BackObjects but in front of player and other things
- SolidWalls contains the static and anoter areas to collide with the world

## Contact

this version 4 of the software was developed by **Omwekiatl**, mail: **ojorcio@gmail.com**
