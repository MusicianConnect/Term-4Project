using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_term_4
{
    public partial class Edit : System.Web.UI.Page
    {
        public string cnstring = "Data Source=LAPTOP-06KK8M3I;Initial Catalog=master;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Edit.aspx");
        }

        

    }
  
}