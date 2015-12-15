<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="ARM.Customer.WebForm2" %>
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
                            <li><a href="#">View Profile</a></li>
                            <li><a href="../Customer/EditProfile.aspx">Edit Profile</a></li>

                        </ul>

                    </div>
                    <!--/.nav-collapse -->
                </div>
            </div>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <p>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ARMConnectionString %>" SelectCommand="SELECT [userName], [name], [address], [homeTel], [mobile], [NIC], [email], [tarrifCategory], [region], [imageURL] FROM [customer] WHERE ([userName] = @userName)">
              <SelectParameters>
                  <asp:SessionParameter Name="userName" SessionField="userName" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
          <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False"  Height="50px" Width="125px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" CssClass="table-condensed  table-striped  detailsView gridview" ForeColor="#0179AC" HeaderText="Profile" HorizontalAlign="Center" DataKeyNames="userName" DataSourceID="SqlDataSource1" OnPageIndexChanging="DetailsView1_PageIndexChanging">
              <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <Fields>
                 <asp:TemplateField HeaderText="Profile Picture" SortExpression="imageURL">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("imageURL") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <InsertItemTemplate>
                         <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("imageURL") %>'></asp:TextBox>
                     </InsertItemTemplate>
                     <ItemTemplate>
                         <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("imageURL") %>' Height="100px" Width="100px" />
                     </ItemTemplate>
                 </asp:TemplateField>
                <asp:BoundField DataField="name" HeaderText="Full Name" SortExpression="name" />
                <asp:BoundField DataField="userName" HeaderText="User Name" ReadOnly="True" SortExpression="userName" />
                <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
           <asp:BoundField DataField="homeTel" HeaderText="Telephone Number" SortExpression="homeTel" />
                <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
                <asp:BoundField DataField="NIC" HeaderText="NIC Number" SortExpression="NIC" />
                <asp:BoundField DataField="tarrifCategory" HeaderText="Tarrif Category" SortExpression="tarrifCategory" />
                 <asp:BoundField DataField="region" HeaderText="Region" />
            </Fields>
              <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
              <HeaderStyle  Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        </asp:DetailsView>

    </p>
    <p>
          &nbsp;</p>
    <p>
          &nbsp;</p>
    <p>
        <br />

    </p>

</asp:Content>
