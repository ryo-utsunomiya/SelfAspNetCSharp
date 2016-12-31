<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Text.aspx.cs" Inherits="SelfAspNetCSharp.Text" %>

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
        <asp:Label ID="lblText" runat="server" Text="&lt;script&gt;alert('XSS by Label')&lt;/script&gt;"></asp:Label>
        <br />
        <asp:Literal ID="ltrText" runat="server" Mode="Encode" Text="&lt;script&gt;alert('XSS by Literal')&lt;/script&gt;"></asp:Literal>
    </form>
</body>
</html>
