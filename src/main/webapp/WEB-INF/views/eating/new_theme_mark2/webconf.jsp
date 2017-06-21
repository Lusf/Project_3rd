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
 
    // 초기화 함수. 연결요청, 연결수신 client 공통.
    initialize = function() {
        console.log("Initializing");
         
        localVideo = document.getElementById("localVideo");
        remoteVideo = document.getElementById("remoteVideo");
 
        resetStatus();
        // 카메라, 마이크 열기
        getUserMedia();
        // server와 websocket을 열어둔다.
        openChannel();
         
        // 연결요청 버튼 click시 SDP정보 교환 시작
        document.getElementById("join").onclick = function() {
            rtcStart();
        }
    }
 
    resetStatus = function() {
        setStatus("Initializing...");
    }
 
    function openChannel() {
        // SDP 정보 교환을 위해, 서버와 연결한다.
        url = "ws://192.168.0.127:8080";
        wsock = new WebSocket(url);
 
        wsock.onopen = function() {
            console.log("open");
        }
         
        // 서버로부터 메시지를 받을 때 처리.
        wsock.onmessage = function(e) {
            console.log("S->C:");
            console.log(e.data);
 
            // 연결 요청을 받는 client를 위한 코드. 수신측 client는 일단 메시지를 받아야 한다.
            // peerConnection 객체를 생성하고 자신의 media stream을 연결한다.
            if (pc == null) {
                createPeerConnection();
                pc.addStream(localStream);
            }
                 
            // SDP message는 아래 함수로 넘겨주면 된다. 응답은 알아서 해주므로..
            pc.processSignalingMessage(e.data);
        }
 
        wsock.onclose = function(e) {
            console.log("closed");
        }
    }
     
    // 카메라, 마이크 자원을 얻는다.
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
 
    // peerConnection 생성
    createPeerConnection = function() {
        try {
            // STUN서버 주소와 SDP 메시지를 보내는 함수를 넣어준다.
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
 
    // 연결을 요청하는 client를 위한 함수
    // join 버튼을 누르면 동작한다.
    rtcStart = function() {
 
        setStatus("Connecting...");
        console.log("Creating PeerConnection.");
        createPeerConnection();
 
        console.log("Adding local stream.");
         
        // 자신의 media를 연결시킨다. peerConnection을 생성한 이후에 반드시 해줄 것.
        pc.addStream(localStream);
    }
 
    setStatus = function(state) {
        footer.innerHTML = state;
    }
     
    // media관련 함수들
     
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
 
    // signaling 관련함수들
     
    onSignalingMessage = function(message) {
        console.log('C->S: ' + message);
        // 열어둔 websocket으로 SDP 메시지를 전송한다.
        // peerConnection을 생성하자마자 바로 SDP 메시지를 보낸다.
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
