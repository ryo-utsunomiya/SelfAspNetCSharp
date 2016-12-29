<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hello.aspx.cs" Inherits="SelfAspNetCSharp.Hello" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>こんにちは、ASP.NET</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <p>
            名前:
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:Button ID="btnSend" runat="server" Text="送信" OnClick="btnSend_Click" />
        </p>
        <asp:Label ID="lblGreet" runat="server"></asp:Label>
    </form>
</body>
</html>
