extends Node3D

@onready var fallback_camera: Camera3D = $FallbackCamera

func _ready() -> void:
	var xr_interface := XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.initialize():
		get_viewport().use_xr = true
		fallback_camera.current = false
		fallback_camera.visible = false
	else:
		fallback_camera.visible = true
		fallback_camera.current = true
