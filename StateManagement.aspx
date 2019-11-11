<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="StateManagement.aspx.cs" Inherits="AspNetApplication.StateManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container">
        <h2 class="bg-success text-white text-center">State Management</h2>
        <hr/>
        Application:=
        <asp:Label ID="lblApplication" runat="server" />

         Session Counter :=<asp:Label ID="Label2" runat="server" />

 
        <asp:Label ID="lblSession" runat="server" Font-Bold="true"/>
        <br />
        <br />

 

        <div style="border:1px solid black">
            <div style="background-color:deepskyblue;color:white;font-weight:bold;padding:2px;width:100%;border-bottom:1px solid black">
                Writing with cookies
            </div>
            <div style="padding:10px;">
                <asp:Label ID="lblName" runat="server" Text="Cookie Name:" Width="150px" />
                <asp:TextBox ID="txtname" runat="server" BorderColor="Wheat" BorderStyle="Dotted" BorderWidth="2px" />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Cookie Name:" Width="150px" />
                <asp:TextBox ID="txtValue" runat="server" BorderColor="Wheat" BorderStyle="Dotted" BorderWidth="2px" />
                <br />
                <asp:Button ID="btnStore" runat="server" Text="Store cookies" BackColor="YellowGreen" ForeColor="Red" Font-Bold="true" BorderColor="Blue" BorderStyle="Groove"
                    BorderWidth="1px" OnClick="btnStore_Click" />
                <asp:Button ID="btnretrive" runat="server" OnClick="btnRetrieve_Click" Text="Retrive cookies" />
                <br />
                <br />
                <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
            </div>
        </div>

 

    </section>
</asp:Content>
