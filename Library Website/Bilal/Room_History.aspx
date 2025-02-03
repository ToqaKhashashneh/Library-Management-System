<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Room_History.aspx.cs" Inherits="Library_Website.Bilal.Room_History" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>History</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            table-layout: fixed;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border: 1px solid #ddd;
            width: 150px;
        }

        th {
            background-color: #7d0ed7ba;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>History Data</h2>
            <div id="historyContainer" runat="server"></div>
        </div>
    </form>
</body>
</html>


