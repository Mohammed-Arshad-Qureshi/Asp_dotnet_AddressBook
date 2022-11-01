<%@ Page Title="" Language="C#" MasterPageFile="~/AddressBookMainPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AddressBook.AddressBook.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheet/header.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="sub-container">

            <div class="heading-container">
                <div>
                    <h3>CONTACT FORM</h3>
                </div>
            </div>

            <div class="main-cont">
                <div class="left-container">
                    <div>
                        <asp:Label ID="Label1" runat="server" Text="FirstName"></asp:Label>
                        <asp:TextBox ID="TextBox1" CssClass="input-field" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                        <asp:TextBox ID="TextBox3" CssClass="input-field" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
                        <asp:DropDownList CssClass="drop-field" ID="State" runat="server">
                            <asp:ListItem>------- Select -------</asp:ListItem>
                            <asp:ListItem>Andhra Pradesh</asp:ListItem>
                            <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                            <asp:ListItem>Assam</asp:ListItem>
                            <asp:ListItem>Bihar</asp:ListItem>
                            <asp:ListItem>Chandigarh</asp:ListItem>
                            <asp:ListItem>Chattisgarh</asp:ListItem>
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
                    </div>
                    <div>
                        <asp:Label ID="Label7" runat="server" Text="Phone"></asp:Label>
                        <asp:TextBox ID="TextBox7" CssClass="input-field" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Button ID="Button1" CssClass="btn btn-group-lg btn-primary list-bttn" runat="server" Text="Back To List" OnClick="Button1_Click" />
                    </div>
                </div>




                <div class="right-container">
                    <div>

                        <asp:Label ID="Label2" runat="server" Text="LastName"></asp:Label>
                        <asp:TextBox ID="TextBox2" CssClass="input-field" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
                        <asp:TextBox ID="TextBox4" CssClass="input-field" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="Label6" runat="server" Text="Zip"></asp:Label>
                        <asp:TextBox ID="TextBox6" CssClass="input-field" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="TextBox8" CssClass="input-field" runat="server"></asp:TextBox>
                    </div>
                    <div >
                        <asp:Button ID="Button2" CssClass="btn btn-group-lg btn-success submit-bttn" runat="server" Text="Submit" OnClick="Button2_Click" />
                    </div>
                </div>
            </div>

            <div class="check-Container">
                <div>
                      <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                </div>
            </div>

          
        </div>
    </div>
</asp:Content>
