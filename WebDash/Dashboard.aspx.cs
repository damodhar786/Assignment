using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDash
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"]!= null)
            {
                dashuserLabel.Text = "User Logged  in  is :  " + Session["username"];
            }else
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void logoutButton_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

        protected void portfolioButton_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("index.html");
        }
    }
}