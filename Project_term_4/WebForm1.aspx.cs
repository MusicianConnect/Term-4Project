using System;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Project_term_4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string cnstring = "Data Source=LAPTOP-06KK8M3I;Initial Catalog=master;Integrated Security=True";
        string message1 = "Registration Successful";
        string message2 = "Error connecting to database";
        string title = "Message";
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void reg_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(cnstring);//connection with sql server
            con.Open();
            
                if (con.State == System.Data.ConnectionState.Open)
                    try
                    {
                        string insert = "insert into reg(Firstname,Lastname,email,password,month,date,year,gender,musician)values(@FirstName,@LastName,@email,@password,@month,@date,@year,@gender,@musician)";
                        SqlCommand cmd = new SqlCommand(insert, con);
                        cmd.Parameters.AddWithValue("@Firstname", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@Lastname", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@email", TextBox3.Text);
                        cmd.Parameters.AddWithValue("@password", TextBox4.Text);
                        cmd.Parameters.AddWithValue("@month", DropDownList1.SelectedValue);
                        cmd.Parameters.AddWithValue("date", DropDownList2.SelectedValue);
                        cmd.Parameters.AddWithValue("year", DropDownList3.SelectedValue);
                        cmd.Parameters.AddWithValue("@gender", this.DropDownList4.SelectedValue);
                        cmd.Parameters.AddWithValue("@musician", this.DropDownList5.SelectedValue);
                        cmd.ExecuteNonQuery();
                        MessageBox.Show(message1, title);
                        Response.Redirect("First_Mainpage.aspx");
                        con.Close();
                    }
                    catch (Exception)
                    {
                        MessageBox.Show(message2, title);
                    }
            
           
        }
    }
}