<html>
<head></head>
<body>
<script>
var url="ws://47.107.60.226:8002";
var websocket=new WebSocket(url);
var data='<?php echo $_POST['data'];?>';
websocket.onopen=function(){
    websocket.send(data);
}

</script>
</body>

</html>