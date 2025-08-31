class_name  uInput

var ui = ui_t.new()

func process():
	getDirection()
	getActive()
	getAction()
	getModifier()
	pass

func getDirection():
	if(Input.is_action_just_pressed("ui_right")):
		ui.cmd.dirX = enum_t.dirX.RIGHT
	if(Input.is_action_just_pressed("ui_left")):
		ui.cmd.dirX = enum_t.dirX.LEFT
	if(Input.is_action_just_pressed("ui_up")):
		ui.cmd.dirY = enum_t.dirY.UP
	if(Input.is_action_just_pressed("ui_down")):
		ui.cmd.dirY = enum_t.dirY.DOWN
pass

func getActive():
	ui.cmd.resetActive()

	if(Input.is_action_pressed("ui_right")):
		ui.cmd.aDirX = enum_t.aDirX.RIGHT
	if(Input.is_action_pressed("ui_left")):
		ui.cmd.aDirX = enum_t.aDirX.LEFT
	if(Input.is_action_pressed("ui_up")):
		ui.cmd.aDirY = enum_t.aDirY.UP
	if(Input.is_action_pressed("ui_down")):
		ui.cmd.aDirY = enum_t.aDirY.DOWN
	pass

func getAction():
	if(Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT)):
		ui.cmd.action = enum_t.action.JUMP
	if(Input.is_mouse_button_pressed(MOUSE_BUTTON_RIGHT)):
		ui.cmd.action = enum_t.action.ATK_MELEE
	if(Input.is_action_just_pressed("ui_space")):
		ui.cmd.action = enum_t.action.ATK_RANGE
	pass

func getModifier():
	if(Input.is_action_pressed("ui_ctrl")):
		ui.cmd.mod = enum_t.mod.CTRL
	if(Input.is_action_pressed("ui_shift")):
		ui.cmd.mod = enum_t.mod.SHIFT
	pass
