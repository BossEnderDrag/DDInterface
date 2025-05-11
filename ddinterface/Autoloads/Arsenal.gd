extends Node

enum save_throws {STRENGHT, DEXTERITY, CONSTITUTION, INTELLIGENCE, WISDOM, CHARISMA}
enum races {DRAGONBORN,DWARF,ELF,GNOME,HALFELF,HALFLING,HALFORC,HUMAN,TIEFLING}
enum classes {BARBARIAN, BARD, CLERIC, DRUID, FIGHTER, MONK, PALADIN, RANGER, ROGUE, SORCERER, WARLOCK, WIZARD, ARTIFICER}

func get_theme_color(color_name:String) -> Color:
	if color_name == "Background":
		return Color("22223b")
	if color_name == "Panel":
		return Color("9a8c98")
	return Color("f2e9e4")


var presets_characters:Array[R_Character]
