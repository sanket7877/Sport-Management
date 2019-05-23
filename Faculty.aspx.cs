using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS
{
    public partial class Faculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            qlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\C# example\SMS\SMS\App_Data\Sport.mdf;Integrated Security=True");

            SqlDataAdapter da;
            DataSet ds = new DataSet();
            StringBuilder htmlTable = new StringBuilder();

            protected void Page_Load(object sender, EventArgs e)
            {
                // uname.Text = Session["uname"].ToString();

                if (Session["uname"] != null)
                {
                    uname.Text = Session["uname"].ToString();
                }
                else
                {
                    Response.Redirect("flogin.aspx");
                }


                DropDownList1.Visible = false;
                WinTextBox1.Visible = false;

                WinTextBox2.Visible = false;

                SubmitWinner.Visible = false;
                WinTextBox3.Visible = false;

            }

            protected void LogOut(object sender, EventArgs e)
            {
                Session.RemoveAll();
                Response.Redirect("Home.aspx");
            }

            protected void CreateGame_OnClick(object sender, EventArgs e)
            {


            }

            protected void AddGame_onClick(object sender, EventArgs e)
            {
                Response.Write("Game is created");
                DateTime myDate;
                if (!DateTime.TryParse(gameDateTextBox.Text, out myDate))
                    myDate = DateTime.MaxValue;


                string creagtegame;

                //   date = gameDateTextBox.Text.Trim();
                DateTime date = Convert.ToDateTime(gameDateTextBox.Text);
                Response.Write(date);
                creagtegame = AddTextBox.Text;
                string desc = descriptionTextBox.Text;
                string win1, win2, win3;
                win2 = "No winner"; win1 = "No winner"; win3 = "No  winner";
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = "insert into games values('" + creagtegame + "','" + desc + "','" + date + "','" + win1 + "','" + win2 + "','" + win3 + "')";
                cmd.ExecuteNonQuery();
                Response.Write("New Game Created");


                con.Close();





            }

            protected void Button2_Click(object sender, EventArgs e)
            {

                SqlCommand cmd = new SqlCommand("select name,description,date from games", con);

                con.Open();
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);

                cmd.ExecuteNonQuery();
                con.Close();

                htmlTable.Append("<table border='1'>");
                htmlTable.Append("<tr style='background-color:green; color: black;'><th>Name</th><th>Game Name</th><th>Date</th></tr>");

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


                            htmlTable.Append("</tr>");
                        }
                        htmlTable.Append("</table>");
                        DBDataPlaceHolder.Controls.Add(new Literal { Text = htmlTable.ToString() });
                    }
                    else
                    {
                        htmlTable.Append("<tr>");
                        htmlTable.Append("<td align='center' colspan='4'>There is no Record.</td>");
                        htmlTable.Append("</tr>");
                    }

                }
            }

            protected void viewStudents_Click(object sender, EventArgs e)
            {
                SqlCommand cmd = new SqlCommand("select name,eno,email,mno,sem,dept from student", con);
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                htmlTable.Append("<table border='1'>");
                htmlTable.Append("<tr style='background-color:red; color: white;'><th>Name</th><th>E No.</th><th>Email</th><th>Mobile NO</th><th>Semester</th><th>Department</th></tr>");

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

            protected void WinnerSubmit_onClick(object sender, EventArgs e)
            {


                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = System.Data.CommandType.Text;

                cmd = new SqlCommand("UPDATE games  set win1=@win1,win2=@win2,win3=@win3 where name=@gname", con);
                cmd.Parameters.AddWithValue("@win1", WinTextBox1.Text);
                cmd.Parameters.AddWithValue("@win2", WinTextBox2.Text);
                cmd.Parameters.AddWithValue("@win3", WinTextBox3.Text);
                cmd.Parameters.AddWithValue("@gname", DropDownList1.Text);


                cmd.ExecuteNonQuery();
                Response.Write("New Game Created");


                con.Close();

            }

            protected void EnterWinner_OnClick(object sender, EventArgs e)
            {

                DropDownList1.Visible = true;
                DropDownList1.DataBind();

                WinTextBox1.Visible = true;

                WinTextBox2.Visible = true;

                WinTextBox3.Visible = true;
                SubmitWinner.Visible = true;
            }

            protected void ViewWinner_onClick(object sender, EventArgs e)
            {
                SqlCommand cmd = new SqlCommand("select name,win1,win2,win3 from games", con);
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                htmlTable.Append("<table border='1'>");
                htmlTable.Append("<tr style='background-color:red; color: white;'><th> Game Name</th><th>1st Winner</th><th>2nd Winner</th><th>3rd Winner</th></tr>");

                if (!object.Equals(ds.Tables[0], null))
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {

                        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                        {
                            htmlTable.Append("<tr style='color:blue;'>");
                            htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["name"] + "</td>");
                            htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["win1"] + "</td>");
                            htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["win2"] + "</td>");
                            htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["win3"] + "</td>");


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
        }
    }
    }
}