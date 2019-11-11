<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="RepeaterExample1.aspx.cs" Inherits="AspNetApplication.RepeaterExample1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            -ms-flex-preferred-size: 0;
            flex-basis: 0;
            -ms-flex-positive: 1;
            flex-grow: 1;
            max-width: 100%;
            left: 19px;
            top: 177px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="container" >
        <div class="h2 bg-success text-white">Repeaters Example 1</div>
        <div class="row" >
            <div class="Col">
                <asp:Repeater ID="repeater1" runat="server">
                <HeaderTemplate>
                    <h4 class="bg-dark text-light">Customer List</h4>
                    <div class="row">               </HeaderTemplate>
                    <FooterTemplate>
                        </div>
 
                        <h6 class="bg-info text-dark text-light p-1">End of list</h6>
                    </FooterTemplate>
                    <ItemTemplate>
                        <div class="col-3 border m-0 p-2">
                        The customer<%#DataBinder.Eval(Container.DataItem,"CompanyName") %>,
                        represented by<%#DataBinder.Eval(Container.DataItem,"ContactName") %>,
                        is located in <%#DataBinder.Eval(Container,"DataItem.City") %>,
                        <%#DataBinder.Eval(Container,"DataItem.Country") %>.
                             <br />
                            <br />
                        For more Details of this customer, click
                        <asp:LinkButton ID="link1" runat="server" 
                            cssclass="btn btn-outline-primary btn-sm w-100" Text="View Details"
                            CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId") %>'
                            />
                            </div>
                    </ItemTemplate>
                  
                    <AlternatingItemTemplate>
                        <div class=" col-3 bg-light" >
                             The customer<%#DataBinder.Eval(Container.DataItem,"CompanyName") %>,
                        represented by<%#DataBinder.Eval(Container.DataItem,"ContactName") %>,
                        is located in <%#DataBinder.Eval(Container,"DataItem.City") %>,
                        <%#DataBinder.Eval(Container,"DataItem.Country") %>.
                            <br />
                            <br />
                        For more Details of this customer, click
                            
                        <asp:LinkButton ID="link1" runat="server" 
                            cssclass="btn btn-outline-primary btn-sm w-100" Text="View Details"
                            CommandName="View"
                            CommandArgument='<%#DataBinder.Eval(Container.DataItem,"CustomerId") %>'
                            />
                        </div>
                    </AlternatingItemTemplate>
                    </asp:Repeater>
            </div>
        </div>
    </section>


</asp:Content>
