<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact_us(user).aspx.cs" Inherits="Library_Website.Ayman.contact_us_admin_" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .overlay { /*background-color: #7d0ed7ba;*/

            background-image: url("https://wallpaperaccess.com/full/3133177.jpg");
            background-size: cover;
            width: 100%;
            height: 100%;
            z-index: 1;
            position: relative;
            padding: 110px 0;
        }

        .section-bg {
            background-size: cover;
            position: relative;
            background-position: left;
            z-index: 0;
            padding: 0;
            min-height: auto;
            overflow: hidden;
        }

        .contact-form {
            position: relative;
            padding: 45px 0 45px 60px;
        }

            .contact-form:before {
                position: absolute;
                content: '';
                top: 0;
                right: 0;
                bottom: 0;
                left: 0;
                border-radius: 6px;
                background: #ffffff;
                box-shadow: 10px 40px 40px rgba(0,0,0,.2);
                pointer-events: none;
                right: auto;
                width: 100vw;
            }

            .contact-form input,
            .contact-form textarea {
                border: 0;
                background: transparent;
                display: block;
                width: 100%;
                min-height: 50px;
                padding: 11px 0;
                font-size: 16px;
                font-weight: 600;
                line-height: 27px;
                background-color: transparent;
                border-radius: 0;
                -webkit-appearance: none;
                transition: .3s ease-in-out;
                border: 2px solid transparent;
                border-bottom-color: rgba(0,0,0,.1);
            }

                .contact-form input::placeholder,
                .contact-form textarea::placeholder {
                    color: #222;
                }

            .contact-form input,
            .contact-form textarea {
                margin-bottom: 30px;
                font-size: 16px;
                font-weight: 600;
                height: 55px;
            }

                .contact-form input:hover,
                .contact-form input:focus,
                .contact-form textarea:hover,
                .contact-form textarea:focus {
                    outline: none;
                    box-shadow: none;
                    background: transparent;
                    border: 2px solid transparent;
                    border-bottom-color: rgb(254, 132, 111);
                }

        .uf-ct-01-btn-primary {
            background-color: #864ef2 !important;
            color: #fff !important;
            border: 2px solid #864ef2 !important;
            border-radius: 5px !important;
            padding: 12px 25px !important;
            font-size: 16px !important;
            transition: background-color 0.3s ease, transform 0.2s ease !important;
            display: inline-block;
            width: 100%;
            text-align: center;
        }

            .uf-ct-01-btn-primary:hover {
                background-color: #641eec !important;
                color: #fff !important;
                transform: scale(1.05) !important;
            }

            .uf-ct-01-btn-primary:focus {
                box-shadow: 0 0 0 .25rem rgba(103, 58, 183, 0.5) !important;
            }

        .taso-btn {
            background-color: #fff;
            margin: 25px 0;
            color: #214dcb;
            box-shadow: 0px 10px 30px 0px rgba(255, 255, 255, 0.32);
        }

        .contact-info {
            padding: 0 30px 0px 0;
        }

        h2.contact-title {
            font-size: 35px;
            font-weight: 600;
            color: #fff;
            margin-bottom: 30px;
        }

        .contact-info p {
            color: #ececec;
        }

        ul.contact-info {
            margin-top: 30px;
        }

            ul.contact-info li {
                margin-bottom: 22px;
            }

            ul.contact-info span {
                font-size: 20px;
                line-height: 26px;
            }

            ul.contact-info li {
                display: flex;
                width: 100%;
            }

        .info-left {
            width: 10%;
        }

            .info-left i {
                width: 30px;
                height: 30px;
                line-height: 30px;
                font-size: 30px;
                color: #ffffff;
            }

        .info-right h4 {
            color: #fff;
            font-size: 18px;
        }

        .contact-page .info-left i {
            color: #FE846F;
        }

        .btn {
            display: inline-block;
            font-weight: 400;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            font-family: 'Poppins', sans-serif;
            padding: 10px 30px 10px;
            font-size: 17px;
            line-height: 28px;
            border: 0px;
            border-radius: 10px;
            transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
        }

        .btn-big {
            color: #ffffff;
            box-shadow: 0px 5px 20px 0px rgba(45, 45, 45, 0.47843137254901963);
            background: #FE846F;
            transition: .2s;
            border: 2px solid #FE846F;
            margin-top: 50px;
        }

        @media only screen and (max-width: 767px) {
            .contact-form {
                padding: 30px;
            }

                .contact-form:before {
                    width: 100%;
                }
        }
    </style>
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="section-bg" data-scroll-index="7">
                <div class="overlay pt-100 pb-100 ">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 d-flex align-items-center">
                                <div class="contact-info">
                                    <h2 class="contact-title">Have Any Questions?</h2>
                                    <p> </p>
                                    <ul class="contact-info">
                                        <li>
                                            <div class="info-left">
                                                <i class="fas fa-mobile-alt"></i>
                                            </div>
                                            <div class="info-right">
                                                <h4>+9627999999999</h4>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="info-left">
                                                <i class="fas fa-at"></i>
                                            </div>
                                            <div class="info-right">
                                                <h4>info@example.com</h4>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="info-left">
                                                <i class="fas fa-map-marker-alt"></i>
                                            </div>
                                            <div class="info-right">
                                                <h4>1243 Stree Amman, Jordan</h4>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-6 d-flex align-items-center">
                                <div class="contact-form">
                                    <form id="contact-form" method="POST">
                                        <input type="hidden" name="form-name" value="contactForm" />
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:TextBox runat="server" ID="name" class="form-control" placeholder="Enter Your Name" required="required" />
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:TextBox runat="server" ID="email" placeholder="Email" class="form-control" />
                                                </div>
                                            </div>

                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <asp:TextBox runat="server" ID="message" placeholder="Enter Your Message" TextMode="MultiLine" Rows="3" Columns="50" class="form-control" />
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <asp:Button ID="send" OnClick="send_Click" Text="Send" runat="server" class="btn btn-lg uf-ct-01-btn-primary my-3" Style="width: 100%;" />
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </form>
</body>
</html>
