using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_term_4
{
    public partial class User_profie : System.Web.UI.Page
    {
        public string cnstring = "Data Source=LAPTOP-06KK8M3I;Initial Catalog=master;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            Label6.Text = "About Me:";
            Label1.Text = "First Name: " + Session["firstname"].ToString();
            Label2.Text = "Last Name: " + Session["lastname"].ToString();
            Label3.Text = "email: " + Session["email"].ToString();
            Label4.Text = "Gender: " + Session["gender"].ToString();
            Label5.Text = "Musician: " + Session["musician"].ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String searchKey=TextBox1.Text;
            if (searchKey.Length == 0)
            {
                Label6.Text = "Search key is empty, please try again with some value";
                Label1.Text = ""; Label2.Text = ""; Label3.Text = ""; Label4.Text = ""; Label5.Text = "";
            }
            else
            {
                SqlConnection con = new SqlConnection(cnstring);
                con.Open();//Add data to the sql database
                string selectQuery = "Select * from reg where email='" + searchKey + "'  OR FirstName='" + searchKey + "' OR LastName='" + searchKey + "' OR musician='" + searchKey + "';";
                SqlCommand cmd = new SqlCommand(selectQuery, con);
                SqlDataReader r = cmd.ExecuteReader();
                if (r.Read())
                {
                    Label6.Text = "Search Result:";
                    Label1.Text = "First Name: " + r.GetValue(0).ToString();
                    Label2.Text = "Last Name: " + r.GetValue(1).ToString();
                    Label3.Text = "email: " + r.GetValue(2).ToString();
                    Label4.Text = "Age: " + r.GetValue(7).ToString();
                    Label5.Text = "Gender: " + r.GetValue(8).ToString();



                }
                else
                {
                    Label6.Text = "No records found with search key";
                    Label1.Text = ""; Label2.Text = ""; Label3.Text = ""; Label4.Text = ""; Label5.Text = "";
                }
                con.Close();
            }
            

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Edit.aspx");
        }
    }
}