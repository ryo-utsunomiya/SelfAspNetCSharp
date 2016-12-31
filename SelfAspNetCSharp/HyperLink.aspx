<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HyperLink.aspx.cs" Inherits="SelfAspNetCSharp.HyperLink" %>

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
        <asp:HyperLink ID="link" runat="server" ImageUrl="http://www.wings.msn.to/image/wings.jpg" NavigateUrl="http://wings.msn.to/">WINGS</asp:HyperLink>
        <p>
            <asp:Image ID="logo" runat="server" AlternateText="WINGS Logo" ImageUrl="http://www.wings.msn.to/image/wings.jpg" />
        </p>
    </form>
</body>
</html>
