<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Board.aspx.cs" Inherits="WebApplication3.Board" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css"> </style>
     <link rel="stylesheet" type="text/css" href="CSS\Chess.css"/>
    
</head>
<body>
    <form id="form1" runat="server">
       
   

        <label id="places"></label>
        <script src="Scripts/MyScripts/ChessD.js"></script>




       <div id="chessboard" class="chessboard">
<!-- 1st -->
<div id="A1" class="white"  onclick="clickondiv('A1')"></div>
<div id="B1" class="black"  onclick="clickondiv('B1')"></div>
<div id="C1" class="white"  onclick="clickondiv('C1')"></div>
<div id="D1" class="black"  onclick="clickondiv('D1')"></div>
<div id="E1" class="white"  onclick="clickondiv('E1')"></div>
<div id="F1" class="black"  onclick="clickondiv('F1')"></div>
<div id="G1" class="white"  onclick="clickondiv('G1')"></div>
<div id="H1" class="black"  onclick="clickondiv('H1')"></div>
<!-- 2nd -->
<div id="A2"class="black" onclick="clickondiv('A2')"></div>
<div id="B2"class="white" onclick="clickondiv('B2')"></div>
<div id="C2"class="black" onclick="clickondiv('C2')"></div>
<div id="D2"class="white" onclick="clickondiv('D2')"></div>
<div id="E2"class="black" onclick="clickondiv('E2')"></div>
<div id="F2"class="white" onclick="clickondiv('F2')"></div>
<div id="G2"class="black" onclick="clickondiv('G2')"></div>
<div id="H2"class="white" onclick="clickondiv('H2')"></div>
<!-- 3th -->
<div id="A3"class="white" onclick="clickondiv('A3')"></div>
<div id="B3"class="black" onclick="clickondiv('B3')"></div>
<div id="C3"class="white" onclick="clickondiv('C3')"></div>
<div id="D3"class="black" onclick="clickondiv('D3')"></div>
<div id="E3"class="white" onclick="clickondiv('E3')"></div>
<div id="F3"class="black" onclick="clickondiv('F3')"></div>
<div id="G3"class="white" onclick="clickondiv('G3')"></div>
<div id="H3"class="black" onclick="clickondiv('H3')"></div>
<!-- 4st -->
<div id="A4" class="black" onclick="clickondiv('A4')"></div>
<div id="B4" class="white" onclick="clickondiv('B4')"></div>
<div id="C4" class="black" onclick="clickondiv('C4')"></div>
<div id="D4" class="white" onclick="clickondiv('D4')"></div>
<div id="E4" class="black" onclick="clickondiv('E4')"></div>
<div id="F4" class="white" onclick="clickondiv('F4')"></div>
<div id="G4" class="black" onclick="clickondiv('G4')"></div>
<div id="H4" class="white" onclick="clickondiv('H4')"></div>
<!-- 5th -->
<div id="A5" class="white" onclick="clickondiv('A5')"></div>
<div id="B5" class="black" onclick="clickondiv('B5')"></div>
<div id="C5" class="white" onclick="clickondiv('C5')"></div>
<div id="D5" class="black" onclick="clickondiv('D5')"></div>
<div id="E5" class="white" onclick="clickondiv('E5')"></div>
<div id="F5" class="black" onclick="clickondiv('F5')"></div>
<div id="G5" class="white" onclick="clickondiv('G5')"></div>
<div id="H5" class="black" onclick="clickondiv('H5')"></div>
<!-- 6th -->
<div id="A6" class="black" onclick="clickondiv('A6')"></div>
<div id="B6" class="white" onclick="clickondiv('B6')"></div>
<div id="C6" class="black" onclick="clickondiv('C6')"></div>
<div id="D6" class="white" onclick="clickondiv('D6')"></div>
<div id="E6" class="black" onclick="clickondiv('E6')"></div>
<div id="F6"  class="white" onclick="clickondiv('F6')"></div>
<div id="G6" class="black" onclick="clickondiv('G6')"></div>
<div id="H6" class="white" onclick="clickondiv('H6')"></div>
<!-- 7th -->
<div id="A7" class="white" onclick="clickondiv('A7')"></div>
<div id="B7" class="black" onclick="clickondiv('B7')"></div>
<div id="C7" class="white" onclick="clickondiv('C7')"></div>
<div id="D7" class="black" onclick="clickondiv('D7')"></div>
<div id="E7"class="white" onclick="clickondiv('E7')"></div>
<div id="F7"class="black" onclick="clickondiv('F7')"></div>
<div id="G7"class="white" onclick="clickondiv('G7')"></div>
<div id="H7" class="black" onclick="clickondiv('H7')"></div>
<!-- 8th -->
<div id="A8"class="black" onclick="clickondiv('A8')"></div>
<div id="B8"class="white" onclick="clickondiv('B8')"></div>
<div id="C8"class="black" onclick="clickondiv('C8')"></div>
<div id="D8"class="white" onclick="clickondiv('D8')"></div>
<div id="E8" class="black" onclick="clickondiv('E8')"></div>
<div id="F8"class="white" onclick="clickondiv('F8')"></div>
<div id="G8"class="black" onclick="clickondiv('G8')"></div>
<div id="H8" class="white" onclick="clickondiv('H8')"></div>
</div>
  

    <asp:HiddenField id="Color" runat="server"/>

                <div id="ChatRoomBox">
              
            <button class="open-button" onclick="openForm()">Chat</button>

