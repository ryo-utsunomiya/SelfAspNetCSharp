<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewStateGame.aspx.cs" Inherits="SelfAspNetCSharp.ViewStateGame" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Input 1~100:"></asp:Label>
        <asp:TextBox ID="txtNum" runat="server"></asp:TextBox>
        <asp:Button ID="btnSend" runat="server" OnClick="btnSend_OnClick_Click" Text="Value" />
        <p>
            <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
        </p>
    </form>
</body>
</html>
