extends CanvasLayer


@onready var main_screen = $MainScreen
@onready var game_screen = $GameScreen
@onready var sound = $Sound



func _ready():
	on_game_exit_pressed()
	SignalManager.on_game_exit_pressed.connect(on_game_exit_pressed)
	SignalManager.on_level_selected.connect(on_level_selected)


func show_game(s: bool) -> void:
	game_screen.visible = s
	main_screen.visible = !s


func on_game_exit_pressed() -> void:
	show_game(false)
	SoundManager.play_sound(sound, SoundManager.SOUND_MAIN_MENU)

func on_level_selected(level_num: int) -> void:
	show_game(true)
	SoundManager.play_sound(sound, SoundManager.SOUND_IN_GAME)
