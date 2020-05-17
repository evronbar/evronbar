var server_url = "https://localhost:44398/"
var server_url_comm = server_url + "ServerComm.ashx"
var server_url_board = server_url + "Board.aspx"

var interval_ticks = 10000;



function httpGet(theUrl) {
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.open("GET", theUrl, false);
    xmlHttp.send(null);
    return xmlHttp.responseText;
}


var color = "Unknown";
function buttonclick() {
    var res = httpGet(server_url_comm + "?Family=Game&Action=Set&Color="+color);
    if (res == "White")
    {
        color = res;
        //document.getElementById("GetState").innerHTML = "Waiting for partner";
        document.getElementById("GetState").disabled = true;
    }
    else if (res == "Black")
    {
        color = res;
     //   document.getElementById("GetState").innerHTML = "Let's go";
        document.getElementById("GetState").disabled = true;
    }

    //document.getElementById("GetState").hidden = true;

}

// set timer call for polling
var intervalID = setInterval(function () {

    var sstate = httpGet(server_url_comm + "?Family=Game&Action=Get&Color=" + color);

    if (color == "Unknown" && sstate == "OnePlayer") {
      //  document.getElementById("GetState").innerHTML = "A partner is waiting for you!";
    }
    if (color == "Unknown" && sstate == "NoPlayers")
    {
     //   document.getElementById("GetState").innerHTML = "No players yet. Join NOW !";
    }
    if (color == "Unknown" && sstate == "TwoPlayers") {
       // document.getElementById("GetState").innerHTML = "Too Late :-(";
    }

    if (color == "White" && sstate == "OnePlayer") {
     //   document.getElementById("GetState").innerHTML = "Please waiting  for a friend !";
    }
    if (color == "White" && sstate == "NoPlayers") {
        // can never reach here
    }
    if (color == "White" && sstate == "TwoPlayers") {
      //  document.getElementById("GetState").innerHTML = "White Start Game Now !!!";
        window.location.replace(server_url_board + "?Color=" + color);
    }

    if (color == "Black" && sstate == "OnePlayer") {
        // can never reach here
    }
    if (color == "Black" && sstate == "NoPlayers") {
        // can never reach here
    }
    if (color == "Black" && sstate == "TwoPlayers") {
        //document.getElementById("GetState").innerHTML = "Let's go";
        window.location.replace(server_url_board + "?Color=" + color);
    }
   
   
}, interval_ticks);

// set inigial button text
//var sstate = httpGet(server_url_comm + "?Family=Game&Action=Get&Color=" + color);
//document.getElementById("GetState").innerHTML = "Press To Play !";
