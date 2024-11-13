extends Control




var key = "Este es un ejemp" # Key must be either 16 or 32 bytes.
var data = "Este es un ejemplo de un mnsaje muy largo tanto que no me preocupo
  por qu va hacer rellenado con mas texto ,como dice en la documentaion de godot " # Data size must be multiple of 16 bytes, apply padding if needed.
#var aes = AESContext.new()



func _ready():
	prints( " prueba de classe eb aes contexto ")
	prints( " prueba de classe eb aes contexto ")
	prints( " prueba de classe eb aes contexto ")
	prints( " prueba de classe eb aes contexto ")
	
	var largo = data.length()
	var prueba = aes_tool.new()
	
	#region > encripto de prueba a ver si sale bien '''
	
	var encrip = prueba.encrypt_aes_ecb(key, data)
	prints(encrip)
	
	''' desencripto a ver que pasa '''
	
	var derip = prueba.decrypt_aes_ecb(key, encrip)
	
	
	
	prints(derip.get_string_from_utf8())
	
	'''veo el string y lo corto si es mas largo del original'''
	
	prints(prueba.string_to_length(derip.get_string_from_utf8(), largo))
	
	'''uso una funcion que retorna el string '''
	
	prints(prueba.string_to_aes_ecb(key,encrip,largo))
	
#endregion
	
	pass # Replace with function body.
