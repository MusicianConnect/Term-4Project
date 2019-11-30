using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Project_term_4
{
    public partial class First_Mainpage : System.Web.UI.Page
    {
        public string cnstring = "Data Source=LAPTOP-06KK8M3I;Initial Catalog=master;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string uname1 = this.TextBox1.Text;
            string password1 = this.TextBox2.Text;
            if (uname1 == "Please enter username" && password1 == "Please enter password")
            {
                Response.Redirect("WebForm1.aspx");
            }
            else if(uname1=="" && password1=="")
            {
                Response.Redirect("WebForm1.aspx");
            }          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string uname = this.TextBox1.Text;
            string password = this.TextBox2.Text;
            string message3 = "Please enter valid username and password";
            string title = "message";

            if (uname == "")
            {
                this.TextBox1.Text = "Please enter username";
            }
            else if (password == "")
            {
                this.TextBox2.Text = "Please enter password";

            }
            else
            {
                SqlConnection con = new SqlConnection(cnstring);//connection with sql server
                con.Open();
                try
                {
                    string login = "select * from reg where email='" + uname + "' and password='" + password + "'";
                    SqlCommand cmd = new SqlCommand(login, con);
                    SqlDataReader verify = cmd.ExecuteReader();
                    if (verify.Read())
                    {
                        Response.Redirect("user_profile.aspx");
                    }
                    else
                    {
                        MessageBox.Show(message3, title);
                    }
                    con.Close();
                }
                catch (Exception ex)
                {

                }

            }
        }

    }
}
