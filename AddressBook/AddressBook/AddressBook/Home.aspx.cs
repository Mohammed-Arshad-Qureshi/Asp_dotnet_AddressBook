using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AddressBook.AddressBook
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string connection()
        {
            string connectionstring = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            return connectionstring;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(connection());
                using (con)
                {
                    con.Open();
                    string state = State.SelectedValue.ToString();
                    SqlCommand cmd = new SqlCommand("AddContact");
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@FirstName", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@LastName", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@Address", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@City", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@State", state);
                    cmd.Parameters.AddWithValue("@Pincode", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@Phone", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@Email", TextBox8.Text);
                    cmd.Parameters.Add("@default",SqlDbType.Int,0);
                    cmd.Parameters["@default"].Direction = ParameterDirection.Output;
                    if (state != "------- Select -------")
                    {
                        cmd.ExecuteNonQuery();
                        int message = (int)cmd.Parameters["@default"].Value;
                        if (message == 1)
                        {
                            Label9.Text = "First Name Already Exists";
                            Label9.ForeColor = System.Drawing.Color.Red;
                        }
                        else if (message == 2)
                        {
                            Label9.Text = "Email Already Exists";
                            Label9.ForeColor = System.Drawing.Color.Red;
                        }
                        else
                        {
                            Label9.Text = "Contact Added Successfully";
                            Label9.ForeColor = System.Drawing.Color.Green;
                            Response.Redirect("AddressBookList.aspx");
                        }
                    }
                    else
                    {
                        Label9.Text = "Select the State";
                        Label9.ForeColor = System.Drawing.Color.Red;

                    }
                }

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddressBookList.aspx");
        }
    }
}

//<div class="container">
//        <div class="sub-container">

//            <div class="heading-container">
//                <div>
//                    <h3>CONTACT FORM</h3>
//                </div>
//            </div>
//            <div class="field-container">
//                <div>
//                    <asp:Label ID="Label1" runat="server" Text="FirstName"></asp:Label>
//                    <asp:TextBox ID="TextBox1" CssClass="input-field" runat="server"></asp:TextBox>
//                </div>
//                <div>
//                    <asp:Label ID="Label2" runat="server" Text="LastName"></asp:Label>
//                    <asp:TextBox ID="TextBox2" CssClass="input-field" runat="server"></asp:TextBox>
//                </div>
//            </div>


//            <div class="field-container">
//                <div>
//                    <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
//                    <asp:TextBox ID="TextBox3" CssClass="input-field" runat="server"></asp:TextBox>
//                </div>
//                <div>
//                    <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
//                    <asp:TextBox ID="TextBox4" CssClass="input-field" runat="server"></asp:TextBox>
//                </div>
//            </div>

//            <div class="field-container">
//                <div>
//                    <asp:Label ID="Label5" runat="server" Text="State"></asp:Label>
//                    <asp:DropDownList CssClass="input-field" ID="State" runat="server">
//                        <asp:ListItem>------- Select -------</asp:ListItem>
//                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
//                        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
//                        <asp:ListItem>Assam</asp:ListItem>
//                        <asp:ListItem>Bihar</asp:ListItem>
//                        <asp:ListItem>Chandigarh</asp:ListItem>
//                        <asp:ListItem>Chattisgarh</asp:ListItem>
//                        <asp:ListItem>Daman and Diu</asp:ListItem>
//                        <asp:ListItem>Delhi</asp:ListItem>
//                        <asp:ListItem>Goa</asp:ListItem>
//                        <asp:ListItem>Gujarat</asp:ListItem>
//                        <asp:ListItem>Haryana</asp:ListItem>
//                        <asp:ListItem>Himachal Pradesh</asp:ListItem>
//                        <asp:ListItem>Jammu and Kashmir</asp:ListItem>
//                        <asp:ListItem>Jharkhand</asp:ListItem>
//                        <asp:ListItem>Karnataka</asp:ListItem>
//                        <asp:ListItem>Kerala</asp:ListItem>
//                        <asp:ListItem>Lakshadweep</asp:ListItem>
//                        <asp:ListItem>Madhya Pradesh</asp:ListItem>
//                        <asp:ListItem>Maharashtra</asp:ListItem>
//                        <asp:ListItem>Manipur</asp:ListItem>
//                        <asp:ListItem>Meghalaya</asp:ListItem>
//                        <asp:ListItem>Mizoram</asp:ListItem>
//                        <asp:ListItem>Nagaland</asp:ListItem>
//                        <asp:ListItem>Orissa</asp:ListItem>
//                        <asp:ListItem>Pondicherry</asp:ListItem>
//                        <asp:ListItem>Punjab</asp:ListItem>
//                        <asp:ListItem>Rajasthan</asp:ListItem>
//                        <asp:ListItem>Sikkim</asp:ListItem>
//                        <asp:ListItem>Tamil Nadu</asp:ListItem>
//                        <asp:ListItem>Tripura</asp:ListItem>
//                        <asp:ListItem>Uttarakhand</asp:ListItem>
//                        <asp:ListItem>Uttaranchal</asp:ListItem>
//                        <asp:ListItem>Uttar Pradesh</asp:ListItem>
//                        <asp:ListItem>West Bengal</asp:ListItem>
//                    </asp:DropDownList>
//                </div>
//                <div>
//                    <asp:Label ID="Label6" runat="server" Text="Zip"></asp:Label>
//                    <asp:TextBox ID="TextBox6" CssClass="input-field" runat="server"></asp:TextBox>
//                </div>
//            </div>

//            <div class="field-container">
//                <div>
//                    <asp:Label ID="Label7" runat="server" Text="Phone"></asp:Label>
//                    <asp:TextBox ID="TextBox7" CssClass="input-field" runat="server"></asp:TextBox>
//                </div>
//                <div>
//                    <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
//                    <asp:TextBox ID="TextBox8" CssClass="input-field" runat="server"></asp:TextBox>
//                </div>
//            </div>

//            <div class="field-container">
//                <div>
//                    <asp:Button ID="Button1" CssClass="btn btn-group-lg btn-primary" runat="server" Text="Back To List" OnClick="Button1_Click" />
//                </div>
//                <div>
//                    <asp:Button ID="Button2" CssClass="btn btn-group-lg btn-success" runat="server" Text="Submit" OnClick="Button2_Click" />
//                </div>
//            </div>

//            <div class="error-msg">
//                <div>
//                    <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
//                </div>
//            </div>
//        </div>
//    </div>