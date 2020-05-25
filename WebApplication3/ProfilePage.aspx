<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="WebApplication3.ProfilePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 643px;
        }
    </style>

    <link href="CSS/ProfileStylesheet.css" rel="stylesheet" />

</head>
<body>
    
    <form id="UserPage" runat="server">

        <div>
            <h1 runat="server" id="usernameHeader">My User Name</h1>
        </div>

        <div id="Links">
            <button id="GetState" onclick="buttonclick()" name="GetState">Start A Game</button>
            <label id="queueSign" runat="server">Not In a queue</label>
        </div>

        <div id="Games">
            <asp:Label ID="TotalGames" runat="server" Text="TotalGames: 12" CssClass="TotalGames"></asp:Label>
            <asp:ListBox ID="GamesListBox" runat="server" CssClass="gamesTextBox" Rows="15">

            </asp:ListBox>
        </div>

    </form>

    <script src="Scripts\MyScripts\LandingPage.js"></script>

</body>
</html>
