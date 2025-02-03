<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_Profile.aspx.cs" Inherits="Library_Website.Bilal.Edit_Profile" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Profile</title>

    <style>
        .btn-khaki {
            background-color: #7d0ed7ba !important;
            color: #ffffff !important;
            border: /1px solid/ #003366 !important;
        }

        .btn-khaki:hover {
            background-color: #6a00a3 !important;
            color: #ffffff !important;
        }
    </style>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container p-5 rounded border mt-5 w-25">
            <div class="mb-3">
                <label for="fullName"  class="form-label">First Name</label>
                <asp:TextBox runat="server" ID="name" CssClass="form-control"></asp:TextBox>

                <label for="fullName" class="form-label">Last Name</label>
                <asp:TextBox runat="server" ID="Lname" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <asp:TextBox runat="server" ID="email" readonly CssClass="form-control"></asp:TextBox>
            </div>

            <div class="d-flex flex-row align-items-center mb-4">
      
            </div>

         
            <div class="row justify-content-between">
                <asp:Button ID="cancel" runat="server" class="col-4 btn btn-secondary" OnClick="cancel_click" Text="Cancel"></asp:Button>
                <asp:Button ID="saveCanghes" runat="server" class="col-6 btn btn-khaki" OnClick="saveCanghes_Click" Text="Save Changes"></asp:Button>
            </div>
        </div>
    </form>
</body>
</html>
