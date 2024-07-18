extends TextureButton


@onready var label = $Label
@onready var audio_stream_player_2d = $AudioStreamPlayer2D


var _level_number: int = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	label.text = "3x4"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
