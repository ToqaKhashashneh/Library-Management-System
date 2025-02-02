<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="Library_Website.Bilal.History" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        @import url("https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700");


        * {
            margin: 0;
            padding: 0;
            outline: none;
            text-decoration: none;
            list-style: none;
            font-family: 'Mulish', sans-serif;
        }

        body {
            display: flex;
            padding-top: 50px;
            justify-content: center;
            background: #ecf1f5;
            transform: scale(0.8) translateY(-50px);
        }

        .cardTop {
            width: 497px;
            height: 284px;
            background: #c7c7c7;
            border-radius: 20px;
            display: flex;
            overflow: hidden;
            align-items: flex-end;
        }

        .timeline {
            width: 355px;
            height: 696px;
            background: #ECF1F524;
            mix-blend-mode: normal;
            backdrop-filter: blur(15px);
            overflow: hidden;
            position: absolute;
            top: 144px;
            margin-left: 71px;
            box-shadow: 0px 20px 53px -30px rgba(95, 102, 173, 0.566816);
            border-radius: 10px;
        }

            .timeline h3 {
                font-family: 'Open Sans';
                font-style: normal;
                font-weight: bold;
                font-size: 22px;
                line-height: 30px;
                color: #FFFFFF;
                margin-left: 66px;
                margin-top: 40px;
            }

            .timeline label {
                font-family: 'Open Sans';
                font-style: normal;
                font-weight: normal;
                font-size: 16px;
                line-height: 22px;
                margin-left: 66px;
                margin-top: 10px;
                color: #FFFFFF;
            }

            .timeline .box {
                width: 100%;
                height: 509px;
                background: #fbfcfd;
                margin-top: 99.5px;
            }

                .timeline .box .container {
                    width: 100%;
                    height: 357px;
                    display: flex;
                }

                    .timeline .box .container .lines {
                        margin-left: 40px;
                        margin-top: 6px;
                    }

                        .timeline .box .container .lines .dot {
                            width: 14px;
                            height: 14px;
                            background: #D1D6E6;
                            border-radius: 7px;
                        }

                        .timeline .box .container .lines .line {
                            height: 103px;
                            width: 2px;
                            background: #D1D6E6;
                            margin-left: 5.3px;
                        }

                    .timeline .box .container .cards {
                        margin-left: 12px;
                        transform: translateY(-50px);
                    }

                        .timeline .box .container .cards .card {
                            width: 249px;
                            height: 93px;
                            padding-top: 25px;
                            background: #FFFFFF;
                            box-shadow: 0px 16px 15px -10px rgba(105, 96, 215, 0.0944602);
                            border-radius: 10px;
                            margin-bottom: 10px;
                        }

                            .timeline .box .container .cards .card.mid {
                                height: 71px;
                            }

                            .timeline .box .container .cards .card h4 {
                                font-family: 'Open Sans';
                                font-style: normal;
                                font-weight: bold;
                                font-size: 14px;
                                line-height: 19px;
                                margin-left: 25px;
                                margin-bottom: 5px;
                                color: #2B2862;
                            }

                            .timeline .box .container .cards .card p {
                                font-family: 'Open Sans';
                                font-style: normal;
                                font-weight: normal;
                                font-size: 16px;
                                line-height: 22px;
                                color: #2B2862;
                                margin-left: 25px;
                            }

                .timeline .box .bottom {
                    width: 100%;
                    height: 107px;
                    background: #fff;
                    box-shadow: 0 0 2px #eeeeee50;
                    padding-top: 45px;
                }

                    .timeline .box .bottom .btn {
                        width: 249px;
                        height: 62px;
                        background: #FFFFFF40;
                        mix-blend-mode: normal;
                        cursor: pointer;
                        border: 1px solid #8260D780;
                        border-radius: 5px;
                        display: flex;
                        align-items: center;
                        justify-content: center;
                        font-family: 'Open Sans';
                        font-style: normal;
                        font-weight: bold;
                        font-size: 14px;
                        line-height: 19px;
                        color: #2B2862;
                        margin-left: 53px;
                        transition: 0.3s;
                        background: #2B2862;
                        color: #fff;
                        border-color: #2B2862;
                    }

                        .timeline .box .bottom .btn:hover {
                            transform: scale(1.03);
                        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="main">

                <div class="cardTop">

                    <svg width="497" height="219" viewBox="0 0 497 219" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M-38.5 196C-38.5 196 34 91 133.5 91C233 91 427 159 532.5 30C638 -99 518 236 518 236L-49 246.5L-38.5 196Z" fill="#7d0ed7ba
" />
                    </svg>



                </div>


                <div class="timeline">

                    <h3>Updates</h3>
                    <label>23 in the last 7 hours</label>


                    <div class="box">

                        <div class="container">

                            <div class="lines">
                                <div class="dot"></div>
                                <div class="line"></div>
                                <div class="dot"></div>
                                <div class="line"></div>
                                <div class="dot"></div>
                                <div class="line"></div>
                            </div>

                            <div class="cards">
                                <div class="card">

                                    <h4>16:30</h4>
                                    <p>
                                        Believing Is The Absence<br />
                                        Of Doubt
                                    </p>
                                </div>
                                <div class="card mid">
                                    <h4>15:22</h4>
                                    <p>Start With A Baseline</p>
                                </div>
                                <div class="card">
                                    <h4>14:15</h4>
                                    <p>
                                        Break Through Self Doubt<br />
                                        And Fear
                                    </p>
                                </div>
                            </div>



                        </div>




                      
                    </div>


                </div>
            </div>
        </div>
    </form>
    <script>
       
            document.addEventListener("DOMContentLoaded", function () {

    const fileInput = document.createElement('input');
            fileInput.type = 'file';

            fileInput.addEventListener('change', function(event) {
        const file = event.target.files[0];
            if (file) {
            const reader = new FileReader();
            reader.onload = function(e) {
                const text = e.target.result;
            const lines = text.split('\n'); 

            const cardsContainer = document.querySelector(".cards");
            cardsContainer.innerHTML = ''; 

             
                lines.forEach(line => {
                    const parts = line.split('|'); 
            if (parts.length === 2) {
                        const time = parts[0];
            const text = parts[1];

            const card = document.createElement('div');
            card.classList.add('card');

            const h4 = document.createElement('h4');
            h4.textContent = time;

            const p = document.createElement('p');
            p.textContent = text;

            card.appendChild(h4);
            card.appendChild(p);

            cardsContainer.appendChild(card);
                    }
                });
            };

            reader.readAsText(file); 
        }
    });

          
            document.body.appendChild(fileInput);
});
    </script>

   
</body>
</html>--%>
