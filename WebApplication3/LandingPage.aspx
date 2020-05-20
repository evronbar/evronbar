<%@ Page Title="LandingPage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="ChessServer.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<!DOCTYPE html>

<html>

<head>
    <title>Page Title</title>
    <link href="CSS/LandingPageStyle.css" rel="stylesheet" />
    <meta content="width=device-width, initial-scale=1" name="viewport">
</head>


<body>

    <!--  <h2><%: Title %>.</h2> -->
    <div id="mySidenav" class="sidenav">

        <a class="closebtn" href="javascript:void(0)" onclick="closeNav()">&times;</a>
        <a href="LinksPage.html">Links Page</a>
        <a href="#">Creators</a>
        <a href="LandingPage.aspx">Main Page</a>
        <img id="GetState" onclick="buttonclick()" src="pics/join the game.png" />

    </div>
    
    <span onclick="openNav()" style="font-size: 30px; cursor: pointer">&#9776;</span>

    <script src="Scripts\MyScripts\LandingPage.js"></script>
    <script src="Scripts\MyScripts\LogIn.js"></script>

    <form action="/action_page.php" class="modal-content animate" method="post">
       

        <div id="id01" class="modal">

            <div class="imgcontainer">

                <img alt="Avatar" class="avatar" src="img_avatar2.png">

            </div>


            <div class="container">

                <label for="username"><b>Username</b></label>
                <input id ="Name" name="username"  runat="server" placeholder="Enter Username" required="required" type="text">

                <label for="psw"><b>Password</b></label>
                <input id="Psw" name="psw" placeholder="Enter Password" required="required" type="password"  runat="server">

                <button onServerClick="SignInSubmit_Click" runat="server" id="btnSignIn" type="button">Sign In!</button>

            </div>


            <div class="container" >

                <span class="psw">Dont have an account? <img src="pics/sign in.png" onclick="OpenSighInForm()"></span>

            </div>
        </div>


        <div id="SignIn" class="modal">

            <div class="imgcontainer">

                <div class="body">

                    <div class="avatarList">

                        <asp:div name="AvatarMain" class="mainImg"> <img src="pics/icon%201.png" /></asp:div>

                        <div id="divCircle">

                            <div id="middleBubble"></div>
                            <img src="pics/icon%201.png" />
                            <img src="pics/icon%207.png" />
                            <img src="pics/icon%202.png" />
                            <img src="pics/icon%203.png" />
                            <img src="pics/icon%204.png" />
                            <img src="pics/icon%205.png" />
                            <img src="pics/icon%206.png" />

                        </div>
                    </div>
                </div><!--body-->         
            </div>


            <div class="container">

                <TextBox id="StID" TextMode="Number" runat = "server" type="Number" class="form-control" OnTextChanged="StID_TextChanged"></TextBox>

                <label for="uname"><b>Username</b></label>
                <input id ="UserNameSighIn" name="uname" runat="server" placeholder="Enter Username" required="required" type="text">

                <label for="psw"><b>Password</b></label>
                <input id="pswSign" name="pswSign" placeholder="Enter Password" runat="server" required="required" type="password">

                <label for="psw1"><b>Verefy Password</b></label>
                <input id="psw1" name="psw1" placeholder="Enter Password" runat="server" required="required" type="password">
                
                <button OnServerClick="btnSignUp_Click" runat="server" id="btnSignUp" type="button">Sign Up!</button>

            </div>
        </div>
    </form>


    <script>

        // Get the modal
        document.getElementById('id01').style.display = 'block';
         document.getElementById('SignIn').style.display = "none";
        var modal = document.getElementById('id01');

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }

        function OpenSighInForm() {
            document.getElementById('id01').style.display = "none";
            document.getElementById('SignIn').style.display = 'block';
        }

    </script>



    <script>
        function openNav() {
        document.getElementById("mySidenav").style.width = "250px";
        }

        function closeNav() {
        document.getElementById("mySidenav").style.width = "0";
        }

       // document.getElementById('id01').style.display='block';

        $(document).ready(function(){
			//Center the "info" bubble in the  "circle" div
			var divTop = ($("#divCircle").height() - $("#middleBubble").height())/2;
			var divLeft = ($("#divCircle").width() - $("#middleBubble").width())/2;
			$("#middleBubble").css("top",divTop + "px");
			$("#middleBubble").css("left",divLeft + "px");
			
			//Arrange the icons in a circle centered in the div
			numItems = $( "#divCircle img" ).length; //How many items are in the circle?
			start = 0.0; //the angle to put the first image at. a number between 0 and 2pi
			step = (4*Math.PI)/numItems; //calculate the amount of space to put between the items.
			
			//Now loop through the buttons and position them in a circle
			$( "#divCircle img" ).each(function( index ) {
				radius = ($("#divCircle").width() - $(this).width())/2.3; //The radius is the distance from the center of the div to the middle of an icon
				//the following lines are a standard formula for calculating points on a circle. x = cx + r * cos(a); y = cy + r * sin(a)
				//We have made adjustments because the center of the circle is not at (0,0), but rather the top/left coordinates for the center of the div
				//We also adjust for the fact that we need to know the coordinates for the top-left corner of the image, not for the center of the image.
				tmpTop = (($("#divCircle").height()/2) + radius * Math.sin(start)) - ($(this).height()/2);
				tmpLeft = (($("#divCircle").width()/2) + radius * Math.cos(start)) - ($(this).width()/2);
				start += step; //add the "step" number of radians to jump to the next icon
				
				//set the top/left settings for the image
				$(this).css("top",tmpTop);
				$(this).css("left",tmpLeft);
			});
				
		});

        $('.avatarList').click(function() {
            $(this).toggleClass('expand');
            $('#divCircle').toggleClass('expand');
        });

        $('#divCircle img').click(function() {
            var theSrc = $(this).attr('src');
            // alert(theSrc);
            $('.mainImg img').attr('src', theSrc);
        });

    </script>

</body>
</html>
</asp:Content>
