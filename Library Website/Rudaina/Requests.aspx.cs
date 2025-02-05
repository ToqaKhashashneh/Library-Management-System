using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web.UI.WebControls;
using System;
using System.IO;
using System.Web.UI;

namespace Library_Website.Rudaina
{
    public partial class Requests : System.Web.UI.Page
    {
        // Consolidating file paths
        private string booksFilePath = "~/Rudaina/App_Data/books.txt"; // Books file
        private string borrowingDataFilePath = "~/Toqa/BorrowingData.txt"; // Borrowing requests file

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
            string fullPath = Server.MapPath(borrowingDataFilePath);
            DataTable dt = new DataTable();

            dt.Columns.Add("ID");
            dt.Columns.Add("Title");
            dt.Columns.Add("Author");
            dt.Columns.Add("PublishedDate");
            dt.Columns.Add("Category");
            dt.Columns.Add("Language");
            dt.Columns.Add("RentalDate");
            dt.Columns.Add("ReturnDate");
            dt.Columns.Add("Email");

            if (File.Exists(fullPath))
            {
                string[] lines = File.ReadAllLines(fullPath);
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
                string status = e.CommandName == "Accept" ? "Reserved" : "Available";

                // تحديث حالة الكتاب
                if (UpdateBookAvailability(selectedID, status))
                {
                    // ✅ تأخير تحميل البيانات لضمان عدم فقدان التنبيه
                    System.Threading.Thread.Sleep(500);

                    // ✅ إعادة تحميل البيانات بعد الموافقة أو الرفض
                    LoadRequestsFromFile();

                    // ✅ إضافة SweetAlert بعد نجاح العملية
                    string message = status == "Reserved" ? "The request has been accepted!" : "The request has been rejected!";
                    string script = $"Swal.fire({{ title: 'Success', text: '{message}', icon: 'success' }});";

                    ScriptManager.RegisterStartupScript(this, GetType(), "alert", script, true);
                }
            }
        }



        private bool UpdateBookAvailability(string bookId, string status)
        {
            string fullPath = Server.MapPath(booksFilePath);

            if (!File.Exists(fullPath)) return false;

            List<string> lines = File.ReadAllLines(fullPath).ToList();
            bool updated = false;

            for (int i = 0; i < lines.Count; i++)
            {
                string[] parts = lines[i].Split(',');

                if (parts.Length > 8 && parts[0].Trim() == bookId)
                {
                    parts[8] = status; // Update the status (Reserved / Available)
                    lines[i] = string.Join(",", parts.Select(p => p.Trim()));
                    updated = true;
                    break;
                }
            }

            if (updated)
            {
                File.WriteAllLines(fullPath, lines);
                return true;
            }

            return false;
        }
    }
}