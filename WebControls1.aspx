<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="WebControls1.aspx.cs" Inherits="AspNetApplication.WebControls1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Literal ID="literal1" runat="server"></asp:Literal>
    <section class="card shadow mx-5">
        <div class="card-header card-title text-center">Application Form</div>
        <div class="card-body">

            <%--Username --%>
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label ID="lbl1" runat="server" Text="Name : "></asp:Label>

                </div>
                <div class="col-5 text-left">
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <%--Password --%>
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label ID="lbl2" runat="server" Text="Password : "></asp:Label>
                </div>
                <div class="col-5 text-left">
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <%--Address --%>
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label ID="lbl3" runat="server" Text="Address : "></asp:Label>
                </div>
                <div class="col-5 text-left">
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <%--Gender --%>
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label ID="lbl4" runat="server" Text="Gender : "></asp:Label>
                </div>
                <div class="col-5 text-left">
                    <asp:RadioButton ID="Radio1" runat="server" GroupName="Gender" Text="Male" />
                    <asp:RadioButton ID="Radio2" runat="server" GroupName="Gender" Text="Female" />
                </div>
            </div>

            <%--Location --%>
            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label ID="lbl5" runat="server" Text="Location : "></asp:Label>
                </div>
                <div class="col-5 text-left">
                    <asp:DropDownList ID="DDLocation" runat="server" CssClass="form-control">
                        <asp:ListItem Text="---Select---" Value="0" Selected="true" />
                        <asp:ListItem Text="Bengaluru" Value="Bengaluru" />
                        <asp:ListItem Text="Mysuru" Value="Mysuru" />
                        <asp:ListItem Text="Hyderabad" Value="0" />
                        <asp:ListItem Text="Delhi" Value="0" />
                    </asp:DropDownList>
                </div>
            </div>
                
            <%--Interests/Hobbies --%>

            <div class="form-group form-row">
                <div class="col-3 offset-2 text-right">
                    <asp:Label ID="Label1" runat="server" Text="Interests : "></asp:Label>
                </div>
                <div class="col-5  text-left">
                    <asp:CheckBoxList ID="ChkInterests" runat="server" RepeatColumns= "2"
                        RepeatDirection="Horizontal" RepeatLayout="Table"
                        CssClass="table table-sm table-striped">
                    </asp:CheckBoxList>
                </div>
            </div>

             <div class="form-row">
                <div class="col-4 offset-4 btn-group-lg text-center">
                    <asp:Button id="btnSave" runat="server" Text="Save"
                        CssClass="btn btn-primary mx-2" OnClick="btnSave_Click" />
                    <asp:Button id="btnCancel" runat="server" Text="Cancel"
                        CssClass="btn btn-secondary mx-2" />
                </div>
            </div>
        </div>
    </section>
</asp:Content>
