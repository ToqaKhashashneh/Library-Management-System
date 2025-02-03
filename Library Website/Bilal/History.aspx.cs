using System;
using System.IO;
using System.Web.UI;

namespace Library_Website.Bilal
{
    public partial class History : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string path = Server.MapPath("LoadAllData.txt");
            string Email = "foqamusa@gmail.com";

     
            string[] AllData = File.ReadAllLines(path);

       
            string tableData = "<table border='1'>";
            tableData += "<tr><th>ID</th><th>Name</th><th>Author</th><th>Publication Date</th><th>Type</th><th>Language</th><th>Start Date</th><th>End Date</th><th>Email</th></tr>";


            foreach (var f in AllData)
            {
                string[] Data = f.Split(',');

      
                if (Email == Data[8])
                {
                    tableData += "<tr>"; 

          
                    foreach (var data in Data)
                    {
                        tableData += $"<td>{data}</td>"; 
                    }

                    tableData += "</tr>"; 
                }
            }

            tableData += "</table>"; 

            historyContainer.InnerHtml = tableData;

        }
    }
}
