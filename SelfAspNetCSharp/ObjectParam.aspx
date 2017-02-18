<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ObjectParam.aspx.cs" Inherits="SelfAspNetCSharp.ObjectParam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:RadioButtonList ID="list" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="sds_list" DataTextField="category" DataValueField="category" RepeatDirection="Horizontal">
            <asp:ListItem Selected="True">無選択</asp:ListItem>
        </asp:RadioButtonList>
        <asp:SqlDataSource ID="sds_list" runat="server" ConnectionString="<%$ ConnectionStrings:SelfAsp %>" SelectCommand="SELECT DISTINCT [category] FROM [Album] ORDER BY [category]"></asp:SqlDataSource>
    
    </div>
        <asp:GridView ID="grid" runat="server" DataKeyNames="aid" DataSourceID="ods" EmptyDataText="カテゴリは選択されていません。">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ods" runat="server" DeleteMethod="DeleteAlbumData" SelectMethod="GetAlbumData" TypeName="SelfAspNetCSharp.Album">
            <DeleteParameters>
                <asp:Parameter Name="aid" Type="String" />
            </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="list" Name="category" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </form>
</body>
</html>
