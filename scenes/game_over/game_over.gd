extends Control


@onready var moves_label = $NinePatchRect/MC/VB/HB/MovesLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_exit_button_pressed():
	hide()
	SignalManager.on_game_exit_pressed.emit()
