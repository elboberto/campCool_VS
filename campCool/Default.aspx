<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="campCool.campCool" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            campCool. Portable, solar cooling for your next trek.<br />
            <br />
            Join our newsletter for more information on our product when it becomes available.<br />
            <asp:TextBox ID="txtEmail" runat="server" onClick="txtEmail_Click" Width="420px">Enter email address</asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Join Our Newsletter" />
        </div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </form>
</body>
</html>
