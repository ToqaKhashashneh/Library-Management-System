using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Library_Website.Bilal
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                LoadProfileImage();
            }

            string filePath = Server.MapPath("~/Farah/UserInfo.txt");
            if (File.Exists(filePath))
            {
                string folderPath = Server.MapPath("Uploads.txt");
                string[] content = File.ReadAllLines(filePath);
                string fileLoged = Server.MapPath("~/Farah/LoginData.txt");
                string Email = File.ReadAllText(fileLoged);

                for (int i = 0; i < content.Length; i++)
                {
                    string[] user = content[i].Split(',');



                    if (user[2].Trim() == Email.Trim())
                    {

                        F_Name.Text = user[0];
                        L_Name.Text = user[1];
                        e_Email.Text = user[2];
                        P_Pass.Text = user[3];

                        FullNameLabel.Text = user[0] + " " + user[1];
                        EmailLabel.Text = user[2];

                        return;
                    }
                }
            }

            ClientScript.RegisterStartupScript(this.GetType(), "loadPassword", "loadPassword();", true);


        }


        protected void Edit_Click(object sender, EventArgs e)
        {
            Response.Redirect("edit_profile.aspx");

        }



        protected void Reset_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reset_Password.aspx?email=" + e_Email.Text);
        }

        protected void edit_Click1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("Room_History.aspx");
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            Response.Redirect("History.aspx");
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (fuProfileImage.HasFile)
            {

                if (!Directory.Exists(uploadFolder))
                {
                    Directory.CreateDirectory(uploadFolder);
                }


                string fileName = Path.GetFileName(fuProfileImage.FileName);
                string savedPath = Path.Combine(uploadFolder, fileName);
                fuProfileImage.SaveAs(savedPath);


                File.WriteAllText(filePath, "~/Uploads/" + fileName);


                imgProfile.ImageUrl = "~/Uploads/" + fileName;
            }
        }

        private void LoadProfileImage()
        {
            if (File.Exists(filePath))
            {
                string savedImagePath = File.ReadAllText(filePath).Trim();
                if (!string.IsNullOrEmpty(savedImagePath) && File.Exists(Server.MapPath(savedImagePath)))
                {
                    imgProfile.ImageUrl = savedImagePath;
                    return;
                }
            }


            imgProfile.ImageUrl = defaultImage;
        }

        private string filePath = HttpContext.Current.Server.MapPath("~/Uploads/ImagePath.txt");
        private string uploadFolder = HttpContext.Current.Server.MapPath("~/Uploads/");
        private string defaultImage = "~/Images/default.png";

    }

}
