extends Resource
class_name R_Character

@export var c_name:String
@export var c_class:R_Classe
@export var c_race:R_Race

var stats:Dictionary = {
	"strenght" = 0,
	"dexterity" = 0,
	"constitution" = 0,
	"intelligence" = 0,
	"wisdom" = 0,
	"charisma" = 0,
}

func update():
	for key in stats.keys():
		stats[key] = 0
	
