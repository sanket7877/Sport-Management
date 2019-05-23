using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\C# example\SMS\SMS\App_Data\Sport.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {



            SqlCommand cmd = new SqlCommand("select * from student where email=@username and psw=@word", con);
            cmd.Parameters.AddWithValue("@username", uname.Text);
            cmd.Parameters.AddWithValue("word", psw.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count > 0)
            {

                Session["uname"] = uname.Text;
                Response.Redirect("student.aspx");
                Session.RemoveAll();
            }
            else
            {
                Label3.Text = "Your username and word is incorrect";
                Label3.ForeColor = System.Drawing.Color.Red;

            }

            con.Close();


        }

    }
    }

}