Class constructor
	This:C1470.form:=$1
	This:C1470.data:=$2
	
Function onOpen($WSServer : Object; $param : Object)
	
Function onTerminate($WSServer : Object; $param : Object)
	
Function onError($WSServer : Object; $param : Object)
	
Function onConnection($WSServer : 4D:C1709.WebSocketServer; $param : Object)->$handler : cs:C1710.WSConnectionHandler
	$handler:=cs:C1710.WSConnectionHandler.new()
	
Function setForm($form : Integer; $data : Integer)
	This:C1470.form:=$form
	This:C1470.data:=String:C10($data)
	
	