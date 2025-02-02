<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="All books.aspx.cs" Inherits="Library_Website.Toqa.All_books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>aaaaaaaaa</title>
    <%--<link rel="stylesheet" href="All books.css">--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">


    <style>

        .card {
            transition: transform 0.3s, box-shadow 0.3s;

        }

            .card .card-img-top:hover {
                transform: scale(1.05);
                box-shadow: 0 1vw 2vw rgba(0, 0, 0, 0.3);
            }

            .card-img-top { 
    height: 29vw;}



    </style>




</head>
<body>
    <form id="form1" runat="server">
        <div>

            <!-- Search  -->

            <div class="container mt-5">
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <div class="input-group">
                            <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Search here..." />
                            <asp:Button ID="btnSearch" runat="server" Text="🔍" CssClass="btn btn-primary" OnClick="btnSearch_Click" />
                            <asp:Label ID="searchresult" runat="server" Visible="false" />
                        </div>
                    </div>
                </div>
            </div>


            <!--Search-->




            <div class="container my-5">
                <h1 class="text-center mb-4">Books Collection</h1>
                <div class="row">

<div class="container">
    <div class="row" id="booksContainer" runat="server"></div>
</div>


<%--              <script>
                  function borrowBook(bookId) {
                      fetch("BorrowBookHandler.aspx?bookId=" + encodeURIComponent(bookId))
                          .then(response => {
                              if (!response.ok) {
                                  console.error("Error: Failed to process request.");
                                  return;
                              }
                              return response.text();
                          })
                          .then(data => {
                              console.log("Redirecting to BorrowBook.aspx with bookId:", bookId);
                              window.location.href = "BorrowBook.aspx?bookId=" + encodeURIComponent(bookId);
                          })
                          .catch(error => console.error('Fetch Error:', error));
                  }
              </script>
--%>

                    


        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
    




</body>
</html>
