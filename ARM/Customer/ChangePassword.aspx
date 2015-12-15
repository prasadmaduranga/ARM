<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="ARM.Customer.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="sidebar-nav" id="sidebar">
                <div class="navbar navbar-default" role="navigation">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <span class="visible-xs navbar-brand"></span>
                    </div>
                    <div class="navbar-collapse collapse sidebar-navbar-collapse">

                        <ul class="nav navbar-nav">
                            <li><a href="#">Change Password</a></li>
                            

                        </ul>

                    </div>
                    <!--/.nav-collapse -->
                </div>
            </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="350px" AutoGenerateRows="False" DefaultMode="Insert" CssClass="table-condensed  table-striped  detailsView" HeaderText="Reset Password">
        <Fields>
            <asp:TemplateField HeaderText="New Password">
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Re-enter Password">
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ValidationGroup="g1"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox2" ControlToCompare="TextBox1" Type="String" Operator="Equal" ErrorMessage="*Password mismatch" ForeColor="Red"></asp:CompareValidator>
                </InsertItemTemplate>
            </asp:TemplateField>
        </Fields>
        <FooterTemplate>
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Reset</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Cancel</asp:LinkButton>
                    </td>
                  
                </tr>
               
            </table>
        </FooterTemplate>
    </asp:DetailsView>
</asp:Content>
