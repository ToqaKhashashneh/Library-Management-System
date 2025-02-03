<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BorrowBook.aspx.cs" Inherits="Library_Website.Toqa.Borrow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

    <title></title>

<style>
        .container {
            margin-top: 50px;
        }

        .borrow-container {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            gap: 20px;
        }

        .book-card {
            flex: 1;
            max-width: 400px;
            text-align: center;
        }

        .book-info {
            flex: 2;
                margin-left: 19vw;
        }

        .book-card img {
            width: 100%;
            height: auto;
            border-radius: 10px;
                margin-left: 6vw;    
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table td {
            padding: 8px;
        }
        

        label {
    display: block;
    margin-top: 10px;
}
input[type="datetime-local"] {
    width: calc(100% - 131px);
    padding: 10px;
    margin-top: 5px;
    border-radius: 5px;
    border: 1px solid #ccc;
}
input[type="submit"], button {
    background-color: #7d0ed7ba; 
    color: white;
    padding: 10px 15px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 10px;
}
input[type="submit"]:hover, button:hover {
    background-color: #7d0ed7ba;  
}
.message {
    margin-top: 20px;
    color: green; /* Success message color */
}



    </style>



</head>
<body>
    <form id="form1" runat="server">
        <div>








<%--
              <div class="container mt-5">
      <div class="row justify-content-center">
          <div class="col-md-6">
              <div class="input-group">
                  <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Insert Book ID..." />
                  <asp:Button ID="btnSearch" runat="server" Text="🔍" CssClass="btn btn-primary" OnClick="btnSearch_Click" />
                  <asp:Label ID="searchresult" runat="server" Visible="false" />

              </div>
          </div>
      </div>
  </div>--%>


   <div class="borrow-container"> 
               
                <div class="book-card">
                    <%--<div class="card shadow-lg">--%>
                        <asp:Image ID="imgBook" runat="server"  CssClass="card-img-top" />

                        <div class="card-body">
                            <h5 class="card-title"></h5>
                        </div>
                <%--    </div>--%>
                </div>


       <div class="book-info">
           <h2>Book Information</h2>
           <table class="table table-bordered">
               <tr>
                   <td><strong>ID:</strong></td>
                   <td>
                       <asp:Label ID="lblBookID" runat="server" ></asp:Label></td>
               </tr>
               <tr>
                   <td><strong>Title:</strong></td>
                   <td>
                       <asp:Label ID="lblTitle" runat="server" ></asp:Label></td>
               </tr>
               <tr>
                   <td><strong>Author:</strong></td>
                   <td>
                       <asp:Label ID="lblAuthor" runat="server"> </asp:Label></td>
               </tr>
               <tr>
                   <td><strong>Published Date:</strong></td>
                   <td>
                       <asp:Label ID="lblPublishedDate" runat="server" ></asp:Label></td>
               </tr>
               <tr>
                   <td><strong>Category:</strong></td>
                   <td>
                       <asp:Label ID="lblCategory" runat="server" ></asp:Label></td>
               </tr>

               <tr>
                   <td><strong>Language:</strong></td>
                   <td>
                       <asp:Label ID="lblLanguage" runat="server" ></asp:Label></td>
               </tr>
           </table>






           <h2>Borrow Time Selector</h2>
            <label for="startDate">Start Date/Time:</label>
            <asp:TextBox ID="txtStartDate" runat="server" TextMode="Date" ></asp:TextBox>

            <label for="endDate">End Date/Time:</label>
            <asp:TextBox ID="txtEndDate" runat="server" TextMode="Date"></asp:TextBox>

            <asp:Button ID="btnBorrow" runat="server" Text="Borrow Book" OnClick="btnBorrow_Click" />

            <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>




  
     
           
       
       
       
       </div>

                       </div>




        </div>
    </form>
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
