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
    public partial class Borrow : System.Web.UI.Page  {





        //protected void Page_Load(object sender, EventArgs e)
        //{



        //    string Search = txtSearch.Text;

        //    string BookID = lblBookID.Text;
        //    string Title = lblTitle.Text;
        //    string Author = lblAuthor.Text;
        //    string PublishDate = lblPublishedDate.Text;
        //    string Category = lblCategory.Text;
        //    string Language = lblLanguage.Text;
        //    string img = imgBook.ImageUrl;

        //    string file = Server.MapPath("BooksData.txt");

        //    if (File.Exists(file))
        //    {
        //        string[] lines = File.ReadAllLines(file);
        //        foreach (string line in lines)
        //        {
        //            if (!string.IsNullOrWhiteSpace(line)) // Skip empty lines
        //            {
        //                string[] parts = line.Split(',');

        //                if (parts.Length > 8 && parts[0].Trim() == Search.Trim())
        //                {
        //                    lblBookID.Text = parts[0];
        //                    lblTitle.Text = parts[1];
        //                    lblAuthor.Text = parts[2];
        //                    lblPublishedDate.Text = parts[3];
        //                    lblCategory.Text = parts[4];
        //                    lblLanguage.Text = parts[5];
        //                    imgBook.ImageUrl = parts[9];
        //                }
        //            }



        //        }


        //    }
        //}



        protected void Page_Load(object sender, EventArgs e)
        {
                       // Retrieve Book ID from Query String
                string bookId = Request.QueryString["bookid"] ?? "1"; ; // Correctly fetch from query string

                //lblMessage.Text = "Book ID received: " + bookId; // Debugging message

                if (!string.IsNullOrEmpty(bookId))
                {
                    LoadBookDetails(bookId);
                }
                else
                {
                    lblMessage.Text = "No book selected.";
                }
            }
        

        private void LoadBookDetails(string bookId)
        {
            //Response.Redirect("BorrowBook.aspx?bookid=1");
            string file = Server.MapPath("BooksData.txt");

            if (File.Exists(file))
            {
                string[] lines = File.ReadAllLines(file);
                foreach (string line in lines)
                {
                    if (!string.IsNullOrWhiteSpace(line)) // Skip empty lines
                    {
                        string[] parts = line.Split(',');

                        if (parts.Length > 8 && parts[0].Trim() == bookId.Trim())
                        {
                            lblBookID.Text = parts[0];
                            lblTitle.Text = parts[1];
                            lblAuthor.Text = parts[2];
                            lblPublishedDate.Text = parts[3];
                            lblCategory.Text = parts[4];
                            lblLanguage.Text = parts[5];
                            imgBook.ImageUrl = parts[9];

                            return; // Exit loop once book is found
                        }
                    }
                }

                lblMessage.Text = "Book not found.";
            }
            else
            {
                lblMessage.Text = "Error: BooksData.txt not found.";
            }
        }










        protected void btnBorrow_Click(object sender, EventArgs e)
        {


            //-------------------------------Book Data-------------------------------------------------------


            string BookID = lblBookID.Text;
            string Title = lblTitle.Text;
            string Author = lblAuthor.Text;
            string PublishDate = lblPublishedDate.Text;
            string Category = lblCategory.Text;
            string Language = lblLanguage.Text;

            string Data = Server.MapPath("BooksData.txt");
            string file = Server.MapPath("BorrowingData.txt");



            if (!File.Exists(file))
            {
                File.Create(file);
            }
            else
            {
                string[] lines = File.ReadAllLines(Data);
                foreach (string line in lines)
                {
                    string[] parts = line.Split(',');
                    if (parts[8] == "Reserved")
                    {
                        Response.Write("<script>alert('Book is already borrowed!');</script>");
                        break;
                    }
                    else if (parts[8] == "Available")
                    {
                        Response.Write("<script>alert('Borrowing request has been send!');</script>");

                        string BookDetails = $"{BookID},{Title},{Author},{PublishDate},{Category},{Language},";

                        File.AppendAllText(file, BookDetails);
                        break;
                    }
                }
            }

            //-------------------------------Date Data-------------------------------------------------------

            DateTime selectedStartDate;
            string startDate;

            if (DateTime.TryParse(txtStartDate.Text, out selectedStartDate))
            {
                startDate = selectedStartDate.ToString("yyyy-MM-dd");
                File.AppendAllText(file, startDate + ",");
            }
            else
            {
                Response.Write("<script>alert('Invalid Start Date Input!');</script>");
            }

            DateTime selectedEndDate;
            string endDate;

            if (DateTime.TryParse(txtEndDate.Text, out selectedEndDate))
            {
                endDate = selectedEndDate.ToString("yyyy-MM-dd");
                File.AppendAllText(file, endDate + ",");
            }
            else
            {
                Response.Write("<script>alert('Invalid End Date Input!');</script>");
            }

            //-------------------------------User Data-------------------------------------------------------


            string user = Server.MapPath("~/Farah/LoginData.txt");


            string[] users = File.ReadAllLines(user);


            File.AppendAllText(file, users[0] + Environment.NewLine);



        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
           
            



        }
    }
}