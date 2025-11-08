class_name Interactable extends Area2D

signal interacted(source:Node2D)
@export var parent : Node2D

func _ready() -> void:
	if not parent:
		parent = get_parent() as Node2D
	if parent.has_method("_on_interacted"):
		interacted.connect(parent._on_interacted)

func interact(_source:Node2D) -> void:
	interacted.emit(_source)

func highlight()->void:
	parent.modulate.a = 0.3

func unhighlight()->void:
	parent.modulate.a = 1.0
