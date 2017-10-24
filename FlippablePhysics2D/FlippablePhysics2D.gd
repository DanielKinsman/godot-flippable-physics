extends Object

class FlippableRigidBody2D extends RigidBody2D:
	const FlipHelper = preload("FlipHelper.gd")
	var helper = null
	
	func _ready():
		helper = FlipHelper.new(self)
	
	func get_flip_h():
		return helper.get_flip_h()
	
	func set_flip_h(enabled):
		helper.set_flip_h(enabled)
		
	func get_flip_v():
		return helper.get_flip_v()
	
	func set_flip_v(enabled):
		helper.set_flip_v(enabled)

class FlippableKinematicBody2D extends KinematicBody2D:
	const FlipHelper = preload("FlipHelper.gd")
	var helper = null
	
	func _ready():
		helper = FlipHelper.new(self)
	
	func get_flip_h():
		return helper.get_flip_h()
	
	func set_flip_h(enabled):
		helper.set_flip_h(enabled)
		
	func get_flip_v():
		return helper.get_flip_v()
	
	func set_flip_v(enabled):
		helper.set_flip_v(enabled)