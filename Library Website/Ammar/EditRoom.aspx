<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditRoom.aspx.cs" Inherits="Library_Website.Ammar.EditRoom" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Room</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    
    <style>
        body {
            background-color: #f8f9fa;
        }
        .edit-room-container {
            max-width: 500px;
            margin: 50px auto;
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        .form-label {
            font-weight: 500;
        }
        .btn-success {
            width: 100%;
        }
        .success-message {
            color: green;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="edit-room-container">
            <h2 class="text-center text-primary mb-4">Edit Room</h2>

            <!-- Room Name -->
            <div class="mb-3">
                <asp:Label ID="lblRoomName" runat="server" AssociatedControlID="txtRoomName" CssClass="form-label" Text="Room Name"></asp:Label>
                <asp:TextBox ID="txtRoomName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <!-- Capacity -->
            <div class="mb-3">
                <asp:Label ID="lblCapacity" runat="server" AssociatedControlID="txtCapacity" CssClass="form-label" Text="Capacity"></asp:Label>
                <asp:TextBox ID="txtCapacity" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
            </div>

            <!-- Description -->
            <div class="mb-3">
                <asp:Label ID="lblDescription" runat="server" AssociatedControlID="txtDescription" CssClass="form-label" Text="Description"></asp:Label>
                <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            </div>

            <!-- File Upload -->
            <div class="mb-3">
                <asp:Label ID="lblImage" runat="server" AssociatedControlID="fuImage" CssClass="form-label" Text="Change Image (Optional)"></asp:Label>
                <asp:FileUpload ID="fuImage" runat="server" CssClass="form-control" />
            </div>

            <!-- Update Button -->
            <div class="mb-3 text-center">
                <asp:Button ID="btnUpdateRoom" runat="server" Text="Update Room" CssClass="btn btn-success" OnClick="btnUpdateRoom_Click" />
            </div>

            <!-- Success/Error Message -->
            <div class="mb-3 text-center">
                <asp:Label ID="lblmsg" runat="server" CssClass="success-message" ForeColor="Green" Visible="false"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
