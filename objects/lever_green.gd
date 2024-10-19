extends Sprite2D

@onready var cat_negative = $"../cat_negative"
@onready var cat_normal = $"../cat_normal"
@onready var tile_map = $"../TileMap"
@onready var offSprite = $"OffSprite"
@onready var onSprite = $"OnSprite"

var is_on = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("enter"):
		if self.visible:
			if (global_position == cat_normal.global_position and cat_normal.visible) or (self.global_position == cat_negative.global_position and cat_negative.visible):
				offSprite.visible = not offSprite.visible
				onSprite.visible = not onSprite.visible
				is_on = not is_on
				tile_map.set_layer_enabled(1, not is_on)
