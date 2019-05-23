using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS
{
    public partial class student : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\C# example\SMS\SMS\App_Data\Sport.mdf;Integrated Security=True");

        SqlDataAdapter da;
        DataSet ds = new DataSet();
        StringBuilder htmlTable = new StringBuilder();
        public static string name;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((!IsPostBack))
            {

                if (Session["uname"] != null)
                {
                    label1.Text = Session["uname"].ToString();

                    name = label1.Text;
                }
                else
                {
                    Response.Redirect("slogin.aspx");
                }
            }

        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Home.aspx");
        }

        protected void RegisterGame_Onclick(object sender, EventArgs e)
        {
            Response.Write(name);
            //  string game=   DropDownList1.Text;
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;

            cmd = new SqlCommand("UPDATE student  set game=@game where email=@name", con);

            cmd.Parameters.AddWithValue("@game", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@name", name);


            cmd.ExecuteNonQuery();
            Response.Write("New Game Created");


            con.Close();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select game from student", con);
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            htmlTable.Append("<table border='1'>");
            htmlTable.Append("<tr style='background-color:pink; color:blue;'><th> Game Name</th></tr>");

            if (!object.Equals(ds.Tables[0], null))
            {
                if (ds.Tables[0].Rows.Count > 0)
                {

                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        htmlTable.Append("<tr style='color:blue;'>");
                        htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["game"] + "</td>");
                        htmlTable.Append("</tr>");
                    }
                    htmlTable.Append("</table>");
                    DBDataPlaceHolder1.Controls.Add(new Literal { Text = htmlTable.ToString() });
                }
                else
                {
                    htmlTable.Append("<tr>");
                    htmlTable.Append("<td align='center' colspan='4'>There is no Record.</td>");
                    htmlTable.Append("</tr>");
                }

            }
        }

    }
}