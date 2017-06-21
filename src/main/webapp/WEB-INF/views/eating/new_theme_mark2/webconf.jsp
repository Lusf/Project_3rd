<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
 
<script type="text/javascript">
    var localVideo;
    var remoteVideo;
    var localStream;
    var pc = null;
    var wsock;
    var remoteSrc = null;
 
    var STUN_CONF = "NONE";
 
    // �ʱ�ȭ �Լ�. �����û, ������� client ����.
    initialize = function() {
        console.log("Initializing");
         
        localVideo = document.getElementById("localVideo");
        remoteVideo = document.getElementById("remoteVideo");
 
        resetStatus();
        // ī�޶�, ����ũ ����
        getUserMedia();
        // server�� websocket�� ����д�.
        openChannel();
         
        // �����û ��ư click�� SDP���� ��ȯ ����
        document.getElementById("join").onclick = function() {
            rtcStart();
        }
    }
 
    resetStatus = function() {
        setStatus("Initializing...");
    }
 
    function openChannel() {
        // SDP ���� ��ȯ�� ����, ������ �����Ѵ�.
        url = "ws://192.168.0.127:8080";
        wsock = new WebSocket(url);
 
        wsock.onopen = function() {
            console.log("open");
        }
         
        // �����κ��� �޽����� ���� �� ó��.
        wsock.onmessage = function(e) {
            console.log("S->C:");
            console.log(e.data);
 
            // ���� ��û�� �޴� client�� ���� �ڵ�. ������ client�� �ϴ� �޽����� �޾ƾ� �Ѵ�.
            // peerConnection ��ü�� �����ϰ� �ڽ��� media stream�� �����Ѵ�.
            if (pc == null) {
                createPeerConnection();
                pc.addStream(localStream);
            }
                 
            // SDP message�� �Ʒ� �Լ��� �Ѱ��ָ� �ȴ�. ������ �˾Ƽ� ���ֹǷ�..
            pc.processSignalingMessage(e.data);
        }
 
        wsock.onclose = function(e) {
            console.log("closed");
        }
    }
     
    // ī�޶�, ����ũ �ڿ��� ��´�.
    getUserMedia = function() {
        try {
            navigator.webkitGetUserMedia({audio:true, video:true}, onUserMediaSuccess,
                                   onUserMediaError);
            console.log("Requested access to local media with new syntax.");
        } catch (e) {
            try {
                navigator.webkitGetUserMedia("video,audio", onUserMediaSuccess,
                                             onUserMediaError);
                console.log("Requested access to local media with old syntax.");
            } catch (e) {
                alert("webkitGetUserMedia() failed. Is the MediaStream flag enabled in about:flags?");
                console.log("webkitGetUserMedia failed with exception: " + e.message);
            }
        }
    }
 
    // peerConnection ����
    createPeerConnection = function() {
        try {
            // STUN���� �ּҿ� SDP �޽����� ������ �Լ��� �־��ش�.
            pc = new webkitDeprecatedPeerConnection(STUN_CONF,
                                              onSignalingMessage);
            console.log("Created webkitDeprecatedPeerConnnection with config");
        } catch (e) {
            console.log("Failed to create webkitDeprecatedPeerConnection, exception: " + e.message);
            try {
                pc = new webkitPeerConnection(STUN_CONF,
                                      onSignalingMessage);
                console.log("Created webkitPeerConnnection with config.");
            } catch (e) {
                console.log("Failed to create webkitPeerConnection, exception: " + e.message);
                alert("Cannot create PeerConnection object; Is the 'PeerConnection' flag enabled in about:flags?");
                return;
            }
        }
 
        pc.onconnecting = onSessionConnecting;
        pc.onopen = onSessionOpened;
        pc.onaddstream = onRemoteStreamAdded;
        pc.onremovestream = onRemoteStreamRemoved;
    }
 
    // ������ ��û�ϴ� client�� ���� �Լ�
    // join ��ư�� ������ �����Ѵ�.
    rtcStart = function() {
 
        setStatus("Connecting...");
        console.log("Creating PeerConnection.");
        createPeerConnection();
 
        console.log("Adding local stream.");
         
        // �ڽ��� media�� �����Ų��. peerConnection�� ������ ���Ŀ� �ݵ�� ���� ��.
        pc.addStream(localStream);
    }
 
    setStatus = function(state) {
        footer.innerHTML = state;
    }
     
    // media���� �Լ���
     
    onUserMediaSuccess = function(stream) {
        console.log("User has granted access to local media.");
        var url = webkitURL.createObjectURL(stream);
        localVideo.style.opacity = 1;
        localVideo.src = url;
        localStream = stream;
    }
 
    onUserMediaError = function(error) {
        console.log("Failed to get access to local media. Error code was " + error.code);
        alert("Failed to get access to local media. Error code was " + error.code + ".");
    }
 
    // signaling �����Լ���
     
    onSignalingMessage = function(message) {
        console.log('C->S: ' + message);
        // ����� websocket���� SDP �޽����� �����Ѵ�.
        // peerConnection�� �������ڸ��� �ٷ� SDP �޽����� ������.
        wsock.send(message);    
    }
 
    onSessionConnecting = function(message) {
        console.log("Session connecting.");
    }
 
    onSessionOpened = function(message) {
        console.log("Session opened.");
    }
 
    onRemoteStreamAdded = function(event) {
        console.log("Remote stream added.");
        var url = webkitURL.createObjectURL(event.stream);
        remoteVideo.style.opacity = 1;
        remoteVideo.src = url;
        remoteSrc = url;
        setStatus("<input type=\"button\" id=\"hangup\" value=\"Hang up\" onclick=\"onHangup()\" />");
    }
 
    onRemoteStreamRemoved = function(event) {
        console.log("Remote stream removed.");
    }
 
    onHangup = function() {
        console.log("Hanging up.");
        localVideo.style.opacity = 0;
        remoteVideo.style.opacity = 0;
        pc.close();
        pc = null;
        setStatus("You have left the call.");
    }
 
</script>
</head>
 
<body onload="initialize();">
<div id="container">
 
  <div id="local">
    <video
     width="25%" height="25%" id="localVideo" autoplay="autoplay" style="opacity: 0;
     -webkit-transition-property: opacity;
     -webkit-transition-duration: 2s;">
    </video>
  </div>
 
  <div id="remote">
    <video width="25%" height="25%" id="remoteVideo" autoplay="autoplay"
     style="opacity: 0;
     -webkit-transition-property: opacity;
     -webkit-transition-duration: 2s;">
    </video>
  </div>
 
  <div id="footer"></div>
 
</div>
 
<button id="join">join</button>
</body>
</html>
