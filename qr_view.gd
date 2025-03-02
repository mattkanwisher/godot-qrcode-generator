extends Control

@onready var text_label := $CenterContainer/VBoxContainer/Text
@onready var qr_code_image := $CenterContainer/VBoxContainer/QrCode


func _ready() -> void:
	var qr_code: QrCode = QrCode.new()
	var texture: ImageTexture = qr_code.get_texture(Global.qr_text)

	text_label.text = "Text : " + Global.qr_text
	qr_code_image.texture = texture
