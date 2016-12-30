<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckBox.aspx.cs" Inherits="SelfAspNetCSharp.CheckBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>好きな食べ物は？</p>
    </div>
        <asp:CheckBoxList ID="list" runat="server" AutoPostBack="True" OnSelectedIndexChanged="list_SelectedIndexChanged" RepeatDirection="Horizontal">
            <asp:ListItem Selected="True">sushi</asp:ListItem>
            <asp:ListItem>yakiniku</asp:ListItem>
            <asp:ListItem>unagi</asp:ListItem>
        </asp:CheckBoxList>
        <asp:Label ID="lblResult" runat="server"></asp:Label>
    </form>
</body>
</html>
