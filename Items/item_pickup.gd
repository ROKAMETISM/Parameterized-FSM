class_name ItemPickup extends Node2D

@export var item_type : Item
@onready var sprite : Sprite2D = $Sprite2D

func _ready() -> void:
	sprite.texture = item_type.icon

func _on_interacted(source:Node2D) -> void:
	source.inventory.add_item(item_type, 1)
	queue_free()
