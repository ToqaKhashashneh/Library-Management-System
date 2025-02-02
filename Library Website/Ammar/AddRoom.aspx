<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRoom.aspx.cs" Inherits="Library_Website.Ammar.AddRoom" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Room</title>
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
