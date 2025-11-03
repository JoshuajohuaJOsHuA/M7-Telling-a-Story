extends Control

@onready var rich_text_label: RichTextLabel = %RichTextLabel
@onready var next_button: Button = %NextButton

var dialogue_items: Array[String] = [
	"I'm learning about Arrays...",
	"and here's something I have for you",
	"Roses are Red",
	"Violets are Blue",
	"I am cute",
	"and so are you!",
	"Hehe! Bye bye~!",
]
var current_item_index := 0

func _ready() -> void:
	show_text()
	next_button.pressed.connect(advance)

func show_text() -> void:
	var current_item := dialogue_items[current_item_index]
	rich_text_label.text = current_item

func advance() -> void:
	current_item_index += 1

	if current_item_index == dialogue_items.size():
		get_tree().quit()
	else:
		show_text()
