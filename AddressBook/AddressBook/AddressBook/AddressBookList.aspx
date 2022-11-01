<%@ Page Title="" Language="C#" MasterPageFile="~/AddressBookMainPage.Master" AutoEventWireup="true" CodeBehind="AddressBookList.aspx.cs" Inherits="AddressBook.AddressBook.AddressBookList" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheet/Contactlist.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div>
            <div class="add-bttn">
                <asp:Button ID="Button1" CssClass="btn btn-group-lg add-bttn" runat="server" Text="Add Contact" OnClick="Button1_Click" />
            </div>
            <div>
                <div>
                    <asp:GridView runat="server" ID="GridViewdata" AutoGenerateColumns="False" DataKeyNames="Id" OnRowCancelingEdit="GridViewdata_RowCancelingEdit" OnRowDeleting="GridViewdata_RowDeleting" OnRowEditing="GridViewdata_RowEditing" OnRowUpdating="GridViewdata_RowUpdating" CellPadding="20" CellSpacing="20" HorizontalAlign="Center">
                        <HeaderStyle CssClass="headerstyle" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Contact ID" ReadOnly="true" />
                            <asp:TemplateField HeaderText="First Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" CssClass="box-size" runat="server" Text='<%# Eval("FirstName") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Last Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("LastName") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" CssClass="box-size" runat="server" Text='<%# Eval("LastName") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Address">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" CssClass="box-size" runat="server" Text='<%# Eval("Address") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="City">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" CssClass="box-size" runat="server" Text='<%# Eval("City") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="State">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("State") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:DropDownList Style="width: 170px" Text='<%# Eval("State") %>' ID="State" runat="server">
                                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                                        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                                        <asp:ListItem>Assam</asp:ListItem>
                                        <asp:ListItem>Bihar</asp:ListItem>
                                        <asp:ListItem>Chandigarh</asp:ListItem>
                                        <asp:ListItem>Chattisgarh</asp:ListItem>
                                        <asp:ListItem>Dadra and Nagar Haveli</asp:ListItem>
                                        <asp:ListItem>Daman and Diu</asp:ListItem>
                                        <asp:ListItem>Delhi</asp:ListItem>
                                        <asp:ListItem>Goa</asp:ListItem>
                                        <asp:ListItem>Gujarat</asp:ListItem>
                                        <asp:ListItem>Haryana</asp:ListItem>
                                        <asp:ListItem>Himachal Pradesh</asp:ListItem>
                                        <asp:ListItem>Jammu and Kashmir</asp:ListItem>
                                        <asp:ListItem>Jharkhand</asp:ListItem>
                                        <asp:ListItem>Karnataka</asp:ListItem>
                                        <asp:ListItem>Kerala</asp:ListItem>
                                        <asp:ListItem>Lakshadweep</asp:ListItem>
                                        <asp:ListItem>Madhya Pradesh</asp:ListItem>
                                        <asp:ListItem>Maharashtra</asp:ListItem>
                                        <asp:ListItem>Manipur</asp:ListItem>
                                        <asp:ListItem>Meghalaya</asp:ListItem>
                                        <asp:ListItem>Mizoram</asp:ListItem>
                                        <asp:ListItem>Nagaland</asp:ListItem>
                                        <asp:ListItem>Orissa</asp:ListItem>
                                        <asp:ListItem>Pondicherry</asp:ListItem>
                                        <asp:ListItem>Punjab</asp:ListItem>
                                        <asp:ListItem>Rajasthan</asp:ListItem>
                                        <asp:ListItem>Sikkim</asp:ListItem>
                                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                                        <asp:ListItem>Tripura</asp:ListItem>
                                        <asp:ListItem>Uttarakhand</asp:ListItem>
                                        <asp:ListItem>Uttaranchal</asp:ListItem>
                                        <asp:ListItem>Uttar Pradesh</asp:ListItem>
                                        <asp:ListItem>West Bengal</asp:ListItem>
                                    </asp:DropDownList>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Pincode">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Pincode") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" CssClass="box-size" runat="server" Text='<%# Eval("Pincode") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Phone">
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" CssClass="box-size" runat="server" Text='<%# Eval("Phone") %>'></asp:TextBox>
                                </EditItemTemplate>

                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email">
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox8" Style="width: 160px" runat="server" Text='<%# Eval("Email") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowEditButton="True" ShowDeleteButton="true" ButtonType="Image" CancelImageUrl="~/Img/Cancel.png" DeleteImageUrl="~/Img/Delete.png" EditImageUrl="~/Img/Edit.png" UpdateImageUrl="~/Img/Update.png" HeaderText="Operations">
                                <ControlStyle Width="30px" />
                            </asp:CommandField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <div>
                <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="end-container">
            <div>
                <asp:Button ID="Button2" runat="server" CssClass="export-bttn btn btn-group-lg" Text="Export" OnClick="Button2_Click" />
            </div>
        </div>

    </div>

</asp:Content>
