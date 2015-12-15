<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ARM.Customer.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="homemenu">
            <a class="yellow" href="../Customer/Home.aspx">Home</a>
            <a class="green" href="../Customer/ViewProfile.aspx">Profile</a>
            <a class="pink" href="../Customer/CheckBill.aspx">Check Bill</a>
            <a class="purple" href="../Customer/PAyOnine.aspx" style="margin-left:116px;">Pay Online</a>
            <a class="blue" href="../Customer/ChangePassword.aspx" style="font-size:18pt;">Change Password</a>
        </div>

</asp:Content>
