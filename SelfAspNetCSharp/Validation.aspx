<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="SelfAspNetCSharp.Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Styles/Site.css" rel="stylesheet" />
</head>Z
<body>
    <form id="form1" runat="server">
    <div>
    
        Name:<br />
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqName" runat="server" ControlToValidate="txtName" CssClass="invalid" ErrorMessage="Name is required." SetFocusOnError="True"></asp:RequiredFieldValidator>
    
    </div>
        <p>
            Weight:</p>
        <p>
            <asp:TextBox ID="txtWeight" runat="server" Columns="5"></asp:TextBox>
            <asp:RangeValidator ID="rngWeight" runat="server" ControlToValidate="txtWeight" CssClass="invalid" ErrorMessage="Weight must be 0-300 kg" MaximumValue="300" MinimumValue="0" SetFocusOnError="True" Type="Integer" ValidateRequestMode="Disabled"></asp:RangeValidator>
        </p>
        <p>
            Birthday:</p>
        <asp:TextBox ID="txtBirth" runat="server" Columns="10"></asp:TextBox>
        <asp:CompareValidator ID="cmpBirth" runat="server" ControlToValidate="txtBirth" CssClass="invalid" ErrorMessage="Birthday must be date time format." Operator="DataTypeCheck" SetFocusOnError="True" Type="Date"></asp:CompareValidator>
        <p>
            E-Mail</p>
        <asp:TextBox ID="txtEmail" runat="server" Columns="50"></asp:TextBox>
        <asp:RegularExpressionValidator ID="regEmail" runat="server" ControlToValidate="txtEmail" CssClass="invalid" ErrorMessage="Enter right format E-mail address." SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <p>
            E-Mail(Confirm)</p>
        <p>
            <asp:TextBox ID="txtEmail2" runat="server" Columns="50"></asp:TextBox>
            <asp:CompareValidator ID="cmpEmail2" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtEmail2" CssClass="invalid" ErrorMessage="E-Mail and E-Mail(Confirm) must be equivalent." SetFocusOnError="True"></asp:CompareValidator>
        </p>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <p>
            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
