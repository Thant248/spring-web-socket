var stompClient = null;

function connect() {
    let socket = new SockJS("/server1");

    stompClient = Stomp.over(socket);
    stompClient.connect({}, function (frame) {
        console.log("Connected: " + frame);
        $("#name-from").addClass('d-none');
        $("#chat-room").removeClass('d-none');

        // Subscribe
        stompClient.subscribe("/topic/return-to", function (response) {
            showMessage(JSON.parse(response.body));
        });
    });
}

function showMessage(message) {
    $("#message-container-table").prepend(`<tr><td><b>${message.name} : </b> ${message.content}</td></tr>`);
}

function sendMessage() {
    let jsonOb = {
        name: $("#name-value").val(),
        content: $("#message-value").val()
    }
    stompClient.send("/app/message", {}, JSON.stringify(jsonOb))
}

function logout(){
    localStorage.removeItem("name")
    if (stompClient != null){
        stompClient.disconnect()
        $("#name-from").removeClass('d-none');
        $("#chat-room").addClass('d-none');

    }
}
$(document).ready(function() {
    $("#login").click(function(event) {
        event.preventDefault(); // Prevent form submission
        let name = $("#name-value").val();
        if (name) {
            localStorage.setItem("name", name);
            $("#name-title").html(`Welcome, <br>${name}</br>`)
            connect();
        } else {
            alert("Please enter your name");
        }
    });

    $("#send-btn").click(() => {
        sendMessage();
    })

    $("#logout").click(() => {
        logout();
    })

});