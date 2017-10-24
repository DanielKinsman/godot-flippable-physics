# FlippablePhysics2D
For working around the fact that you can't easily "flip" or "mirror" physics bodies like RigidBody2D. It works via rotating and translating children of such nodes instead of mirroring them via `scale(-1, 1)`.

As such it has several limitations, primarily that it only works for symmetrical children like a `CollisionShape2D` with a `RectangleShape2D` property, not one with an asymetrical hand drawn `ConvexPolygonShape2D`.

To use it, copy the `FlippablePhysics2D` directory into your project (or better yet, `git submodule add` it), then change the `extends RigidBody2D` in your node's script to `extends "FlippablePhysics2D/FlippablePhysics2D.gd".FlippableRigidBody2D`. See the example project in the [godot-tricks](https://github.com/DanielKinsman/godot-tricks) repo.
