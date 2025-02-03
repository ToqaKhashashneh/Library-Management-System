using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Library_Website.Bilal
{
    public partial class Room_History : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = Server.MapPath("Room_History.txt");
            string Email = "ssd@gmail.com";



            string[] AllData = File.ReadAllLines(path);


            string tableData = "<table border='1'>";
            tableData += "<tr><th>ID</th><th>Start Date</th><th>Time</th><th>Status</th><th>Email</th>";


            foreach (var f in AllData)
            {
                string[] Data = f.Split('|');


                if (Email == Data[4])
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