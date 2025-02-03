using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
namespace Library_Website.Rudaina

{
    public partial class Requests : System.Web.UI.Page
    {

        private string filePath = "~/Rudaina/App_Data/books.txt";

        protected global::System.Web.UI.WebControls.GridView GridViewRequests;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRequestsFromFile();
            }
        }


        private void LoadRequestsFromFile()
        {
            string filePath = Server.MapPath("~/Toqa/BorrowingData.txt");
            DataTable dt = new DataTable();


            dt.Columns.Add("ID");
            dt.Columns.Add("Title");
            dt.Columns.Add("BorrowerName");
            dt.Columns.Add("PublishedDate");
            dt.Columns.Add("Category");
            dt.Columns.Add("Language");
            dt.Columns.Add("RentalDate");
            dt.Columns.Add("ReturnDate");
            dt.Columns.Add("Email");

            if (File.Exists(filePath))
            {
                string[] lines = File.ReadAllLines(filePath);
                foreach (string line in lines)
                {
                    string[] data = line.Split(',');
                    if (data.Length == 9)
                    {
                        dt.Rows.Add(data);
                    }
                }
            }

            GridViewRequests.DataSource = dt;
            GridViewRequests.DataBind();
        }
        protected void GridViewRequests_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Accept" || e.CommandName == "Reject")
            {
                string selectedID = e.CommandArgument.ToString();
                string fullPath = Server.MapPath(filePath);

                if (File.Exists(fullPath))
                {
                    var lines = File.ReadAllLines(fullPath).ToList();

                    for (int i = 0; i < lines.Count; i++)
                    {
                        var parts = lines[i].Split(',');

                       
                        if (parts.Length > 8 && parts[0].Trim() == selectedID)
                        {
                            parts[8] = e.CommandName == "Accept" ? "Reserved" : "Available";
                            lines[i] = string.Join(",", parts.Select(p => p.Trim())); 
                            break;
                        }
                    }

                    File.WriteAllLines(fullPath, lines);
                }
            }
        }
    


    }
}