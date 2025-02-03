<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="Library_Website.Ammar.Rooms" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rooms</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            max-width: 900px;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .card {
            border: none;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
        }
        .card:hover {
            transform: scale(1.02);
        }
        .card-img-top {
            height: 200px;
            object-fit: cover;
            border-radius: 10px 10px 0 0;
        }
        .badge {
            font-size: 14px;
            padding: 5px 10px;
        }
        .time-picker-panel {
            display: none;
        }
        .time-picker-panel.open {
            display: block;
        }
        .btn {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container my-4">
            <h2 class="text-center text-primary mb-4">Available Rooms</h2>
            <asp:Repeater ID="rptRooms" runat="server" OnItemDataBound="rptRooms_ItemDataBound">
                <ItemTemplate>
                    <div class="card mb-4">
                        <img src='<%# Eval("Image") %>' class="card-img-top" alt="Room Image" onerror="this.src='/Uploads/default-placeholder.png';" />
                        <div class="card-body">
                            <h5 class="card-title"><%# Eval("Name") %></h5>
                            <p class="card-text"><strong>Capacity:</strong> <%# Eval("Capacity") %></p>
                            <p class="card-text"><%# Eval("Description") %></p>

                            <asp:Label ID="lblStatus" runat="server" CssClass="badge bg-info"></asp:Label>

                            <div class="d-grid gap-2">
                                <asp:Button ID="btnReserve" runat="server" Text="Reserve" CssClass="btn btn-primary"
                                    CommandArgument='<%# Eval("ID") %>'
                                    Enabled='<%# Eval("Status").ToString() != "Pending" %>'
                                    OnClientClick="toggleTimePicker(this); return false;" />

                                <asp:Button ID="btnCancel" runat="server" Text="Cancel Reservation" CssClass="btn btn-danger"
                                    Visible='<%# Eval("Status").ToString() == "Reserved" || Eval("Status").ToString() == "Cancel Pending" %>'
                                    Enabled='<%# Eval("Status").ToString() != "Cancel Pending" %>'
                                    CommandArgument='<%# Eval("ID") %>'
                                    OnClientClick="return confirmCancel();" OnClick="btnCancelReservation_Click" />
                            </div>

                            <asp:Panel ID="pnlTimePicker" runat="server" CssClass="mt-3 time-picker-panel">
                                <label for="calDatePicker">Select Date:</label>
                                <asp:Calendar ID="calDatePicker" runat="server" CssClass="form-control"></asp:Calendar>

                                <label for="ddlStartTime" class="mt-2">Select Start Time:</label>
                                <asp:DropDownList ID="ddlStartTime" runat="server" CssClass="form-select"></asp:DropDownList>

                                <asp:Button ID="btnConfirmReserve" runat="server" Text="Confirm Reservation" CssClass="btn btn-success mt-2"
                                    OnClick="btnConfirmReserve_Click" />
                            </asp:Panel>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>

    <script>
        function toggleTimePicker(button) {
            var panel = button.closest('.card-body').querySelector('.time-picker-panel');
            panel.classList.toggle('open');
        }

        function confirmCancel() {
            return confirm("Are you sure you want to cancel this reservation? This will require admin approval.");
        }

        document.addEventListener("DOMContentLoaded", function () {
            var panels = document.querySelectorAll(".time-picker-panel");
            panels.forEach(function (panel) {
                panel.addEventListener("click", function (event) {
                    event.stopPropagation();
                });
            });
        });
    </script>
</body>
</html>
