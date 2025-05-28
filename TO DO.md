# TO DO:
```
- Add a debug menu of some sort
	- Add Pokémon, add item, warp to map, change badges, set event/flag, etc.
```
### MAPS:

- Bill's House

- Route 5 -> (Day-care & Saffron north entrance gate)

- Cerulean Cave (1F, B1F, B2F)

### EVENTS:

- Cerulean City: Rocket event & coord event trigger
	- NPC homes: burgled house, Gym

- Route 25 & Bill's House

- Route 5 (Day-care, Underground Path entrance & Saffron north entrance gate)

- Include and check all hidden items from R/B exist and are in the right place

- Do a "`get dirfacing_UP`" check in front of Viridian Gym's door, so that you can walk left to right without interruption


### ENGINE / DATA:

- Make ``SPRITE_GAMBLER EQU/ALIAS SPRITE_SAGE``

- Adjust Indigo Plateau's roof palette for nighttime

- (!) Finish the title screen so that Red's sprite displays, and the Pokémon slide in and out of frame

- Title screen should loop indefinitely

- (?) Remove Swimmers from Pallet Group overworld sprites and include the PewterGroup as well...? (ADD an in-between SPRITEGROUP for routes)\
	(CooltrainerM, etc. doesn't load in after exiting Viridian Forest)
	- *Look into a dynamic sprite system...

- Update TM/HM list* (This is an EXTENSIVE job. Pokémon learnsets will have to be updated. Will leave until towards the end -- G/S Pokémon will need to have custom TM/HM learnsets now)

- Remove old G/S trainer EVENT flags (as needed)
	
- Sort order of Mart items listed (Balls, Escape Rope, Potions, Status, Revive, Field, etc.)

- Simplify the sleeping Old Man event to just use one event_flag instead of two

- Add the Link Receptionist into `jumpstd` events section

- Update DVs, attributes, encounter music, etc. for Giovanni & other re-implemented R/B trainers

- Determine proper party lineups for Giovanni's (and the other important trainers') battles; Should Yellow version be prioritised?

- Hide Cerulean Cave from wild Area location showings in the Pokédex

- The Route 4 and Route 10 PokéCenters do NOT use a FlyData flag -- Confirmed

### GRAPHICS:

- Remove the now-redundant non-walking sprite versions (https://github.com/pret/pokecrystal/wiki/Improve-the-outdoor-sprite-system#4-remove-the-now-redundant-non-walking-sprite-versions)

- Remove the now-redundant variable sprites (https://github.com/pret/pokecrystal/wiki/Improve-the-outdoor-sprite-system#5-remove-the-now-redundant-variable-sprites)

- Implement a unique animation for the Ghost upon battle start, like other Pokémon

### MUSIC: 

- Add RBY music for Pokémon Center, Bicycle Music, etc.

- Add a "no intro" version of the Rival encounter theme for post-battle

- (!) Playback sound of the R/B `Title Screen` track is bugged

- Create unique Gen II-styled arrangements of the original Gen I music tracks

- Custom `Battle! Rival` track for Blue (?)

- Night version of Kanto Wild Battle theme (?)

### TRADES:

- Update the DVs/IVs for the Trade Pokémon

- Have the traded Jynx, LOLA, hold a LOVELY_MAIL if possible

## ! Bugs: !

- (!) Building _DEBUG causes an overflow

- Lass Ali on Route 24 acts as if already beaten when taking PSN damage right in front of her
	- May be an engine bug for *any* trainer (?)

- (!) Water palette in the Underground Path(s) seem to be different to the defined water palette?

- (!) Border tiles when returning to Cerulean after using the Route 24 shortcut are seen (Need to find a way to manually load water blocks instead of the default defined one)

- (!) Border tiles from Route 16 to Route 17 (Western side)

- (!) Cycling Road should force-play the bike music when cycling -- is this behaviour exclusive to Gen I? (Gen II reloads map music between connections)

- Rockets don't disappear after beating the Super Nerd (? or the head Grunt) in Mount Moon B2F [However, this is how it behaves in Gen I]

- Events that should change movedata but don't:
	-Rival in Oak's Lab > `STANDING_UP`
	-Super Nerd in Mount Moon B2F > `SPINRANDOM_SLOW`

- Pewter PokeCenter's Jigglypuff doesn't go back to animating once the event is over

- Make the ABC Mode in the Pokedex draw from only the Current Mode, instead of being its own table (Stops Gen II Pokemon from showing up in the Dex, even when caught; Until NewDex is unlocked)

- Unveiling a Ghost does not animate the revealed Pokémon, nor play their cry
	
- Gen I has a function that temporarily sets the specified Pokémon as SEEN so that the Pokédex entry is displayed (Something to note, may not bother with)

## Tutorials:

- Picking up game corner coins ()

- Add more music that changes at night (https://github.com/pret/pokecrystal/wiki/Add-more-music-that-changes-at-night)

- Trashcan puzzle in Vermilion Gym (https://github.com/pret/pokecrystal/wiki/Trashcan-puzzle-in-Vermilion-Gym)

- Add spinner tiles from Generation I Rocket Hideout (https://github.com/pret/pokecrystal/wiki/Add-spinner-tiles-from-Generation-I-Rocket-Hideout)

- Make new battle text to distinguish status move misses and fails (https://github.com/pret/pokecrystal/wiki/Make-new-battle-text-to-distinguish-status-move-misses-and-fails)

- Look into a password system for switching versions internally (? - Could be unlocked for the main menu post-game) (https://github.com/pret/pokecrystal/wiki/Password-system)

## Tutorials (Temporary):

- Remove Pokémon sprite animations (https://github.com/pret/pokecrystal/wiki/Remove-Pokémon-sprite-animations)

## Commits:

- Scroll the SS.Anne when Departing (https://github.com/mauvesea/pokegold-sw97/commit/a62c7e142677764b3027649a91fdc2b284c457cb) & (https://github.com/mauvesea/pokegold-sw97/commit/25f5339d8d784e2e0410b05280a70042e550c449)
