<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignedIn.aspx.cs" Inherits="WebApplication3.SignedIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form action="/action_page.php" class="modal-content animate" method="post">
        <div>
            <input id="TestBox" name="TestBox" placeholder="Enter Password"  type="text"  runat="server"/>
            <button id="TestBtn" onServerClick="TestExecute" Text="Test" runat="server" type="button">Test</button>
        </div>
    </form>
</body>
</html>
