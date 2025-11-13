extends StaticBody2D

@onready var sprite := $Sprite2D

@onready var inventory : Inventory = $Inventory

var vis  = Preloads.SCENE_INVENTORY_UI.instantiate()

var test_bool := false
var test_timer := 1.0

func _ready() -> void:
	inventory.add_item(Preloads.ITEM_APPLE, 32)
	inventory.add_item(Preloads.ITEM_STICK, 196)

func _on_interacted(source:Node2D)->void:
	if source.has_method("access_inventory"):
		source.access_inventory(inventory)

func _process(delta: float) -> void:
	test_timer -= delta
	if test_timer < 0:
		test_timer += 1.0
		test_bool = not test_bool
		sprite.material.set_shader_parameter("enable_vertex", test_bool)
