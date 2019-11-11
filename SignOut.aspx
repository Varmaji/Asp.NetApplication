<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="SignOut.aspx.cs" Inherits="AspNetApplication.SignOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="jumbotron">
        <div class="display-1">You have logged out to
            <asp:Hyperlink Id="link1" runat="server" Text="re-login" 
                NegativeUrl="~/SignInForm.aspx">To access the site</asp:Hyperlink>
        </div>
    </section>
</asp:Content>
