<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="WebApplication3.ProfilePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Profile</title>

    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300;400;700&display=swap" rel="stylesheet"/>
    <link href="~/CSS/ProfileStylesheet.css" rel="stylesheet" />
</head>

<body>
    
    <form id="UserPage" runat="server">

        <div class="header">
            <div class="inner_header">
                <div class="User-container">
                    <div class="Image">
                        <img src="pics/icon%201.png" id="userAvatar" runat="server"/>
                    </div>
                    <h1  runat="server" id="usernameHeader">My User Name</h1>
                </div>
        
                <ul class="navigation">
                    <a href="Creators.html"><li>Creators</li></a>
                    <a href="LinksPage.html"><li>Links</li></a>
                    <a href="LandingPage.aspx"><li>Home</li></a>
                    <a id="GetState" onclick="buttonclick()" name="GetState"><li id="queueSign">Join A Game</li></a>
                </ul>
            </div>
        </div>

        <div class="main-content">
            <div class="inner_main-content">
                <div class="games-table">
                    <div class="games-table_history">
                        <asp:ListBox ID="GamesListBox" runat="server" CssClass="gamesTextBox" Rows="15"></asp:ListBox>
                    </div>
                </div>

                <div class="statistics-container">
                    <div class="statistics_list-container">
                        <ul class="statistics">
                            <li id="TotalGames" runat="server">Total Games: 15</li>
                            <li id="TotalWins" runat="server">Total Wins: 12</li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </form>

    <script src="Scripts\MyScripts\LandingPage.js"></script>

</body>
</html>
