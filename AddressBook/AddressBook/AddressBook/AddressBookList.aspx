<%@ Page Title="" Language="C#" MasterPageFile="~/AddressBookMainPage.Master" AutoEventWireup="true" CodeBehind="AddressBookList.aspx.cs" Inherits="AddressBook.AddressBook.AddressBookList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheet/Contactlist.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div>
            <div class="add-bttn">
                <asp:Button ID="Button1" CssClass="btn btn-lg btn-success" runat="server" Text="Add Contact" OnClick="Button1_Click" />
            </div>
            <div>
                <div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="297px" Width="885px">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                            <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="Pincode" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True">
                                <ControlStyle CssClass="bttnStyle" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnectionString %>" DeleteCommand="DELETE FROM [AddressBookTable] WHERE [Id] = @Id" InsertCommand="INSERT INTO [AddressBookTable] ([FirstName], [LastName], [Address], [City], [State], [Pincode], [Phone], [Email]) VALUES (@FirstName, @LastName, @Address, @City, @State, @Pincode, @Phone, @Email)" SelectCommand="SELECT * FROM [AddressBookTable]" UpdateCommand="UPDATE [AddressBookTable] SET [FirstName] = @FirstName, [LastName] = @LastName, [Address] = @Address, [City] = @City, [State] = @State, [Pincode] = @Pincode, [Phone] = @Phone, [Email] = @Email WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="FirstName" Type="String" />
                            <asp:Parameter Name="LastName" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="City" Type="String" />
                            <asp:Parameter Name="State" Type="String" />
                            <asp:Parameter Name="Pincode" Type="String" />
                            <asp:Parameter Name="Phone" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="FirstName" Type="String" />
                            <asp:Parameter Name="LastName" Type="String" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="City" Type="String" />
                            <asp:Parameter Name="State" Type="String" />
                            <asp:Parameter Name="Pincode" Type="String" />
                            <asp:Parameter Name="Phone" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
