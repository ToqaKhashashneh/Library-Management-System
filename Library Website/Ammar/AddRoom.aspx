<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRoom.aspx.cs" Inherits="Library_Website.Ammar.AddRoom" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Room</title>
    
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet"> 

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


<link href="\Rudaina\css\bootstrap.min.css" rel="stylesheet">

<link href="\Rudaina\css\style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card-custom {
            max-width: 600px;
            margin: auto;
            border-radius: 12px;
            border: none;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
        }
        .btn-custom {
            width: 100%;
            padding: 10px;
            border-radius: 6px;
            font-size: 16px;
        }
        .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.3);
        }
        .file-upload {
            border: 2px dashed #ced4da;
            border-radius: 6px;
            padding: 10px;
            text-align: center;
            background-color: #fff;
            cursor: pointer;
        }
        .file-upload:hover {
            border-color: #007bff;
        }
        .message {
            padding: 10px;
            border-radius: 6px;
        }
    </style>
</head>
<body>
    <!-- Navbar start -->
<div class="container-fluid fixed-top">
    <div class="container topbar bg-primary d-none d-lg-block"  style="visibility:hidden!important;">
        <div class="d-flex justify-content-between">
            <div class="top-info ps-2">
                <small class="me-3"><i class="fas fa-map-marker-alt me-2 text-secondary"></i> <a href="#" class="text-white">123 Street, New York</a></small>
                <small class="me-3"><i class="fas fa-envelope me-2 text-secondary"></i><a href="#" class="text-white">Email@Example.com</a></small>
            </div>
            <div class="top-link pe-2">
                <a href="#" class="text-white"><small class="text-white mx-2">Privacy Policy</small>/</a>
                <a href="#" class="text-white"><small class="text-white mx-2">Terms of Use</small>/</a>
                <a href="#" class="text-white"><small class="text-white ms-2">Sales and Refunds</small></a>
            </div>
        </div>
    </div>
    <div class="container px-0">
        <nav class="navbar navbar-light bg-white navbar-expand-xl">
            <a href="index.html" class="navbar-brand"><h1 class="text-primary display-6">Smart Academy</h1></a>
            <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="fa fa-bars text-primary"></span>
            </button>
            <div class="collapse navbar-collapse bg-white" id="navbarCollapse">
                <div class="navbar-nav mx-auto">
                    <a href="index.html" class="nav-item nav-link active">Home</a>
                    <a href="shop.html" class="nav-item nav-link">About</a>
                    <a href="shop-detail.html" class="nav-item nav-link">Books</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Rooms</a>
                        <div class="dropdown-menu m-0 bg-secondary rounded-0">
                            <a href="cart.html" class="dropdown-item">Cart</a>
                            <a href="chackout.html" class="dropdown-item">Chackout</a>
                            <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                            <a href="404.html" class="dropdown-item">404 Page</a>
                        </div>
                    </div>
                    <a href="contact.html" class="nav-item nav-link">Contact</a>
                </div>
                <div class="d-flex m-3 me-0">
                    <button class="btn-search btn border border-secondary btn-md-square rounded-circle bg-white me-4" data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fas fa-search text-primary"></i></button>
                    <a href="#" class="position-relative me-4 my-auto">
                        <i class="fa fa-shopping-bag fa-2x"></i>
                        <span class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1" style="top: -5px; left: 15px; height: 20px; min-width: 20px;">3</span>
                    </a>
                    <a href="#" class="my-auto">
                        <i class="fas fa-user fa-2x"></i>
                    </a>
                </div>
            </div>
        </nav>
    </div>
</div>
<!-- Navbar End -->

    <div class="container mt-5">
        <form id="form1" runat="server">
            <div class="card card-custom p-4">
                <h2 class="text-center text-primary fw-bold">Add Room</h2>
                <hr />

                <!-- Room Name -->
                <div class="mb-3">
                    <asp:Label ID="lblRoomName" runat="server" AssociatedControlID="txtRoomName" CssClass="form-label fw-semibold" Text="Room Name"></asp:Label>
                    <asp:TextBox ID="txtRoomName" runat="server" CssClass="form-control" Placeholder="Enter room name"></asp:TextBox>
                </div>

                <!-- Capacity -->
                <div class="mb-3">
                    <asp:Label ID="lblCapacity" runat="server" AssociatedControlID="txtCapacity" CssClass="form-label fw-semibold" Text="Capacity"></asp:Label>
                    <asp:TextBox ID="txtCapacity" runat="server" CssClass="form-control" TextMode="Number" Placeholder="Enter capacity"></asp:TextBox>
                </div>

                <!-- Description -->
                <div class="mb-3">
                    <asp:Label ID="lblDescription" runat="server" AssociatedControlID="txtDescription" CssClass="form-label fw-semibold" Text="Description"></asp:Label>
                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" Placeholder="Enter room description"></asp:TextBox>
                </div>

                <!-- File Upload -->
                <div class="mb-3">
                    <asp:Label ID="lblImage" runat="server" AssociatedControlID="fuImage" CssClass="form-label fw-semibold" Text="Upload Image"></asp:Label>
                    <div class="file-upload">
                        <asp:FileUpload ID="fuImage" runat="server" CssClass="form-control-file" />
                    </div>
                </div>

                <!-- Submit Button -->
                <div class="mb-3 text-center">
                    <asp:Button ID="btnAddRoom" runat="server" Text="Add Room" CssClass="btn btn-primary btn-custom" OnClick="btnAddRoom_Click" />
                </div>

                <!-- Success/Error Message -->
                <div class="text-center">
                    <asp:Label ID="lblmsg" runat="server" CssClass="message fw-bold d-block" ForeColor="Green" Visible="false"></asp:Label>
                </div>
            </div>
        </form>
    </div>

</body>
</html>
