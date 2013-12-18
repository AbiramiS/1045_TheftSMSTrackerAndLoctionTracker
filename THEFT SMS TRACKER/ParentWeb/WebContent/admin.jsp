<html>
<head>
<link rel="stylesheet" type="text/css" href="sdmenu/sdmenu.css" />
	<script type="text/javascript" src="sdmenu/sdmenu.js">
	</script>
	<script type="text/javascript">
	
	var myMenu;
	window.onload = function() {
		myMenu = new SDMenu("my_menu");
		myMenu.init();
		myMenu.speed = 3; 
                myMenu.expandAll();
                myMenu.markCurrent=true;
	};
	
	</script>
        <style>
            a
            {
             text-decoration: none;   
            }
        </style>
</head>
<body>
<div style="float: left" id="my_menu" class="sdmenu">
      <div>
        <span>Call Logs</span>
        <a href='incomingcall.jsp' target=f2 >Incoming Calls</a>
        <a href='outgoingcall.jsp' target=f2 >Outgoing Calls</a>
        <a href='missedcall.jsp' target=f2 >Missed Calls</a>
      </div>
      <div>
        <span>Message Logs</span>
        <a href="incomingmsg.jsp" target=f2 >Incoming Messages</a>
        <a href="outgoingmsg.jsp" target=f2 >Outgoing Messages</a>
      </div>
      <div class="collapsed">
        <span>Location Details</span>
        <a href="location.jsp" target=f2 >Location Info</a>
      </div>
       <div>
        <span>Logout Here</span>
       <a href="index.jsp" target="_parent" >LogOut</a>
      </div>
    </div>
    
</body>
</html>