using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS
{
    public partial class fregistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\C# example\SMS\SMS\App_Data\Sport.mdf;Integrated Security=True");

            protected void Page_Load(object sender, EventArgs e)
            {

            }

            protected void Button1_Click(object sender, EventArgs e)
            {
                if (RefCode.Text == "f1070")
                {
                    con.Open();
                    SqlCommand cmd = con.CreateCommand();
                    cmd.CommandType = System.Data.CommandType.Text;
                    string uname, uemail, udept, upsw;
                    double umno;
                    uname = name.Text; uemail = email.Text; udept = DropDownList1.Text; upsw = psw.Text;

                    umno = Double.Parse(mno.Text);
                    cmd.CommandText = "insert into faculty values('" + uname + "','" + uemail + "','" + udept + "','" + umno + "','" + upsw + "')";
                    cmd.ExecuteNonQuery();
                    //  Response.Write("<h1Registration Successful</h1>");
                    Response.Write("Registration Successful");
                    Response.Redirect("flogin.aspx");

                    con.Close();
                }
                else
                {
                    error.ForeColor = System.Drawing.Color.Red;
                    error.Text = "you can't register ,please ente valid referal Code";

                }
            }
        }
    }
    }
}