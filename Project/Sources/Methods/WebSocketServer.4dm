//%attributes = {}
#DECLARE($job : Text; $form : Integer; $value : Integer)
var wss : 4D:C1709.WebSocketServer

Case of 
	: ($job="INIT")
		If (OB Is empty:C1297(WSS))
			var $handler : cs:C1710.WSSHandler
			$handler:=cs:C1710.WSSHandler.new($form; String:C10($value))
			wss:=4D:C1709.WebSocketServer.new($handler)
		Else 
			wss.handler.setForm($form; $value)
		End if 
		
		
	: ($job="DEINIT")
		If (Not:C34(OB Is empty:C1297(WSS)))
			wss.terminate()
			wss:=New object:C1471
		End if 
		
	: ($job="SEND")
		wss.handler.data:=String:C10($2)
		For each ($conn; wss.connections)
			$conn.send(String:C10($2))
		End for each 
End case 