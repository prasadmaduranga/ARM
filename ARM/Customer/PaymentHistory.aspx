<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="PaymentHistory.aspx.cs" Inherits="ARM.Customer.WebForm7" %>
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
                            <li><a href="../Customer/PayOnine.aspx">Pay Now</a></li>
                            <li><a href="#">Payment History</a></li>

                        </ul>

                    </div>
                    <!--/.nav-collapse -->
                </div>
            </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ARMConnectionString %>" SelectCommand="spGetPaymentHistoryNew" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter Name="userName" SessionField="userName" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  CssClass="gridviewsmall  table table-striped table-hover  table-condensed  gridViewCustom" Width="800px">
        <Columns>
            <asp:BoundField DataField="date" HeaderText="Paymnet Date" SortExpression="date" />
            <asp:BoundField DataField="bank" HeaderText="Bank" SortExpression="bank" />
            <asp:BoundField DataField="creditCardNo" HeaderText="Credit Card No." SortExpression="creditCardNo" />
            <asp:BoundField DataField="expiryDate" HeaderText="Expiry Date" SortExpression="expiryDate" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
        </Columns>
    </asp:GridView>
</asp:Content>
