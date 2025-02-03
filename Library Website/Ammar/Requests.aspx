<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Requests.aspx.cs" Inherits="Library_Website.Ammar.Requests" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin - Manage Requests</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            max-width: 800px;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .table {
            border-radius: 8px;
            overflow: hidden;
        }
        .table th {
            background-color: #007bff;
            color: white;
            text-align: center;
        }
        .table td {
            text-align: center;
        }
        .btn-sm {
            width: 120px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-4">
            <h2 class="text-center text-primary mb-4">Manage Reservations</h2>

            <div class="table-responsive">
                <asp:GridView ID="gvReservations" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-hover"
                    OnRowCommand="gvReservations_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="RoomID" HeaderText="Room ID" />
                        <asp:BoundField DataField="Date" HeaderText="Date" />
                        <asp:BoundField DataField="StartTime" HeaderText="Start Time" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />

                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <div class="d-grid gap-2 d-md-flex justify-content-md-center">
                                    <asp:Button ID="btnAccept" runat="server" CommandName="Accept" CommandArgument='<%# Eval("RoomID") %>'
                                        Text="Accept" CssClass="btn btn-success btn-sm"
                                        Visible='<%# Eval("Status").ToString() == "Pending" %>' />

                                    <asp:Button ID="btnReject" runat="server" CommandName="Reject" CommandArgument='<%# Eval("RoomID") %>'
                                        Text="Reject" CssClass="btn btn-danger btn-sm"
                                        Visible='<%# Eval("Status").ToString() == "Pending" %>' />

                                    <asp:Button ID="btnApproveCancel" runat="server" CommandName="ApproveCancel" CommandArgument='<%# Eval("RoomID") %>'
                                        Text="Approve Cancellation" CssClass="btn btn-warning btn-sm"
                                        Visible='<%# Eval("Status").ToString() == "Cancel Pending" %>' />

                                    <asp:Button ID="btnRejectCancel" runat="server" CommandName="RejectCancel" CommandArgument='<%# Eval("RoomID") %>'
                                        Text="Reject Cancellation" CssClass="btn btn-secondary btn-sm"
                                        Visible='<%# Eval("Status").ToString() == "Cancel Pending" %>' />
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
