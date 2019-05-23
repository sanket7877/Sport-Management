using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMS
{
    public partial class user_form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubmitButton_Click(Object sender,EventArgs e)
        {
            //  userInput.Text = TextBox1.Text;
            if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
            {
                string fn = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                string SaveLocation = Server.MapPath("upload") + "\\" + fn;
                try
                {
                    FileUpload1.PostedFile.SaveAs(SaveLocation);
                    Label2.Text = "The file has been uploaded.";
                }
                catch (Exception ex)
                {
                    Label2.Text = "Error: " + ex.Message;
                }
            }
            else
            {
                Label2.Text = "Please select a file to upload.";
            }
        }
        protected void Calender1_SelectionChanged(Object sender,EventArgs e)
        {
            showDate.Text="Your choosen date is" + Calender1.SelectedDate.ToString("D");
        
        }
        protected void LinkButton1_Click(Object sender,EventArgs e)
        {
            Label2.Text = "Hello Link Button pressed";
        }
        protected void Button_Click(Object sendet,EventArgs e)
        {
            string filePath = "E:\\MyData.txt";
            FileInfo file = new FileInfo(filePath);
            if (file.Exists)
            {
                // Clear Rsponse reference  
                Response.Clear();
                // Add header by specifying file name  
                Response.AddHeader("Content-Disposition", "attachment; filename=" + file.Name);
                // Add header for content length  
                Response.AddHeader("Content-Length", file.Length.ToString());
                // Specify content type  
                Response.ContentType = "text/plain";
                // Clearing flush  
                Response.Flush();
                // Transimiting file  
                Response.TransmitFile(file.FullName);
                Response.End();
            }
            else Label1.Text = "Requested file is not available to download";
        }
    }
}