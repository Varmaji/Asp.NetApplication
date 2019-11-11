<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="ContactManagement.aspx.cs" Inherits="AspNetApplication.ContactManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:Literal ID="literal1" runat="server"></asp:Literal>
    <section class="card shadow mx-3">
        <div class="card-header card-title text-center">Contact Management</div>
        <div class="card-body">
            <%--FirstName --%>
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label ID="lbl1" runat="server" Text="FirstName : "></asp:Label>
                    
                </div>
                <div class="col-5 text-left">
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="refv1" runat="server"
                                ControlToValidate="txtFirstName" Display="Static"  CssClass=" text-danger" ErrorMessage="FirstName is Required"/>
                     <asp:RegularExpressionValidator ID="reg1" runat="server"
                                ControlToValidate="txtFirstName" Display="Static"  
                                CssClass=" text-danger" ErrorMessage="FirstName is not valid" 
                                 ValidationExpression="^[a-zA-Z]+\s?[a-zA-Z]*\.?[a-zA-Z]*$"/>
                </div>
            </div>
            <%--MiddleName --%>
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label ID="lbl2" runat="server" Text="MiddleName : "></asp:Label>

                </div>
                <div class="col-5 text-left">
                    <asp:TextBox ID="txtMiddleName" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                ControlToValidate="txtMiddleName" Display="Static"  
                                CssClass=" text-danger" ErrorMessage="MiddleName is not valid" 
                                 ValidationExpression="^[a-zA-Z]+\s?[a-zA-Z]*\.?[a-zA-Z]*$"/>
                </div>
            </div>
              <%--LastName --%>
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label ID="lbl3" runat="server" Text="LastName : "></asp:Label>
                   
                </div>
                <div class="col-5 text-left">
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="txtLastName" Display="Static"  CssClass=" text-danger" ErrorMessage="LastName is Required"/>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                ControlToValidate="txtLastName" Display="Static"  
                                CssClass=" text-danger" ErrorMessage="LastName is not valid" 
                                 ValidationExpression="^[a-zA-Z]+\s?[a-zA-Z]*\.?[a-zA-Z]*$"/>
                </div>
            </div>

                <%--Email --%>
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label ID="lbl4" runat="server" Text="Email : "></asp:Label>

                </div>
                <div class="col-5 text-left">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ControlToValidate="txtEmail" Display="Static" Text="*" CssClass=" text-danger" ErrorMessage="Email is Required"/>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                ControlToValidate="txtEmail" Display="Static" 
                                CssClass=" text-danger" ErrorMessage="Invalid Email format" 
                                 ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"/>
                </div>
            </div>
            <%--BirthDate --%>
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label ID="Label1" runat="server" Text="BirthDate : "></asp:Label>

                </div>
                <div class="col-5 text-left">
                    <asp:TextBox ID="txtDate" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ControlToValidate="txtDate" Display="Static" Text="*" CssClass=" text-danger" ErrorMessage="BirthDate is Required"/>
                     <asp:CompareValidator ID="CompareValidator2" runat="server"
                                ControlToValidate="txtDate" Display="Static" Text="*" 
                                CssClass=" text-danger" ErrorMessage="Invalid Date" 
                                Operator="DataTypeCheck" Type="Date"/>
                     <asp:RangeValidator ID="RangeValidator1" runat="server"
                                ControlToValidate="txtDate" Display="Static" 
                                CssClass=" text-danger" ErrorMessage="Age should be less than 18" 
                                Operator="DataTypeCheck" Type="Date" MinimumValue="01/01/2001" MaximumValue="01/01/2020"/>

                      
                </div>
            </div>
                   <%--MobileNumber --%>
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label ID="Label2" runat="server" Text="MobileNumber : "></asp:Label>

                </div>
                <div class="col-5 text-left">
                    <asp:TextBox ID="txtMobileNumber" runat="server" CssClass="form-control" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="txtMobileNumber" Display="Static"  CssClass=" text-danger" ErrorMessage="MobileNumber is Required"/>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
                                ControlToValidate="txtMobileNumber" Display="Static"  
                                CssClass=" text-danger" ErrorMessage="Invalid Mobile Number" 
                                 ValidationExpression="^\+?\d{0,2}\-?\d{4,5}\-?\d{5,6}"/>
                </div>
            </div>

             <%--HomePhone --%>
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label ID="Label3" runat="server" Text="HomePhone : "></asp:Label>

                </div>
                <div class="col-5 text-left">
                    <asp:TextBox ID="txtHomePhone" runat="server" CssClass="form-control"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                ControlToValidate="txtHomePhone" Display="Static"  CssClass=" text-danger" ErrorMessage="HomePhone is Required"/>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server"
                                ControlToValidate="txtHomePhone" Display="Static"  
                                CssClass=" text-danger" ErrorMessage="Invalid Homephone Number" 
                                 ValidationExpression="^\+?\d{0,2}\-?\d{4,5}\-?\d{5,6}"/>
                </div>
            </div>

             <%--WorkPhone --%>
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label ID="Label4" runat="server" Text="WorkPhone : "></asp:Label>

                </div>
                <div class="col-5 text-left">
                    <asp:TextBox ID="txtWorkPhone" runat="server" CssClass="form-control" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                ControlToValidate="txtWorkPhone" Display="Static"  CssClass=" text-danger" ErrorMessage="WorkPhone is Required"/>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"
                                ControlToValidate="txtWorkPhone" Display="Static"  
                                CssClass=" text-danger" ErrorMessage="Invalid Workphone Number" 
                                 ValidationExpression="^\+?\d{0,2}\-?\d{4,5}\-?\d{5,6}"/>
                </div>
            </div>
        </div>

        <div class="row mb-5">
            <div class="col-2 text-center">
                <button class="btn btn-outline-danger">Submit</button>
            </div>
             <div class="col-2 text-center">
                <button class="btn btn-outline-danger">Cancel</button>
            </div>
        </div>
    </section>
</asp:Content>
