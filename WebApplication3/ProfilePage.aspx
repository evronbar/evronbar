<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="WebApplication3.ProfilePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Profile</title>

    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300;400;700&display=swap" rel="stylesheet"/>
    <link href="CSS/ProfileStylesheet.css" rel="stylesheet" />

    <style>
        body{
            background-image: url("../pics/Background.png");
            background-repeat: no-repeat;
            background-size: cover;
        }

        .main-content {
            height: 660px;
        }

        .statistics {
            font-family: 'Roboto Condensed';
            font-size: 32px;
            font-weight: 400;
            color: #f5f6fa;
        }
    </style><meta charset="utf-8"><b style="font-weight:normal;" id="docs-internal-guid-c86a9147-7fff-9229-fe82-67aa6f76d282"><span style="font-size:12pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"></span></b><meta charset="utf-8"><b style="font-weight:normal;" id="docs-internal-guid-c86a9147-7fff-9229-fe82-67aa6f76d282"><span style="font-size:12pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"></span></b><meta charset="utf-8"><b style="font-weight:normal;" id="docs-internal-guid-c86a9147-7fff-9229-fe82-67aa6f76d282"><span style="font-size:12pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"></span></b><meta charset="utf-8"><b style="font-weight:normal;" id="docs-internal-guid-c86a9147-7fff-9229-fe82-67aa6f76d282"><span style="font-size:12pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"></span></b><meta charset="utf-8"><b style="font-weight:normal;" id="docs-internal-guid-c86a9147-7fff-9229-fe82-67aa6f76d282"><span style="font-size:12pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"></span></b><meta charset="utf-8"><b style="font-weight:normal;" id="docs-internal-guid-c86a9147-7fff-9229-fe82-67aa6f76d282"><span style="font-size:12pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"></span></b><meta charset="utf-8"><b style="font-weight:normal;" id="docs-internal-guid-c86a9147-7fff-9229-fe82-67aa6f76d282"><span style="font-size:12pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"></span></b><meta charset="utf-8"><b style="font-weight:normal;" id="docs-internal-guid-c86a9147-7fff-9229-fe82-67aa6f76d282"><span style="font-size:12pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"></span></b><meta charset="utf-8"><b style="font-weight:normal;" id="docs-internal-guid-c86a9147-7fff-9229-fe82-67aa6f76d282"><span style="font-size:12pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"></span></b><meta charset="utf-8"><b style="font-weight:normal;" id="docs-internal-guid-c86a9147-7fff-9229-fe82-67aa6f76d282"><span style="font-size:12pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;"></span></b>

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
