extends Node

@onready var sound = $Sound
@onready var reveal_timer = $RevealTimer



var _tiles: Array = []
var _selections: Array = []
var _target_pairs: int = 0
var _moves_made: int = 0
var _pairs_made: int = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	SignalManager.on_tile_selected.connect(on_tile_selected)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func on_tile_selected(tile: MemoryTile) -> void:
	tile.reveal(true)
	_selections.append(tile)
	pass
