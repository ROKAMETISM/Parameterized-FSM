extends StaticBody2D

@onready var sprite := $Sprite2D

@onready var inventory : Inventory = $Inventory

var vis  = Preloads.SCENE_INVENTORY_UI.instantiate()

func _ready() -> void:
	inventory.add_item(Preloads.ITEM_APPLE, 32)
	inventory.add_item(Preloads.ITEM_STICK, 196)

func _on_interacted(source:Node2D)->void:
	if source.has_method("access_inventory"):
		source.access_inventory(inventory)
