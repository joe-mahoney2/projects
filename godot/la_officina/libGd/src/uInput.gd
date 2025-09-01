class_name  uInput

var ui = ui_t.new()

func process():
	getDirection()
	getActive()
	getAction()
	getModifier()

	if(false):
		debug()
	pass

func getDirection():
	if(Input.is_action_just_pressed("ui_right")):
		ui.dirX = enum_t.dirX.RIGHT
	if(Input.is_action_just_pressed("ui_left")):
		ui.dirX = enum_t.dirX.LEFT
	if(Input.is_action_just_pressed("ui_up")):
		ui.dirY = enum_t.dirY.UP
	if(Input.is_action_just_pressed("ui_down")):
		ui.dirY = enum_t.dirY.DOWN
pass

func getActive():
	ui.resetActive()

	if(Input.is_action_pressed("ui_right")):
		ui.aDirX = enum_t.aDirX.RIGHT
	if(Input.is_action_pressed("ui_left")):
		ui.aDirX = enum_t.aDirX.LEFT
	if(Input.is_action_pressed("ui_up")):
		ui.aDirY = enum_t.aDirY.UP
	if(Input.is_action_pressed("ui_down")):
		ui.aDirY = enum_t.aDirY.DOWN
	pass

func getAction():
	if(Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT)):
		ui.action = enum_t.action.JUMP
	if(Input.is_mouse_button_pressed(MOUSE_BUTTON_RIGHT)):
		ui.action = enum_t.action.ATK_MELEE
	if(Input.is_action_just_pressed("ui_space")):
		ui.action = enum_t.action.ATK_RANGE
	pass

func getModifier():

	if(Input.is_action_pressed("ui_ctrl")):
		ui.mod = enum_t.mod.CTRL
	if(Input.is_action_pressed("ui_shift")):
		ui.mod = enum_t.mod.SHIFT
	pass

func debug():
	if(ui.dirX):
		print("   dirX: ", ui.dirX)
	if(ui.dirY):
		print("   dirY: ", ui.dirY)
	if(ui.aDirX):
		print("  adirX: ", ui.aDirX)
	if(ui.aDirY):
		print("  adirY: ", ui.aDirY)
	if(ui.action):
		print(" action: ", ui.action)
	if(ui.mod):
		print("    mod: ", ui.mod, "\n")
	pass
