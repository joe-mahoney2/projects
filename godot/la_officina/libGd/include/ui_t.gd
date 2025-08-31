class_name ui_t

var cmd = enum_t.new()

func _init():
	pass

func resetActive():
	cmd.aDirX = enum_t.aDirX.NONE
	cmd.aDirY = enum_t.aDirY.NONE
	pass

func _reset():
	_init()
	pass
