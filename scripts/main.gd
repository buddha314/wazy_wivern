extends Node3D

func _enter_tree() -> void:
	var fallback_camera: Camera3D = $FallbackCamera
	var xr_interface := XRServer.find_interface("OpenXR")
	if xr_interface and xr_interface.initialize():
		fallback_camera.current = false
		get_viewport().use_xr = true
	else:
		get_viewport().use_xr = false
		fallback_camera.current = true
