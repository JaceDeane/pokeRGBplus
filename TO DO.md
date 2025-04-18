# TO DO:

- Update NPCs in Viridian Pokémon Center

- Add and connect Viridian Forest to Route 2

	- Update `gate` tileset & blockset with new design
	
	- Create a unique gate map just for Viridian Forest entrances, like in Gen I
	
	- Add tiles and blocks for the gate buildings to the FOREST tileset

- Update Diglett's Cave

- All of Pewter City onwards

- Update Route 4 to RB equivalent*

- (!) Set proper wild encounter data (!)

- Make all the Rival trainer classes use the same .pal for the battle sprite instead of loading it 3x for 'separate' classes

- Simplify the sleeping Old Man event to just use one event_flag instead of two

- Add the Link Receptionist into `jumpstd` events section

- Remove the now-redundant non-walking sprite versions (https://github.com/pret/pokecrystal/wiki/Improve-the-outdoor-sprite-system#4-remove-the-now-redundant-non-walking-sprite-versions)

- Remove the now-redundant variable sprites (https://github.com/pret/pokecrystal/wiki/Improve-the-outdoor-sprite-system#5-remove-the-now-redundant-variable-sprites)

- Create unique Gen II-styled arrangements of the original Gen I music tracks

- Implement a unique animation for the Ghost upon battle start, like other Pokémon

## ! Bugs: !

- (!) Force the Pokedex to load in Area data for Kanto only

- (!) Edit the item desc. for `OAK'S_PARCEL` (The parcel should *not* make a gentle ringing)

- Make the ABC Mode in the Pokedex draw from only the Current Mode, instead of being its own table (Stops Gen II Pokemon from showing up in the Dex, even when caught; Until NewDex is unlocked)

- Unveiling a Ghost does not animate the revealed Pokémon, nor play their cry

## Tutorials:

- Add more music that changes at night (https://github.com/pret/pokecrystal/wiki/Add-more-music-that-changes-at-night)

- (Fix Gen I Music) Fix ReadNoiseSample 'inc a' distorting channel 4 percussion (https://github.com/pret/pokecrystal/wiki/Fix-ReadNoiseSample-'inc-a'-distorting-channel-4-percussion)

- Reviving Pokémon from Fossils (Gen I) (https://github.com/pret/pokecrystal/wiki/Reviving-Pokémon-from-Fossils-(Gen-I))

- Splash a Pokédex Entry from an Overworld Event (Generation I) (https://github.com/pret/pokecrystal/wiki/Splash-a-Pokédex-Entry-from-an-Overworld-Event-(Generation-I))

- Trashcan puzzle in Vermilion Gym (https://github.com/pret/pokecrystal/wiki/Trashcan-puzzle-in-Vermilion-Gym)

- Add spinner tiles from Generation I Rocket Hideout (https://github.com/pret/pokecrystal/wiki/Add-spinner-tiles-from-Generation-I-Rocket-Hideout)

- Make new battle text to distinguish status move misses and fails (https://github.com/pret/pokecrystal/wiki/Make-new-battle-text-to-distinguish-status-move-misses-and-fails)

- Make wild Pokémon encounter levels vary (https://github.com/pret/pokecrystal/wiki/Make-wild-Pokémon-encounter-levels-vary)


## Tutorials (Temporary):

- Remove Pokémon sprite animations (https://github.com/pret/pokecrystal/wiki/Remove-Pokémon-sprite-animations)

## Commits:

- Scroll the SS.Anne when Departing (https://github.com/mauvesea/pokegold-sw97/commit/a62c7e142677764b3027649a91fdc2b284c457cb) & (https://github.com/mauvesea/pokegold-sw97/commit/25f5339d8d784e2e0410b05280a70042e550c449)