<div class="chat-popup" id="myForm">
  <form action="/action_page.php" class="form-container">
    <h1>Chat</h1>
      <div id ="test"><p></p></div>



    <label for="msg"><b>Message</b></label>
    <textarea id="msg" placeholder="Type message.." name="msg" required></textarea>

    <button type="submit" class="btn" onclick="SendChat()">Send</button>
    <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
  </form>
    </div>
        </div>

       <script>var server_url = "https://localhost:44398/"
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
           var MyTurn;

                   var WhiteRook = new Image();
        WhiteRook.src = 'pics/WhiteRook.png';
         var WhiteRook2 = new Image();
        WhiteRook2.src = 'pics/WhiteRook.png';

        var WhiteKing = new Image();
        WhiteKing.src = 'pics/WhiteKing.png'; 
     
        var WhiteQueen = new Image();
        WhiteQueen.src = 'pics/WhiteQueen.png'; 

        var WhiteBishop = new Image();
        WhiteBishop.src = 'pics/WhiteBishop.png';
         var WhiteBishop2 = new Image();
        WhiteBishop2.src = 'pics/WhiteBishop.png';
        
        var WhitePawn1 = new Image();
        WhitePawn1.src = 'pics/WhitePawn.png'; 

        var WhitePawn2 = new Image();
        WhitePawn2.src = 'pics/WhitePawn.png'; 

        var WhitePawn3 = new Image();
        WhitePawn3.src = 'pics/WhitePawn.png'; 

        var WhitePawn4 = new Image();
        WhitePawn4.src = 'pics/WhitePawn.png'; 

        var WhitePawn5 = new Image();
        WhitePawn5.src = 'pics/WhitePawn.png'; 
        
        var WhitePawn6 = new Image();
        WhitePawn6.src = 'pics/WhitePawn.png'; 
        
        var WhitePawn7 = new Image();
        WhitePawn7.src = 'pics/WhitePawn.png'; 

        var WhitePawn8 = new Image();
        WhitePawn8.src = 'pics/WhitePawn.png'; 

        var WhiteKnight = new Image();
        WhiteKnight.src = 'pics/WhiteKnight.png'; 
          var WhiteKnight2 = new Image();
        WhiteKnight2.src = 'pics/WhiteKnight.png'; 


        
        var BlackRook = new Image();
        BlackRook.src = 'pics/BlackRook.png'; 
        var BlackRook2 = new Image();
        BlackRook2.src = 'pics/BlackRook.png'; 

        var BlackKing = new Image();
        BlackKing.src = 'pics/BlackKing.png'; 
     
        var BlackQueen = new Image();
        BlackQueen.src = 'pics/BlackQueen.png'; 

        var BlackBishop = new Image();
        BlackBishop.src = 'pics/BlackBishop.png'; 

        var BlackBishop2 = new Image();
        BlackBishop2.src = 'pics/BlackBishop.png'; 
        

        var BlackPawn1 = new Image();
        BlackPawn1.src = 'pics/BlackPawn.png'; 

         var BlackPawn2 = new Image();
        BlackPawn2.src = 'pics/BlackPawn.png'; 

         var BlackPawn3 = new Image();
        BlackPawn3.src = 'pics/BlackPawn.png'; 

         var BlackPawn4 = new Image();
        BlackPawn4.src = 'pics/BlackPawn.png'; 

         var BlackPawn5 = new Image();
        BlackPawn5.src = 'pics/BlackPawn.png'; 

         var BlackPawn6 = new Image();
        BlackPawn6.src = 'pics/BlackPawn.png'; 

          var BlackPawn7 = new Image();
        BlackPawn7.src = 'pics/BlackPawn.png'; 

          var BlackPawn8 = new Image();
        BlackPawn8.src = 'pics/BlackPawn.png'; 

        var BlackKnight = new Image();
        BlackKnight.src = 'pics/BlackKnight.png';
         var BlackKnight2 = new Image();
        BlackKnight2.src = 'pics/BlackKnight.png';


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
      //   imgswipe();
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

    //document.getElementById("places").innerHTML = nameofdivA + "    " + nameofdivB + "  " + color + " ";
    document.getElementById("places").innerHTML = nameofdivA + " GUYGUY   " + nameofdivB + "  " + color + " ";
    //var xres = httpGet(server_url_comm + "?Family=Chess&Action=NewGame&Color=" + color);
    var xres = httpGet(server_url_comm + "?Family=Chess&Action=Move&Color=" + color + "&From=" + nameofdivA + "&To=" + nameofdivB);
    document.getElementById("test").innerHTML = xres;
    return xres;
}


