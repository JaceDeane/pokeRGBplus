# TO DO:
```
- Add a debug menu of some sort
	- Add Pokémon, add item, warp to map, change badges, set event/flag, etc.
```
### MAPS:
(Only interiors and dungeons left to do)
- Rock Tunnel

- Pokémon Tower

(Later)
- Cerulean Cave (1F, B1F, B2F)

- Power Plant

### EVENTS:

MAIN:
- Route 9

- Route 10 (Rock Tunnel PokeCenter)

- Rock Tunnel

- Vermilion Dock (finish scene event - OBJ)

OTHER:
- Include and check all hidden items from R/B exist and are in the right place

- Add the Trainer Seen BGM before fighting Gym Leaders

- Do a "`get dirfacing_UP`" check in front of Viridian Gym's door, so that you can walk left to right without interruption

### ENGINE / DATA:

- Allow time to be set on main menu, once a save has ben created (same appear conditions as `CONTINUE`)
	- perhaps have a 24hr cooldown? (also allow for DST to be set in the same way)

- DayCareGentleman special needs to be updated and refined

- Should there be a seperate Gate_Kanto tileset so that pot plants can use a gray/brown palette?

- Standardise all text referecing Gym Badges. Currently flitters between using 'the' before the BADGE, and just referring to it as a proper noun

- `farcall PlaceMoneyTopRight` should display MONEY on the top border like in R/B (unsure if `special PlaceMoneyTopRight` does this too)

- (!) Vermilion Dock (And S.S. Anne Bow) should load default map palette, then just overwrites the new ones as needed, rather than 3 seperate full palettes for MORN, DAY and NITE

	- TILESET_SHIP_DECK should force-overwrite PAL_ROOF

- Adjust Indigo Plateau's roof palette for nighttime

- (!) Finish the title screen so that Red's sprite displays, and the Pokémon slide in and out of frame

- Title screen should loop indefinitely

- (?) Remove Swimmers from Pallet Group overworld sprites and include the PewterGroup as well...? (ADD an in-between SPRITEGROUP for routes)\
	(CooltrainerM, etc. doesn't load in after exiting Viridian Forest)
	- *Look into a dynamic sprite system...

- Update TM/HM list* (G/S Pokémon need 'custom' TM/HM learnsets now)

- Remove old G/S trainer EVENT flags (as needed)
	
- Sort order of Mart items listed (Balls, Escape Rope, Potions, Status, Revive, Field, etc.)

- Simplify the sleeping Old Man event to just use one event_flag instead of two

- Add the Link Receptionist into `jumpstd` events section

- Update attributes, encounter music, etc. for re-implemented R/B trainers

- Hide Cerulean Cave from wild Area location showings in the Pokédex

- Determine proper party lineups for Giovanni's (and the other important trainers') battles; Should Yellow version be prioritised?

- The Route 4 and Route 10 PokéCenters do NOT use a FlyData flag -- Confirmed

- Finish SOMEONE's PC to BILL's PC hardcoded text/calls (instead of using a variable for the name)

### GRAPHICS:

- Finish updating the Summary screen*

- Finish updating the Pokédex UI

- Add the mask to the player's title sprite (will need to condense OAM by 8x16 sprites)

- Remove the now-redundant non-walking sprite versions (https://github.com/pret/pokecrystal/wiki/Improve-the-outdoor-sprite-system#4-remove-the-now-redundant-non-walking-sprite-versions)

- Remove the now-redundant variable sprites (https://github.com/pret/pokecrystal/wiki/Improve-the-outdoor-sprite-system#5-remove-the-now-redundant-variable-sprites)

- Implement a unique animation for the Ghost upon battle start, like other Pokémon

### MUSIC: 

- Add RBY music for Pokémon Center, etc.

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

- (!) Water PAL in the Underground Path(s) seem to be different to the defined water palette?

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

- Add spinner tiles from Generation I Rocket Hideout (https://github.com/pret/pokecrystal/wiki/Add-spinner-tiles-from-Generation-I-Rocket-Hideout)

- Make new battle text to distinguish status move misses and fails (https://github.com/pret/pokecrystal/wiki/Make-new-battle-text-to-distinguish-status-move-misses-and-fails)

- Look into a password system for switching versions internally (? - Could be unlocked for the main menu post-game) (https://github.com/pret/pokecrystal/wiki/Password-system)

## Tutorials (Temporary):

- Remove Pokémon sprite animations (https://github.com/pret/pokecrystal/wiki/Remove-Pokémon-sprite-animations)

## Commits:

- ~~Scroll the SS.Anne when Departing~~ (https://github.com/mauvesea/pokegold-sw97/commit/a62c7e142677764b3027649a91fdc2b284c457cb) & (https://github.com/mauvesea/pokegold-sw97/commit/25f5339d8d784e2e0410b05280a70042e550c449)
