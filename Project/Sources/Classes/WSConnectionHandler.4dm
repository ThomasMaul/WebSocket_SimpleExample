Class constructor
	
Function onOpen($WS : 4D:C1709.WebSocketConnection; $para : Object)
	$WS.send(String:C10($WS.wss.handler.data))
	
Function onMessage($WS : 4D:C1709.WebSocketConnection; $para : Object)
	// display in form
	CALL FORM:C1391($WS.wss.handler.form; Formula from string:C1601("Form.data := "+String:C10($para.data)))
	// send back to browser (and all other opened sessions)
	CALL WORKER:C1389("WebSocketServer"; "WebSocketServer"; "SEND"; Num:C11($para.data))
	
	
Function onTerminate($WS : 4D:C1709.WebSocketConnection; $para : Object)
	
Function onError($WS : 4D:C1709.WebSocketConnection; $para : Object)
	
	