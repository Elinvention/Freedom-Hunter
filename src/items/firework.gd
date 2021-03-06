extends "usable_item.gd"

var scene = preload("res://data/scenes/items/firework.tscn")


func _init(_name, _icon, _quantity, _player).(_name, _icon, _quantity, 10, 50, _player):
	pass

func effect():
	var player_t = player.get_global_transform()
	var firework = scene.instance()
	firework.set_global_transform(player_t)
	player.get_parent().add_child(firework)
	return true

func clone():
	return get_script().new(name, icon, quantity, player)
