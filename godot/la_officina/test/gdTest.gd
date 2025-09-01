extends Sprite2D
var BASE_SPEED = 2.0
var SPRINT_MOD = 2.0

var ui = uInput.new()

func _ready() -> void:
	pass

var posCmd = enum_t.aDirX.NONE
func _process(delta: float) -> void:
	ui.process()

	posCmd = BASE_SPEED*ui.ui.aDirX
	if(ui.ui.mod == enum_t.mod.SHIFT):
		posCmd*=SPRINT_MOD

	self.position.x+=posCmd
	pass
