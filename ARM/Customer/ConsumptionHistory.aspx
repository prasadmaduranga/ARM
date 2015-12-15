<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="ConsumptionHistory.aspx.cs" Inherits="ARM.Customer.WebForm5" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
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
                            <li><a href="../Customer/CheckBill.aspx">Check Bill</a></li>
                            <li><a href="#">Consumption History</a></li>

                        </ul>

                    </div>
                    <!--/.nav-collapse -->
                </div>
            </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table style="width: 100%;">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="accountNumber,year,month" DataSourceID="SqlDataSource1" CssClass=" gridview table table-striped table-hover  table-condensed  gridViewCustom">
                    <Columns>
                        <asp:BoundField DataField="accountNumber" HeaderText="accountNumber" ReadOnly="True" SortExpression="accountNumber" Visible="False" />
                        <asp:BoundField DataField="year" HeaderText="Year" ReadOnly="True" SortExpression="year" />
                        <asp:BoundField DataField="month" HeaderText="Month" ReadOnly="True" SortExpression="month" />
                        <asp:BoundField DataField="date" HeaderText="Billing Date" SortExpression="date" />
                        <asp:BoundField DataField="amount" HeaderText="Monthly Charge" SortExpression="amount" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ARMConnectionString %>" SelectCommand="spConsumptionHistory" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:SessionParameter Name="userName" SessionField="userName" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>

                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="410px" CssClass="chartsmall" Height="285px">
                    <Series>
                        <asp:Series Name="Series1" IsValueShownAsLabel="true" XValueMember="chartX" YValueMembers="amount"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1" ></asp:ChartArea>
                    </ChartAreas>
                    <Titles>
                        <asp:Title Name="Title1" Text="Consumption During Last 10 Months">
                        </asp:Title>
                    </Titles>
                </asp:Chart>
            </td>
            
        </tr>
       
    </table>
</asp:Content>