function StartPosition() {
            
        //start for the white unit by char
        document.getElementById("A1").appendChild(WhiteRook);
        document.getElementById("B1").appendChild(WhiteKnight);
        document.getElementById("C1").appendChild(WhiteBishop);
        document.getElementById("D1").appendChild(WhiteKing);
        document.getElementById("E1").appendChild(WhiteQueen);
        document.getElementById("F1").appendChild(WhiteBishop2);
        document.getElementById("G1").appendChild(WhiteKnight2);
        document.getElementById("H1").appendChild(WhiteRook2);
        document.getElementById("A2").appendChild(WhitePawn8);
        document.getElementById("B2").appendChild(WhitePawn7);
        document.getElementById("C2").appendChild(WhitePawn6);
        document.getElementById("D2").appendChild(WhitePawn5);
        document.getElementById("E2").appendChild(WhitePawn4);
        document.getElementById("F2").appendChild(WhitePawn3);
        document.getElementById("G2").appendChild(WhitePawn2);
        document.getElementById("H2").appendChild(WhitePawn1);

        //start for the black unit by char 
        document.getElementById("A7").appendChild(BlackPawn1);
        document.getElementById("B7").appendChild(BlackPawn2); 
        document.getElementById("C7").appendChild(BlackPawn3);
        document.getElementById("D7").appendChild(BlackPawn4);
        document.getElementById("E7").appendChild(BlackPawn5);
        document.getElementById("F7").appendChild(BlackPawn6);
        document.getElementById("G7").appendChild(BlackPawn7);
        document.getElementById("H7").appendChild(BlackPawn8);
        document.getElementById("A8").appendChild(BlackRook);
        document.getElementById("B8").appendChild(BlackKnight);
        document.getElementById("C8").appendChild(BlackBishop)
        document.getElementById("D8").appendChild(BlackKing);
        document.getElementById("E8").appendChild(BlackQueen);
        document.getElementById("F8").appendChild(BlackBishop2);
        document.getElementById("G8").appendChild(BlackKnight2);
    document.getElementById("H8").appendChild(BlackRook2);

    color = document.getElementById('Color').value;
    if (color == "Black") {
        document.getElementById("chessboard").style.borderColor = "red";
    }

    else {
        document.getElementById("chessboard").style.borderColor = "yellow";
    }

    
}

StartPosition();
           NewGame();


  setInterval(function TURN() {
      color = document.getElementById('Color').value;
      var xres = httpGet(server_url_comm + "?Family=Chess&Action=Turn");
      if (xres == color) {
         // document.getElementById("test").innerHTML = "My turn";
          MyTurn = true;
          OpiTurn();

      }

      else {
        //  document.getElementById("test").innerHTML = "not my turn";
          MyTurn = false;

      }

     
           }, 1000);

        

           function OpiTurn() {
               color = document.getElementById('Color').value;

                if (MyTurn == true) {
                      var LastFrom = httpGet(server_url_comm + "?Family=Chess&Action=GetLastFrom");
                       var LastTo =  httpGet(server_url_comm + "?Family=Chess&Action=GetLastTo");

                    if (LastFrom != "null" && LastTo != "null") {
                           document.getElementById(LastTo).innerHTML = document.getElementById(LastFrom).innerHTML;
                        document.getElementById(LastFrom).innerHTML = null;

                        var resp = httpGet(server_url_comm + "?Family=Chess&Action=IsInCheck&Color=" + color);

                        if (resp == "Is In Check") {
                            window.alert("You Are In CHECK!!!");
                        }

                        if (resp == "Is In CheckMate") {
                            window.alert("You Are CheckMated And Lost The Game!!!");

                        }


                    }



       

                    MyTurn = false;

                }
           }

                           setInterval(function GetChat() {
                               color = document.getElementById('Color').value;
                               var msg = document.getElementById('msg').value;
                                  var xres = httpGet(server_url_comm + "?Family=Chat&Sentence="+ msg +"&Color=" + color);
                      
                                   //   document.getElementById("test").innerHTML = "not my turn";
                               var WhatToAdd= document.getElementById("test").innerHTML +"\n"+ xres;  

           }, 1000);


           function SendChat() {
               color = document.getElementById('Color').value;
               var send = document.getElementById('msg').innerHTML;
               var xres = httpGet(server_url_comm + "?Family=Chat&Sentence=" + send + "Action=SendChat&Color=" + color);

           }



       </script>
        <script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}
</script>
    </form>
</body>
</html>
