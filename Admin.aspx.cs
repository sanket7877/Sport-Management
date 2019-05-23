using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\C# example\SMS\SMS\App_Data\Sport.mdf;Integrated Security=True");

            SqlDataAdapter da;
            DataSet ds = new DataSet();
            StringBuilder htmlTable = new StringBuilder();
            protected void Page_Load(object sender, EventArgs e)
            {
                if (Session["uname"] != null)
                {
                    uname.Text = Session["uname"].ToString();
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }
            }

            protected void LogOut(object sender, EventArgs e)
            {

                Session.RemoveAll();
                Response.Redirect("Home.aspx");

            }

            protected void gameWinner_onClick(object sender, EventArgs e)
            {
                SqlCommand cmd = new SqlCommand("select name,description,date,win1,win2,win3 from games", con);

                con.Open();
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);

                cmd.ExecuteNonQuery();
                con.Close();

                htmlTable.Append("<table border='1'>");
                htmlTable.Append("<tr style='background-color:green; color: black;'><th>Name</th><th>Game Name</th><th>Date</th><th>1St Winner</th><th>2nd Winner</th><th>3rd Winner</th></tr>");

                if (!object.Equals(ds.Tables[0], null))
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {

                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {
                            htmlTable.Append("<tr style='color:red;'>");
                            htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["name"] + "</td>");
                            htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["description"] + "</td>");
                            htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["date"] + "</td>");
                            htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["win1"] + "</td>");
                            htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["win2"] + "</td>");
                            htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["win3"] + "</td>");


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

            protected void Button2_Click(object sender, EventArgs e)
            {

                SqlCommand cmd = new SqlCommand("select name,eno,email,mno,sem,dept,game from student", con);
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                htmlTable.Append("<table border='1'>");
                htmlTable.Append("<tr style='background-color:red; color: white;'><th>Name</th><th>E No.</th><th>Email</th><th>Mobile NO</th><th>Semester</th><th>Department</th><th>Games</th></tr>");

                if (!object.Equals(ds.Tables[0], null))
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {

                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {
                            htmlTable.Append("<tr style='color:blue;'>");
                            htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["name"] + "</td>");
                            htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["eno"] + "</td>");
                            htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["email"] + "</td>");
                            htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["mno"] + "</td>");
                            htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["sem"] + "</td>");
                            htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["dept"] + "</td>");
                            htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["game"] + "</td>");

                            htmlTable.Append("</tr>");
                        }
                        htmlTable.Append("</table>");
                        DBDataPlaceHolder2.Controls.Add(new Literal { Text = htmlTable.ToString() });
                    }
                    else
                    {
                        htmlTable.Append("<tr>");
                        htmlTable.Append("<td align='center' colspan='4'>There is no Record.</td>");
                        htmlTable.Append("</tr>");
                    }

                }
            }



            protected void facultyView_OnClick(object sender, EventArgs e)
            {

                SqlCommand cmd = new SqlCommand("select name,email,dept,mno from faculty", con);
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                htmlTable.Append("<table border='1'>");
                htmlTable.Append("<tr style='background-color:black; color: white;'><th>Name</th><th>Email</th><th>Department</th><th>Mobile NO</th></tr>");

                if (!object.Equals(ds.Tables[0], null))
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {

                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {
                            htmlTable.Append("<tr style='color:blue;'>");
                            htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["name"] + "</td>");
                            htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["email"] + "</td>");
                            htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["dept"] + "</td>");
                            htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["mno"] + "</td>");


                            htmlTable.Append("</tr>");
                        }
                        htmlTable.Append("</table>");
                        DBDataPlaceHolder3.Controls.Add(new Literal { Text = htmlTable.ToString() });
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
}