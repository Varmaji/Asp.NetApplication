<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="FirstPage.aspx.cs" Inherits="AspNetApplication.FirstPage" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
    <script runat="server">

    </script>
</head>
<body>
    <h2>Wewlcome to ASP.Net application(HTML based)</h2>
    <form runat="server">
        <%-- <label for="username">User name :</label>
        <input type="text" name="username" />
        <br />
        <label for="password">Password :</label>
        <input type="password" name="password" />
        <br />
        <button type="button">Submit</button>
        --%>
        <asp:Label ID="lbl1" runat="server" Text="User name:" />
        <asp:TextBox ID="txt1" runat="server" />
        <br />
        <asp:Label ID="lbl2" runat="server" Text="Password:" />
        <asp:TextBox ID="txt2" runat="server" />
        <br />
        <asp:Button ID="btn1" runat="server" Text="Submit" OnClick="btn1_Click" />
    </form>
</body>
</html>
