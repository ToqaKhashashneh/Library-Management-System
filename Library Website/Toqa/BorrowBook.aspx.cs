using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Security.Cryptography;

namespace Library_Website.Toqa
{
    public partial class Borrow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {





        }

        protected void btnBorrow_Click(object sender, EventArgs e)
        {
            //-------------------------------Date Data-------------------------------------------------------



            DateTime selecteStartDate; //store the date as DateTime variable

            string startDate;  // store the date as string

            if (DateTime.TryParse(txtStartDate.Text, out selecteStartDate))
            {
                startDate = selecteStartDate.ToString("yyyy-MM-dd"); // if the input is correct convert it to string
            }
            else
            {
                Response.Write("<script>alert('Invalid Date Input!');</script>");

            }


            DateTime selectedEndDate; //store the date as DateTime variable

            string EndDate;  // store the date as string

            if (DateTime.TryParse(txtStartDate.Text, out selectedEndDate))
            {
                EndDate = selectedEndDate.ToString("yyyy-MM-dd"); // if the input is correct convert it to string
            }
            else
            {
                Response.Write("<script>alert('Invalid Date Input!');</script>");

            }


            //-------------------------------Book Data-------------------------------------------------------


            string BookID = lblBookID.Text;
            string Title = lblTitle.Text;
            string Author = lblAuthor.Text;
            string PublishDate = lblPublishedDate.Text;
            string Category = lblCategory.Text;
            string Language = lblLanguage.Text;


            string file = Server.MapPath("BorrowingData.txt");
            if (!File.Exists(file))
            {
                File.Create(file);
            }

            else {
                string[] lines = File.ReadAllLines(file);
                foreach (string line in lines)
                {
                    string[] parts = line.Split(',');
                    if (parts[8] == "Reserved")
                    {
                        Response.Write("<script>alert('Book is already borrowed!');</script>");
                        break;
                    }

                    else if (parts[0] == "Available")
                    {
                        Response.Write("<script>alert('Borrowing Confirmed!');</script>");

                        string BookDetails = $"{BookID},{Title},{Author},{PublishDate},{Category},{Language} ";

                    }

                }   


            }





        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string Search = txtSearch.Text;

            string BookID = lblBookID.Text;
            string Title = lblTitle.Text;
            string Author = lblAuthor.Text;
            string PublishDate = lblPublishedDate.Text;
            string Category = lblCategory.Text;
            string Language = lblLanguage.Text;

            string file = Server.MapPath("BooksData.txt");

            if (File.Exists(file))
            {
                string[] lines = File.ReadAllLines(file);
                foreach (string line in lines)
                {
                    string[] parts = line.Split(',');
                    if (parts[0] == Search)
                    {
                        lblBookID.Text = parts[0];
                        lblTitle.Text = parts[1];
                        lblAuthor.Text = parts[2];
                        lblPublishedDate.Text = parts[3];
                        lblCategory.Text = parts[4];
                        lblLanguage.Text = parts[5];
                        imgBook.ImageUrl = parts[9];

                    }
                }
            }

            else
            {
                searchresult.Text = "Book not found!";
                searchresult.Visible = true;

                lblBookID.Text = "";
                lblTitle.Text = "";
                lblAuthor.Text = "";
                lblPublishedDate.Text = "";
                lblCategory.Text = "";
                lblLanguage.Text = "";
                imgBook.ImageUrl = "";


            }



        }

    }
}