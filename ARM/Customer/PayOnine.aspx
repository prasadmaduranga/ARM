<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="PayOnine.aspx.cs" Inherits="ARM.Customer.WebForm6" %>
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
                            <li><a href="#">Pay Now</a></li>
                            <li><a href="../Customer/PaymentHistory.aspx">Payment History</a></li>
                            
                        </ul>

                    </div>
                    <!--/.nav-collapse -->
                </div>
            </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="600px" DefaultMode="Insert" AutoGenerateRows="False" CssClass="table-condensed  table-striped  detailsView" HeaderText="PAY ONLINE" OnPageIndexChanging="DetailsView1_PageIndexChanging">
        <Fields>
            <asp:TemplateField HeaderText="Account Number">
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="accountNumber" DataValueField="accountNumber">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ARMConnectionString %>" SelectCommand="SELECT [accountNumber], [userName] FROM [Account] WHERE ([userName] = @userName)">
                        <SelectParameters>
                            <asp:SessionParameter Name="userName" SessionField="userName" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Amount">
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Bank">
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Selected="True">BOC</asp:ListItem>
                        <asp:ListItem>Peoples Bank</asp:ListItem>
                        <asp:ListItem>Sampath Bank</asp:ListItem>
                        <asp:ListItem>HNB</asp:ListItem>
                        <asp:ListItem>Commercial Bank</asp:ListItem>
                        <asp:ListItem>Pan Asia Bank </asp:ListItem>
                        <asp:ListItem>Standar Charted Bank</asp:ListItem>
                        <asp:ListItem>HSBC</asp:ListItem>
                    </asp:DropDownList>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Credit Card No.">
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Expiry Date">
                <InsertItemTemplate>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Inedex Code">
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Number" ValidationGroup="g1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Required" ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
            </asp:TemplateField>
        </Fields>
        <FooterTemplate>
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" ValidationGroup="g1">Pay Now</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton5" runat="server" CausesValidation="False" OnClick="LinkButton5_Click">Cancel </asp:LinkButton>
                    </td>
                   
                </tr>
              
            </table>
        </FooterTemplate>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
