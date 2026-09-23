extends Node3D

@onready var fallback_camera: Camera3D = $FallbackCamera

func _ready() -> void:
	var xr_interface := XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.initialize():
		fallback_camera.visible = false
		fallback_camera.current = false
		get_viewport().use_xr = true
	else:
		fallback_camera.visible = true
		fallback_camera.current = true
