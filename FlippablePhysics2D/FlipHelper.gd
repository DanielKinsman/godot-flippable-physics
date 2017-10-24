extends Object

var flip_h = false
var flip_v = false
var node = null

func _init(node):
	self.node = node

func get_flip_h():
	return flip_h

func set_flip_h(enable):
	if enable == flip_h:
		return

	flip_h = enable
	h_flip_children()

func get_flip_v():
	return flip_v

func set_flip_v(enable):
	if enable == flip_v:
		return

	flip_v = enable
	v_flip_children()

func h_flip_children():
	for n in node.get_children():
		if not (n extends Node2D):
			continue
			
		if n extends Sprite:
			n.set_flip_h(not n.is_flipped_h())
		
		# TODO die in a fire if n extends PhysicsBody2D?
		
		n.rotate(-2.0 * n.get_rot())
		var pos = n.get_pos()
		n.translate(Vector2(-2.0 * pos.x, 0.0))
		
func v_flip_children():
	for n in node.get_children():
		if not (n extends Node2D):
			continue
			
		if n extends Sprite:
			n.set_flip_v(not n.is_flipped_v())
		
		# TODO die in a fire if n extends PhysicsBody2D?
		
		n.rotate(-2.0 * n.get_rot())
		var pos = n.get_pos()
		n.translate(Vector2(0.0, -2.0 * pos.y))