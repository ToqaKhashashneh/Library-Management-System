<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRooms.aspx.cs" Inherits="Library_Website.Ammar.AdminRooms" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin - Manage Rooms</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }
        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            padding-bottom: 10px;
            border-bottom: 2px solid #dee2e6;
        }
        .btn-group-custom .btn {
            min-width: 120px;
        }
        .room-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 15px;
        }
        .room-card {
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 15px;
            background: white;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
        }
        .room-card:hover {
            transform: translateY(-5px);
        }
        .room-card h5 {
            margin-bottom: 10px;
        }
    </style>

    <script type="text/javascript">
        function confirmDelete(roomId) {
            if (confirm("Are you sure you want to delete this room?")) {
                document.getElementById('<%= HiddenFieldRoomId.ClientID %>').value = roomId;
                document.getElementById('<%= btnConfirmDelete.ClientID %>').click();
            }
            return false;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-4">
            
            <!-- Header Section -->
            <div class="header-container">
                <h2 class="text-primary">Manage Rooms</h2>
                <div class="btn-group-custom">
                    <asp:Button ID="btnRequests" runat="server" CssClass="btn btn-outline-secondary me-2" Text="Requests" PostBackUrl="Requests.aspx" />
                    <asp:Button ID="btnAddRoom" runat="server" CssClass="btn btn-success" Text="Add Room" PostBackUrl="AddRoom.aspx" />
                </div>
            </div>

            <!-- Room Cards Grid -->
            <div class="room-container" runat="server" id="RoomContainer"></div>

            <!-- Hidden Field to Store Room ID for Deletion -->
            <asp:HiddenField ID="HiddenFieldRoomId" runat="server" />

            <!-- Button to Trigger Server-side Deletion -->
            <asp:Button ID="btnConfirmDelete" runat="server" CssClass="d-none" OnClick="ConfirmDelete_Click" />
        </div>
    </form>
</body>
</html>
