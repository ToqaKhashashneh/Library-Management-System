<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="All books.aspx.cs" Inherits="Library_Website.Toqa.All_books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="All books.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">


    <style>

        .card {
            transition: transform 0.3s, box-shadow 0.3s;

        }

            .card .card-img-top:hover {
                transform: scale(1.05);
                box-shadow: 0 1vw 2vw rgba(0, 0, 0, 0.3);
            }


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

                    <!-- Book Card 1 -->
                    <div class="col-md-4 col-sm-6 col-12 mb-4">
                        <div class="card">
                            <img src="book1.png" class="card-img-top" alt="Book 1">
                            <div class="card-body">
                                <h5 class="card-title">The LORD Of THE KINGS</h5>
                                <p class="card-text">
                                    Author: SARAH GESTON<br />
                                    ID: 1<br />
                                    Category: Fantasy<br />
                                    Published: 1954<br />
                                    Language: English<br />
                                </p>

                                <asp:Button ID="Borrow1" Text="Borrow Book" runat="server" CssClass="btn btn-outline-primary btn-rounded" data-mdb-ripple-init data-mdb-ripple-color="dark" OnClick="Borrow1_Click" />
                            </div>
                        </div>
                    </div>
                    <!-- Book Card 2 -->
                    <div class="col-md-4 col-sm-6 col-12 mb-4">
                        <div class="card">
                            <img src="book2.png" class="card-img-top" alt="Book 2">
                            <div class="card-body">
                                <h5 class="card-title">Book Title 2</h5>
                                <p class="card-text">
                                    Author: Author 2
                                    <br />
                                    ID: 2<br />
                                    Category: Fantasy<br />
                                    Published: 1954<br />
                                    Language: 1178<br />
                                </p>
                                <asp:Button ID="Button2" Text="Borrow Book" runat="server" CssClass="btn btn-outline-primary btn-rounded" data-mdb-ripple-init data-mdb-ripple-color="dark" OnClick="Borrow1_Click" />

                            </div>
                        </div>
                    </div>
                    <!-- Book Card 3 -->
                    <div class="col-md-4 col-sm-6 col-12 mb-4">
                        <div class="card">
                            <img src="book3.png" class="card-img-top" alt="Book 3">
                            <div class="card-body">
                                <h5 class="card-title">Book Title 3</h5>
                                <p class="card-text">
                                    Author: Author 3
                                    <br />
                                    ID: 3<br />
                                    Category: Fantasy<br />
                                    Published: 1954<br />
                                    Language: 1178<br />
                                </p>
                                <asp:Button ID="Button3" Text="Borrow Book" runat="server" CssClass="btn btn-outline-primary btn-rounded" data-mdb-ripple-init data-mdb-ripple-color="dark" OnClick="Borrow1_Click" />

                            </div>
                        </div>
                    </div>

                </div>
            </div>





            <div class="container my-5">
                <div class="row">
                    <!-- Book Card 4 -->
                    <div class="col-md-4 col-sm-6 col-12 mb-4">
                        <div class="card">
                            <img src="book4.jpg" class="card-img-top" alt="Book 4">
                            <div class="card-body">
                                <h5 class="card-title">The LORD Of THE KINGS</h5>
                                <p class="card-text">
                                    Author: SARAH GESTON<br />
                                    ID: 4<br />
                                    Category: Fantasy<br />
                                    Published: 1954<br />
                                    Language: 1178<br />
                                </p>

                                <asp:Button ID="Button4" Text="Borrow Book" runat="server" CssClass="btn btn-outline-primary btn-rounded" data-mdb-ripple-init data-mdb-ripple-color="dark" OnClick="Borrow1_Click" />
                            </div>
                        </div>
                    </div>
                    <!-- Book Card 5 -->
                    <div class="col-md-4 col-sm-6 col-12 mb-4">
                        <div class="card">
                            <img src="book5.jpg" class="card-img-top" alt="Book 5">
                            <div class="card-body">
                                <h5 class="card-title">Book Title 2</h5>
                                <p class="card-text">
                                    Author: Author 2
                                    <br />
                                    ID: 5<br />
                                    Category: Fantasy<br />
                                    Published: 1954<br />
                                    Language: 1178<br />

                                </p>

                                <asp:Button ID="Button5" Text="Borrow Book" runat="server" CssClass="btn btn-outline-primary btn-rounded" data-mdb-ripple-init data-mdb-ripple-color="dark" OnClick="Borrow1_Click" />

                            </div>
                        </div>
                    </div>
                    <!-- Book Card 6 -->
                    <div class="col-md-4 col-sm-6 col-12 mb-4">
                        <div class="card">
                            <img src="book6.jpg" class="card-img-top" alt="Book 6">
                            <div class="card-body">
                                <h5 class="card-title">Book Title 3</h5>
                                <p class="card-text">
                                    Author: Author 3
                                    <br />
                                    ID: 6<br />
                                    Category: Fantasy<br />
                                    Published: 1954<br />
                                    Language: 1178<br />

                                </p>
                                <asp:Button ID="Button6" Text="Borrow Book" runat="server" CssClass="btn btn-outline-primary btn-rounded" data-mdb-ripple-init data-mdb-ripple-color="dark" OnClick="Borrow1_Click" />

                            </div>
                        </div>
                    </div>

                </div>
            </div>





        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>
</html>
