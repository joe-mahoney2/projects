class_name ui_t

var dirX   : int = 0
var aDirX  : int = 0
var dirY   : int = 0
var aDirY  : int = 0
var mod    : int = 0
var action : int = 0

func _init():
	pass

func resetActive():
	aDirX = enum_t.aDirX.NONE
	aDirY = enum_t.aDirY.NONE
	mod   = enum_t.mod.NONE
	pass

func _reset():
	_init()
	pass
