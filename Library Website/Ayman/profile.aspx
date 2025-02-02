<%--<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7fa;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .profile-container {
            width: 100%;
            max-width: 900px;
            margin: 30px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .profile-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .profile-header h1 {
            font-size: 2em;
            color: #333;
        }

        .edit-btn {
            background-color: #295E6A;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 8px;
            font-size: 1em;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .edit-btn:hover {
            background-color: #D0E8E4;
        }

        .profile-details {
            margin-top: 20px;
        }

        .profile-item {
            display: flex;
            justify-content: space-between;
            padding: 10px 0;
            border-bottom: 1px solid #ddd;
        }

        .profile-label {
            font-weight: bold;
            font-size: 1.1em;
        }

        .profile-value {
            font-size: 1.1em;
            color: #555;
        }

        .profile-image {
            border-radius: 50%;
        }

        .edit-profile-modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
            z-index: 1000;
            opacity: 0;
            transform: translateY(-50px);
            transition: all 0.3s ease;
        }

        .edit-profile-modal.modal-visible {
            opacity: 1;
            transform: translateY(0);
        }

        .modal-content {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            width: 60%;
            max-width: 800px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            overflow-y: auto;
            transition: all 0.3s ease;
            height: 80%;
        }

        .close-modal {
            position: absolute;
            top: 15px;
            right: 20px;
            font-size: 30px;
            color: #333;
            cursor: pointer;
        }

        input, select, textarea {
            width: 100%;
            padding: 12px;
            margin-top: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1em;
            transition: all 0.3s ease;
        }

        input:focus, select:focus, textarea:focus {
            border-color: #4CAF50;
            outline: none;
        }

        button {
            width: 48%;
            background-color: #295E6A;
            color: white;
            padding: 8px;
            border: none;
            border-radius: 8px;
            font-size: 1.2em;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #D0E8E4;
        }

        .reset-password-btn {
            background-color: #f44336;
            color: white;
            padding: 8px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }

        .reset-password-btn:hover {
            background-color: #d32f2f;
        }

        .reset-password-modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
            z-index: 1000;
            opacity: 0;
            transform: translateY(-50px);
            transition: all 0.3s ease;
        }

        .reset-password-modal.modal-visible {
            opacity: 1;
            transform: translateY(0);
        }

        .modal-content {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            width: 90%;
            max-width: 600px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="profile-container">
            <div class="profile-header">
                <h1>Profile</h1>
                <button id="edit-button" class="edit-btn">Edit Profile</button>
            </div>

            <div class="profile-details">
                <div class="profile-item">
                    <span class="profile-label">Name:</span>
                    <span class="profile-value" id="profile-name">Ahmad</span>
                </div>
                <div class="profile-item">
                    <span class="profile-label">Email:</span>
                    <span class="profile-value" id="profile-email">ahmad@example.com</span>
                </div>
                <div class="profile-item">
                    <span class="profile-label">Bio:</span>
                    <span class="profile-value" id="profile-bio">Web Developer specializing in Frontend and Backend.</span>
                </div>
                <div class="profile-item">
                    <span class="profile-label">Gender:</span>
                    <span class="profile-value" id="profile-gender">Male</span>
                </div>
                <div class="profile-item">
                    <span class="profile-label">Age:</span>
                    <span class="profile-value" id="profile-age">25</span>
                </div>
                <div class="profile-item">
                    <span class="profile-label">Profile Image:</span>
                    <img id="profile-image" src="default-profile.jpg" alt="Profile Image" width="100">
                </div>
            </div>
        </div>

        <div id="edit-profile-modal" class="edit-profile-modal">
            <div class="modal-content">
                <span id="close-modal" class="close-modal">&times;</span>
                <h2>Edit Profile</h2>
                <form id="edit-profile-form">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" value="Ahmad" required>

                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" value="ahmad@example.com" required>

                    <label for="bio">Bio:</label>
                    <textarea id="bio" name="bio" rows="4" required>Web Developer specializing in Frontend and Backend.</textarea>

                    <label for="gender">Gender:</label>
                    <select id="gender" name="gender" required>
                        <option value="male" selected>Male</option>
                        <option value="female">Female</option>
                    </select>

                    <label for="age">Age:</label>
                    <input type="number" id="age" name="age" value="25" required>

                    <label for="profile-image-upload">Profile Image:</label>
                    <input type="file" id="profile-image-upload" name="profile-image-upload">

                    <button type="submit">Save Changes</button>
                    <button type="button" id="reset-password-btn" class="reset-password-btn">Reset Password</button>
                </form>
            </div>
        </div>

        <!-- Reset Password Modal -->
        <div id="reset-password-modal" class="reset-password-modal">
            <div class="modal-content">
                <span id="close-reset-modal" class="close-modal">&times;</span>
                <h2>Reset Password</h2>
                <form id="reset-password-form">
                    <label for="old-password">Old Password:</label>
                    <input type="password" id="old-password" name="old-password" required>

                    <label for="new-password">New Password:</label>
                    <input type="password" id="new-password" name="new-password" required>

                    <label for="confirm-password">Confirm New Password:</label>
                    <input type="password" id="confirm-password" name="confirm-password" required>

                    <button type="submit">Reset Password</button>
                </form>
            </div>
        </div>
    </form>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            // Show Edit Profile Modal
            document.getElementById('edit-button').addEventListener('click', function () {
                const modal = document.getElementById('edit-profile-modal');
                modal.classList.add('modal-visible');
                modal.style.display = 'flex';
            });

            // Close Edit Profile Modal
            document.getElementById('close-modal').addEventListener('click', function () {
                const modal = document.getElementById('edit-profile-modal');
                modal.classList.remove('modal-visible');
                setTimeout(function () {
                    modal.style.display = 'none';
                }, 300);
            });

            // Handle Save Changes
            document.getElementById('edit-profile-form').addEventListener('submit', function (event) {
                event.preventDefault();
                alert('Profile updated successfully!');
                document.getElementById('edit-profile-modal').classList.remove('modal-visible');
                setTimeout(function () {
                    location.reload();
                }, 300);
            });

            // Show Reset Password Modal
            document.getElementById('reset-password-btn').addEventListener('click', function () {
                const resetModal = document.getElementById('reset-password-modal');
                resetModal.classList.add('modal-visible');
                resetModal.style.display = 'flex';
            });

            // Close Reset Password Modal
            document.getElementById('close-reset-modal').addEventListener('click', function () {
                const resetModal = document.getElementById('reset-password-modal');
                resetModal.classList.remove('modal-visible');
                setTimeout(function () {
                    resetModal.style.display = 'none';
                }, 300);
            });

            // Handle Reset Password
            document.getElementById('reset-password-form').addEventListener('submit', function (event) {
                event.preventDefault();
                const oldPassword = document.getElementById('old-password').value;
                const newPassword = document.getElementById('new-password').value;
                const confirmPassword = document.getElementById('confirm-password').value;

                if (newPassword !== confirmPassword) {
                    alert('Passwords do not match!');
                } else {
                    alert('Password reset successful!');
                    document.getElementById('reset-password-modal').classList.remove('modal-visible');
                    setTimeout(function () {
                        location.reload();
                    }, 300);
                }
            });
        });
    </script>
</body>
</html>--%>
