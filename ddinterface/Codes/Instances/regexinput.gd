extends LineEdit

signal validation_update(is_valid:bool)

@export var valid_min_chars:int = 0
var previous_text:String = ""
var regex_code:String = "[a-zA-Z]{1,"

var regex:RegEx = RegEx.new()

func check_validation():
	if valid_min_chars != 0:
		validation_update.emit(len(text)>=valid_min_chars)

func _ready() -> void:
	regex_code += str(max_length)+"}"
	text_changed.connect(character_input)
	regex.compile(regex_code)

func character_input(new_text:String):
	var correct:String = ""
	var pos:int = caret_column
	if new_text:
		correct = regex.search(new_text).get_string()
	text = correct
	if new_text == correct:
		set_caret_column(pos)
	else:
		set_caret_column(pos-1)
	
	check_validation()
