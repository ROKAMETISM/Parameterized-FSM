class_name Inventory extends Node

var dimensions : Vector2i = Vector2i(1, 1)

var data : Dictionary[Vector2i, Item]

func init(columns : int = 1, rows : int = 1)->void:
	dimensions = Vector2i(columns, rows)
	for row in rows:
		for column in columns:
			data.set(Vector2i(column, row), null)

func add_item(item : Item, amount : int = 1)->int:
	if data.
