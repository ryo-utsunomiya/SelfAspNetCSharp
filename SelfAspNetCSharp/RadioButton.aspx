<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RadioButton.aspx.cs" Inherits="SelfAspNetCSharp.RadioButton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>好きな食べ物は？</p>
        <asp:RadioButtonList ID="list" runat="server" AutoPostBack="True" OnSelectedIndexChanged="list_SelectedIndexChanged" RepeatDirection="Horizontal">
            <asp:ListItem Selected="True">お寿司</asp:ListItem>
            <asp:ListItem>焼肉</asp:ListItem>
            <asp:ListItem>ウナギ</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="lblResult" runat="server"></asp:Label>
    </form>
</body>
</html>
