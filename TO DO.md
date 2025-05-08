# TO DO:

- Add a debug menu of some sort
	- Add Pokémon, add item, warp to map, change badges, set event/flag, etc.

MAPS:

- Update Diglett's Cave

- Cerulean City onwards

EVENTS:

- Route 3 & Route 4 events/Trainers, etc.

- Mount Moon (entirety)

- Update Diglett's Cave

- Include and check all hidden items from R/B exist and are in the right place

- `get dirfacing_UP` in front of Viridian Gym's door, so that you can walk left to right without interruption

ENGINE / DATA:

- Confirm if the Route 3 PokeCenter uses a FlyData flag

- (!) Set proper wild encounter data (!)
	- Update the encounter table's percentages to be able to have encounter rates closer to Gen I's system (Not many slots at the moment)
	Viridian Forest:
	- Update the encounters*

- (!) Remove Swimmers from Pallet Group overworld sprites and include the PewterGroup as well...? (ADD an in-between SPRITEGROUP for routes)
	(CooltrainerM, etc. doesn't load in after exiting Viridian Forest)

- Update TM/HM list

- Remove old G/S trainer EVENT flags (as needed)
	
- Sort order of Mart items listed (Balls, Escape Rope, Potions, Status, Revive, Field, etc.)

- Simplify the sleeping Old Man event to just use one event_flag instead of two

- Add the Link Receptionist into `jumpstd` events section

- Update DVs, attributes, encounter music, etc. for Giovanni & other re-implemented R/B trainers

- Determine proper parties for Giovanni's (and the other important trainers') battles; Should Yellow version be prioritised?

- Hide Cerulean Cave from wild Area location showings in the Pokédex

GRAPHICS:

- Remove the now-redundant non-walking sprite versions (https://github.com/pret/pokecrystal/wiki/Improve-the-outdoor-sprite-system#4-remove-the-now-redundant-non-walking-sprite-versions)

- Remove the now-redundant variable sprites (https://github.com/pret/pokecrystal/wiki/Improve-the-outdoor-sprite-system#5-remove-the-now-redundant-variable-sprites)

- Implement a unique animation for the Ghost upon battle start, like other Pokémon

MUSIC: 

- Create unique Gen II-styled arrangements of the original Gen I music tracks

- Custom `Battle! Rival` track for Blue (?)

- Night version of Kanto Wild Battle theme (?)

TRADES:

- Update the DVs/IVs for the Trade Pokémon

- Have the traded Jynx, LOLA, hold a LOVELY_MAIL if possible

## ! Bugs: !

- Youngster doesn't disappear in Pewter City after beating BROCK

- (!) Building _DEBUG causes an overflow

- (!) Losing to your Rival on Route 22 causes a secondary 'ghost' NPC object to appear when returning and re-challenging the fight

- (!) Force the Pokedex to load in Area data for Kanto only

- Pewter PokeCenter's Jigglypuff doesn't go back to animating once the event is over

- Make the ABC Mode in the Pokedex draw from only the Current Mode, instead of being its own table (Stops Gen II Pokemon from showing up in the Dex, even when caught; Until NewDex is unlocked)

- Unveiling a Ghost does not animate the revealed Pokémon, nor play their cry

- Victory Road considered to be Johto
	`pokeRGBplus\engine\overworld\landmarks.asm`

## Tutorials:

- (!) Animate tiles even when textboxes are open (https://github.com/pret/pokecrystal/wiki/Tips-and-tricks#animate-tiles-even-when-textboxes-are-open)

- Picking up game corner coins ()

- Add more music that changes at night (https://github.com/pret/pokecrystal/wiki/Add-more-music-that-changes-at-night)

- (Fix Gen I Music) Fix ReadNoiseSample 'inc a' distorting channel 4 percussion (https://github.com/pret/pokecrystal/wiki/Fix-ReadNoiseSample-'inc-a'-distorting-channel-4-percussion)

> ~~Splash a Pokédex Entry from an Overworld Event~ (Generation I) (https://github.com/pret/pokecrystal/wiki/Splash-a-Pokédex-Entry-from-an-Overworld-Event-(Generation-I)) ~~
	- (!) Gen I has a function that temporarily sets the specified Pokémon as SEEN so that the Pokédex entry is displayed

- Trashcan puzzle in Vermilion Gym (https://github.com/pret/pokecrystal/wiki/Trashcan-puzzle-in-Vermilion-Gym)

- Add spinner tiles from Generation I Rocket Hideout (https://github.com/pret/pokecrystal/wiki/Add-spinner-tiles-from-Generation-I-Rocket-Hideout)

- Make new battle text to distinguish status move misses and fails (https://github.com/pret/pokecrystal/wiki/Make-new-battle-text-to-distinguish-status-move-misses-and-fails)

- Make wild Pokémon encounter levels vary (https://github.com/pret/pokecrystal/wiki/Make-wild-Pokémon-encounter-levels-vary)

- Look into a password system for switching versions internally (? - Could be unlocked for the main menu post-game) (https://github.com/pret/pokecrystal/wiki/Password-system)

## Tutorials (Temporary):

- Remove Pokémon sprite animations (https://github.com/pret/pokecrystal/wiki/Remove-Pokémon-sprite-animations)

## Commits:

- Scroll the SS.Anne when Departing (https://github.com/mauvesea/pokegold-sw97/commit/a62c7e142677764b3027649a91fdc2b284c457cb) & (https://github.com/mauvesea/pokegold-sw97/commit/25f5339d8d784e2e0410b05280a70042e550c449)
