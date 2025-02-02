using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Library_Website.Farah
{
    public partial class Registation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            string FirstNmae = fName.Text;
            string LastNmae = lName.Text;
            string Email = email.Text;
            string Password = password.Text;
            string ConfirmPassword = confirmPass.Text;

            string UserData = $"{FirstNmae},{LastNmae},{Email},{Password},{ConfirmPassword}";

            string file = Server.MapPath("UserInfo.txt");

            if (FirstNmae == "")
            {
                Response.Write("<script>alert('User Name Is Required!');</script>");

            }
            else
            {
                if (!File.Exists(file))
                {
                    File.Create(file);
                }

                File.AppendAllText(file, UserData + Environment.NewLine);

                if(Password == ConfirmPassword)
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}