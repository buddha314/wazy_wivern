extends Node3D

@onready var fallback_camera: Camera3D = $FallbackCamera
@onready var xr_camera: XRCamera3D = $XROrigin3D/XRCamera3D

func _ready() -> void:
	var xr_interface := XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.initialize():
		get_viewport().use_xr = true
		fallback_camera.current = false
		xr_camera.current = true
	else:
		get_viewport().use_xr = false
		fallback_camera.current = true
