<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="SelfAspNetCSharp.GridView" %>

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
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="isbn" DataSourceID="sds" ForeColor="Black" GridLines="Vertical" PageSize="3">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="isbn" HeaderText="isbn" ReadOnly="True" SortExpression="isbn" />
                <asp:BoundField DataField="title" HeaderText="タイトル" SortExpression="title" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="publish" HeaderText="publish" SortExpression="publish" />
                <asp:TemplateField HeaderText="出版日" SortExpression="published">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("published") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="txtPublished" runat="server" Text='<%# Bind("published") %>'></asp:TextBox>
                        <asp:CompareValidator ID="cmpPublished" runat="server" ErrorMessage="Must be date time format." ControlToValidate="txtPublished" Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CheckBoxField DataField="cdrom" HeaderText="CD付属" SortExpression="cdrom" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="sds" runat="server" ConnectionString="<%$ ConnectionStrings:SelfAsp %>" DeleteCommand="DELETE FROM [Book] WHERE [isbn] = @isbn" InsertCommand="INSERT INTO [Book] ([isbn], [title], [price], [publish], [published], [cdrom]) VALUES (@isbn, @title, @price, @publish, @published, @cdrom)" SelectCommand="SELECT [isbn], [title], [price], [publish], [published], [cdrom] FROM [Book]" UpdateCommand="UPDATE [Book] SET [title] = @title, [price] = @price, [publish] = @publish, [published] = @published, [cdrom] = @cdrom WHERE [isbn] = @isbn">
            <DeleteParameters>
                <asp:Parameter Name="isbn" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="isbn" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="publish" Type="String" />
                <asp:Parameter DbType="Date" Name="published" />
                <asp:Parameter Name="cdrom" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="publish" Type="String" />
                <asp:Parameter DbType="Date" Name="published" />
                <asp:Parameter Name="cdrom" Type="Boolean" />
                <asp:Parameter Name="isbn" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
