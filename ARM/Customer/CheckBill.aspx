<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="CheckBill.aspx.cs" Inherits="ARM.Customer.WebForm4" %>
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
                            <li><a href="#">Check Bill</a></li>
                            <li><a href="../Customer/ConsumptionHistory.aspx">Consumption History</a></li>

                        </ul>

                    </div>
                    <!--/.nav-collapse -->
                </div>
            </div>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ARMConnectionString %>" SelectCommand="spCheckBill" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter Name="userName" SessionField="userName" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" CssClass=" gridview table table-striped table-hover  table-condensed  " runat="server" Height="50px" Width="450px" AutoGenerateRows="False" DataKeyNames="accountNumber" DataSourceID="SqlDataSource1" HeaderText="Check Bill">
        <Fields>
            <asp:BoundField DataField="accountNumber" HeaderText="Account Number" ReadOnly="True" SortExpression="accountNumber" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            <asp:BoundField DataField="VATRegNo" HeaderText="VAT RegNo." SortExpression="VATRegNo" />
            <asp:BoundField DataField="LastMonthDue" HeaderText="Total Amount Due as Indicated in Last Bill" SortExpression="LastMonthDue" />
            <asp:BoundField DataField="unitsConsumed" HeaderText="Units Consumed" ReadOnly="True" SortExpression="unitsConsumed" />
            <asp:BoundField DataField="domesticCatPrice" HeaderText="Charge for This Month" SortExpression="domesticCatPrice" />
            <asp:BoundField DataField="lastReading" HeaderText="Last Month Meter Reading" SortExpression="lastReading" />
            <asp:BoundField DataField="currentMonthReading" HeaderText="Current Meter Reading" SortExpression="currentMonthReading" />
            <asp:BoundField DataField="totalDue" HeaderText="Total Amount Due" ReadOnly="True" SortExpression="totalDue" />
        </Fields>
    </asp:DetailsView>

</asp:Content>
