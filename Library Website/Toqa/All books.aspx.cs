using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Website.Toqa
{
    public partial class All_books : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Borrow1_Click(object sender, EventArgs e)
        {
            Response.Redirect("BorrowBook.aspx");

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

            Response.Redirect("Search.aspx");
            String Search = txtSearch.Text;

            string file = Server.MapPath("BooksData.txt");

            if (File.Exists(file))
            {

                string[] lines = File.ReadAllLines(file);

                foreach (string line in lines)
                {
                    string[] parts = line.Split(',');
                    if (parts[0] == Search)
                    {
                        
                    }
                }


            }
            else
            {
                File.Create(file);
            }


        }
    }

}
