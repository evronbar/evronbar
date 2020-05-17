var server_url = "https://localhost:44398/"
var server_url_comm = server_url + "ServerComm.ashx"
var server_url_board = server_url + "Board.aspx"

var counterofclickondiv = 0;
var img = document.createElement('img');
var nameofdivA;
var nameofdivB;
var ResultFromServer;
var res;
//StartPosition()
var color;


function httpGet(theUrl) {
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.open("GET", theUrl, false);
    xmlHttp.send(null);
    return xmlHttp.responseText;
}

function imgswipe() {

    //document.getElementById(nameofdivA).innerHTML = " ";

    if (nameofdivA != nameofdivB) {
        document.getElementById(nameofdivB).innerHTML = document.getElementById(nameofdivA).innerHTML;
        document.getElementById(nameofdivA).innerHTML = null;
    }


    else {
        //document.getElementById(demo5).innerHTML = "try again"; (not a leggl move)
    }


}

function clickondiv(name) {

    counterofclickondiv++;

    if (counterofclickondiv == 1) {
        //document.getElementById("demo3").innerHTML = name;
        nameofdivA = name;
    }


    if (counterofclickondiv == 2) {
        // document.getElementById("demo4").innerHTML = name;
        nameofdivB = name;
        // imgswipe();
        var response = Move();

        if (response == "Move is valid") {
            imgswipe();
        }

        if (response == "Move is not valid, there are no any moves left, checkmate") {

        }

        if (response == "Move is not valid, try again") {

        }




        counterofclickondiv = 0;

        //var xmlHttp = new XMLHttpRequest();

    }
}

function counterofclick() {

    if (counterofclickondiv = NaN) {
        return 1;
    }
    return counterofclick() + 1;
}

function NewGame() {
    color = document.getElementById('Color').value;
    var xres = httpGet(server_url_comm + "?Family=Chess&Action=NewGame&Color=" + color);
    document.getElementById("test").innerHTML = xres;
}


function Move() {
    color = document.getElementById('Color').value;

    document.getElementById("places").innerHTML = nameofdivA + "    " + nameofdivB + "  " + color + " ";
    var xres = httpGet(server_url_comm + "?Family=Chess&Action=Move&Color=" + color + "&From=" + nameofdivA + "&To=" + nameofdivB);
    document.getElementById("test").innerHTML = xres;
    //return xres;
}


function StartPosition() {

    //start for the white unit by char
    document.getElementById("A1").innerHTML = '&#9814;';
    document.getElementById("A2").innerHTML = '&#9816;';
    document.getElementById("A3").innerHTML = '&#9815;';
    document.getElementById("A4").innerHTML = '&#9813;';
    document.getElementById("A5").innerHTML = '&#9812;';
    document.getElementById("A6").innerHTML = '&#9815;';
    document.getElementById("A7").innerHTML = '&#9816;';
    document.getElementById("A8").innerHTML = '&#9814;';
    document.getElementById("B1").innerHTML = '&#9817;';
    document.getElementById("B2").innerHTML = '&#9817;';
    document.getElementById("B3").innerHTML = '&#9817;';
    document.getElementById("B4").innerHTML = '&#9817;';
    document.getElementById("B5").innerHTML = '&#9817;';
    document.getElementById("B6").innerHTML = '&#9817;';
    document.getElementById("B7").innerHTML = '&#9817;';
    document.getElementById("B8").innerHTML = '&#9817;';

    //start for the black unit by char 
    document.getElementById("H1").innerHTML = '&#9820;';
    document.getElementById("H2").innerHTML = '&#9822;';
    document.getElementById("H3").innerHTML = '&#9821;';
    document.getElementById("H4").innerHTML = '&#9818;';
    document.getElementById("H5").innerHTML = '&#9819;';
    document.getElementById("H6").innerHTML = '&#9821;';
    document.getElementById("H7").innerHTML = '&#9822;';
    document.getElementById("H8").innerHTML = '&#9820;';
    document.getElementById("G1").innerHTML = '&#9823;';
    document.getElementById("G2").innerHTML = '&#9823;';
    document.getElementById("G3").innerHTML = '&#9823;';
    document.getElementById("G4").innerHTML = '&#9823;';
    document.getElementById("G5").innerHTML = '&#9823;';
    document.getElementById("G6").innerHTML = '&#9823;';
    document.getElementById("G7").innerHTML = '&#9823;';
    document.getElementById("G8").innerHTML = '&#9823;';


}

StartPosition();
NewGame();