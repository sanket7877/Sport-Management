using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS
{
    public partial class MySport : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\C# example\SMS\SMS\App_Data\Sport.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            string uname, uemail, usem, udept, upsw;
            double ueno, umno;
            uname = name.Text;uemail = email.Text;usem = sem.Text;udept = dept.Text;upsw = psw.Text;
            ueno = Double.Parse(eno.Text);
            umno = Double.Parse(mno.Text);
            cmd.CommandText = "insert into student values('"+uname+"','"+ueno+"','"+uemail+"','"+umno+"','"+usem+"','"+udept+"','"+upsw+"')";
            cmd.ExecuteNonQuery();
            //  Response.Write("<h1Registration Successful</h1>");
            Response.Redirect("login.aspx");
            con.Close();
        }
    }
}