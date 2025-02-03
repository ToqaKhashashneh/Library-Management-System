<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Library_Website.Bilal.Profile" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <style>
        body {
            background-color: #f5f5f5;
            font-family: 'Arial', sans-serif;
        }

        .form-container {
            max-width: 600px;
            margin: 50px auto;
            background: #fff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border: 2px solid #7d0ed7ba;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

            .form-container:hover {
                transform: translateY(-5px);
                box-shadow: 0 8px 12px rgba(0, 0, 0, 0.15);
            }

        .btn-custom {
            background-color: #7d0ed7ba;
            color: white;
            border: none;
            transition: background-color 0.3s ease;
            font-weight: bold;
        }

            .btn-custom:hover {
                background-color: #6a00a3;
                color: white;
            }

        .profile-header {
            text-align: center;
            margin-bottom: 40px;
        }

            .profile-header h2 {
                color: #7d0ed7ba;
                font-weight: bold;
                font-size: 30px;
            }

            .profile-header p {
                color: #333;
                font-size: 18px;
                margin-bottom: 30px;
            }

        .user-info {
            background: linear-gradient(to right, #7d0ed7ba, #6a00a3);
            color: white;
            border-radius: 10px;
            padding: 25px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

            .user-info:hover {
                transform: translateY(-5px);
                box-shadow: 0 8px 12px rgba(0, 0, 0, 0.15);
            }

            .user-info h3 {
                font-size: 28px;
                font-weight: bold;
                margin-bottom: 10px;
            }

            .user-info p {
                font-size: 20px;
                margin-top: 10px;
            }

        .tabs-container {
            margin-top: 30px;
            margin-bottom: 40px;
            text-align: center;
        }

            .tabs-container .nav-link {
                background-color: transparent;
                color: #7d0ed7ba;
                border: 1px solid #7d0ed7ba;
                border-radius: 5px;
                padding: 10px 20px;
                transition: 0.3s;
                text-decoration: none;
                font-weight: bold;
            }

                .tabs-container .nav-link:hover, .tabs-container .nav-link.active {
                    background-color: #7d0ed7ba;
                    color: white;
                }

        .d-flex-button {
            margin-top: 30px;
        }

            .d-flex-button .btn {
                font-size: 16px;
                padding: 10px 20px;
                transition: transform 0.3s ease;
            }

                .d-flex-button .btn:hover {
                    transform: scale(1.05);
                }

        /* التنسيق الخاص بـ box التفاصيل مع الزر */
        .details-box {
            background-color: #fff;
            padding: 20px;
            margin-top: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

            .details-box h4 {
                font-size: 24px;
                font-weight: bold;
                margin-bottom: 15px;
            }

            .details-box p {
                font-size: 18px;
                color: #555;
                margin-bottom: 20px;
            }

            .details-box .btn-small {
                background-color: #7d0ed7ba;
                color: white;
                border: none;
                padding: 8px 15px;
                font-size: 16px;
                border-radius: 5px;
            }

                .details-box .btn-small:hover {
                    background-color: #6a00a3;
                    color: white;
                }

                .user-info p {

                    color:#ffffff !important;
                }
    color: #333;
    </style>

    <script type="text/javascript">
        function loadPassword() {
            var passwordValue = '<%= P_Pass.Text %>';
            var passwordField = document.getElementById('<%= P_Pass.ClientID %>');


            passwordField.type = "text";
            passwordField.value = passwordValue;

    
            setTimeout(function () {
                passwordField.type = "password";
            }, 1000); 
        }
    </script>

</head>

<body>
    <form id="form1" runat="server">
        <div class="container py-5">

            <!-- Profile Header with User Information -->
            <div class="profile-header">
                <div class="user-info">
                    <h3>
                        <asp:Label runat="server" ID="FullNameLabel" Text="Full Name"></asp:Label></h3>
                    <p>
                        <asp:Label runat="server" ID="EmailLabel" Text="Email Address"></asp:Label>
                    </p>
                </div>
            </div>

            <!-- Tabs for navigating to different sections -->
            <div class="tabs-container">
                <ul class="nav nav-pills justify-content-center">
                    <li class="nav-item">
                        <a class="nav-link active" id="roomHistoryTab" data-bs-toggle="pill" href="#roomHistory">Room History</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="bookHistoryTab" data-bs-toggle="pill" href="#bookHistory">Book History</a>
                    </li>
                </ul>
            </div>

            <!-- Tab content -->
            <div class="tab-content">
                <div id="roomHistory" class="tab-pane fade show active">
                    <div class="form-container">
                        <!-- Room History Content Goes Here -->
                        <h4>Room History</h4>
                        <p>From here you can view your room reservation history.</p>

                        <asp:Button runat="server" class="btn btn-custom" Text="Show Details" OnClick="Unnamed_Click" />
                    </div>
                </div>

                <div id="bookHistory" class="tab-pane fade">
                    <div class="form-container">
                        <h4>Book History</h4>
                        <p>From here you can see the history of the books you have borrowed.</p>

          
                        <asp:Button runat="server" class="btn btn-custom" Text="Show Details" OnClick="Unnamed_Click1" />
                    </div>
                </div>

            </div>


            <div class="form-container">
                <div class="profile-details">
                    <div class="mb-3">
                        <asp:TextBox runat="server" ID="F_Name" disabled class="form-control" />
                    </div>
                    <div class="mb-3">
                        <asp:TextBox runat="server" ID="L_Name" disabled class="form-control" />
                    </div>
                    <div class="mb-3">
                        <asp:TextBox runat="server" ID="e_Email" disabled class="form-control" />
                    </div>
           
                    <div class="mb-3">
                        <asp:TextBox runat="server" ID="P_Pass" disabled TextMode="Password" class="form-control" />
                    </div>
                </div>

      
                <div class="d-flex justify-content-between d-flex-button">
                    <asp:Button Text="Edit Profile" runat="server" class="btn btn-custom" OnClick="Edit_Click" />
                    <asp:Button Text="Reset Password" runat="server" class="btn btn-custom" OnClick="Reset_Click" />
                </div>
            </div>


        </div>
    </form>

    <script type="text/javascript">
        loadPassword();
    </script>
</body>
</html>
