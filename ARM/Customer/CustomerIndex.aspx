<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerIndex.aspx.cs" Inherits="ARM.Customer.CustomerIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=ARMEntities" DefaultContainerName="ARMEntities" EnableFlattening="False" EntitySetName="Accounts">
        </asp:EntityDataSource>
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="accountNumber" DataSourceID="EntityDataSource2">
            <Columns>
                <asp:BoundField DataField="accountNumber" HeaderText="accountNumber" ReadOnly="True" SortExpression="accountNumber" />
                <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                <asp:BoundField DataField="VATRegNo" HeaderText="VATRegNo" SortExpression="VATRegNo" />
                <asp:BoundField DataField="lastReading" HeaderText="lastReading" SortExpression="lastReading" />
                <asp:BoundField DataField="currentMonthReading" HeaderText="currentMonthReading" SortExpression="currentMonthReading" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
