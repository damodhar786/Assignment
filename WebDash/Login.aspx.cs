using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace WebDash
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // create table user_login(username varchar(128) not null primary key, password varchar(128) not null,login_time date,islogin bool)
            invalidLabel.Visible = false;
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            string connetionString;
            connetionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=Test;Integrated Security = true";
            SqlConnection con = new SqlConnection(connetionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("select * from userDetails where userName=@userName and password=@password", con);
            cmd.Parameters.AddWithValue("@userName", userText.Text);
            cmd.Parameters.AddWithValue("@password", passText.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["username"] = userText.Text;
                Console.WriteLine("inside the count");
                Response.Redirect("~/Dashboard.aspx", true);
            }
            else
            {
                Response.Write("Invalid Username / Password");
            }
        }
    }
}