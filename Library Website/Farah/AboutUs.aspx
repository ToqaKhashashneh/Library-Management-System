<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Library_Website.Farah.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        @import url('https://fonts.googleapis.com/css?family=Roboto');

        body {
            margin: 0;
            font-family: 'Roboto', sans-serif;

        }

        .header {
            width: 100%;
            height: 500px;
            opacity: .8;

            background-image: url('https://img.freepik.com/premium-vector/people-multilingual-greeting-man-woman-characters-speak-different-languages-multicultural-diverse-persons-various-race-ethnicity-vector-cartoon-set_102902-7844.jpg?w=1380');
            background-size: cover;
            background-position: bottom;
        }

        .container {
            width: 100%;
        }

        .container h1 {
            font-size: 50px
        }

        .about {
            padding: 5% 0;
            width: 100%;
            height: auto;
            background-color: #fff;
        }

        .about .left {
            padding: 2% 0;
            float: left;
            width: 50%;
            display: inline-block;
        }

        .about .right {
            width: 50%;
            display: inline-block;
        }

        .about .right img {
            margin-left: 10%;
            width: 80%
        }

        .about .left h1 {
            text-align: center;
            color: #7d0ed7ba;
            margin: 0 0 10px 0;
        }

        .about .left hr {
            width: 20%;
            border-top: 2px solid #000;
            border-bottom: none;
        }

        .about .left p {
            font-size: 1rem;
            margin: 40px auto;
            width: 80%
        }

        .mission {
            padding: 5% 0;
            width: 100%;
            height: auto;
            background-color: #fff;
        }

        .mission .right {
            padding: 2% 0;
            width: 50%;

            display: inline-block;
        }

        .mission .left {
            float: left;
            width: 50%;

            display: inline-block;
        }

        .mission .left img {
            width: 80%;
            margin-left: 10%;
        }

        .mission .right h1 {
            text-align: center;
            color: #7d0ed7ba;
            margin: 0 0 20px 0;
        }

        .mission .right hr {
            width: 35%;
            border-top: 2px solid #000;
            border-bottom: none;
        }

        .mission .right p {
            font-size: 1rem;
            margin: 40px auto;
            width: 80%
        }

        .team h1 {
            text-align: center;
            color: #7d0ed7ba;
            margin-bottom: 25px;
        }

        .team p{
            text-align: center;
            font-size: 1rem;
            margin: 0 10%;
            margin-bottom: 75px;
        }

        .clear {
            clear: both;
        }

        /* media */
        @media(max-width:1200px) {
            .mission .right p {
                font-size: .8rem;
                margin: 20px auto;
            }

            .about .left p {
                font-size: .8rem;
                margin: 20px auto;
            }
        }


        @media(max-width:992px) {
            .about .left {
                width: 100%;
            }

            .about .right {
                width: 100%;
            }

            .mission .left {
                width: 100%;
            }

            .mission .right {
                width: 100%;
            }

            .team .card {
                width: 40%;
            }
        }

        @media(max-width:768px) {
            .team .card {
                width: 100%;
            }

            nav {
                height: 80px;
            }
        }


        .card {
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            width: 320px;
            border-radius: 24px;
            line-height: 1.6;
            transition: all 0.48s cubic-bezier(0.23, 1, 0.32, 1);
        }

        .content {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            /* gap: 24px; */
            padding: 36px;
            border-radius: 22px;
            color: #ffffff;
            overflow: hidden;
            background: #7d0ed7;
            transition: all 0.48s cubic-bezier(0.23, 1, 0.32, 1);
            height: 76%;
        }

        .content::before {
            position: absolute;
            content: "";
            top: -4%;
            left: 50%;
            width: 90%;
            height: 90%;
            transform: translate(-50%);
            background: #7d0ed774;
            z-index: -1;
            transform-origin: bottom;

            border-radius: inherit;
            transition: all 0.48s cubic-bezier(0.23, 1, 0.32, 1);
        }

        .content::after {
            position: absolute;
            content: "";
            top: -8%;
            left: 50%;
            width: 80%;
            height: 80%;
            transform: translate(-50%);
            background: #7d0ed73e;
            z-index: -2;
            transform-origin: bottom;
            border-radius: inherit;
            transition: all 0.48s cubic-bezier(0.23, 1, 0.32, 1);
        }

        .content svg {
            width: 48px;
            height: 48px;
        }

        .content .para {
            z-index: 1;
            opacity: 1;
            font-size: 18px;
            transition: all 0.48s cubic-bezier(0.23, 1, 0.32, 1);
        }

       
        .card:hover {
            transform: translate(0px, -16px);
        }

        .card:hover .content::before {
            rotate: -8deg;
            top: 0;
            width: 100%;
            height: 100%;
        }

        .card:hover .content::after {
            rotate: 8deg;
            top: 0;
            width: 100%;
            height: 100%;
        }

        .services {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: center;
            gap: 50px;
        }

        .icons i {
            font-size: 200%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">

    </div>


    <div class="container">

        <div class="about">
            <div class="left">
                <h1>About Us</h1>

                <p>Welcome to the (----------------)! We are a leading institute dedicated to empowering our students
                    with new language skills through an engaging and inclusive learning environment. We believe that
                    learning languages opens doors to new worlds and diverse cultures, and we take pride in offering
                    various services to support your educational journey.</p>



            </div>
            <div class="right">
                <img src="https://images.pexels.com/photos/4348401/pexels-photo-4348401.jpeg">
            </div>
            <div class="clear"></div>
        </div>



        <div class="mission">

            <div class="left">
                <img
                    src="https://images.pexels.com/photos/14814060/pexels-photo-14814060.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1">
            </div>
            <div class="right">
                <h1>Our Story</h1>

                <p>The (----------------) was founded with a clear vision: to make language learning an enjoyable and
                    accessible experience for everyone. We started our journey with a passion for helping individuals
                    overcome language barriers and embrace global cultures. Since our establishment, we have worked
                    tirelessly to provide a modern educational environment that combines innovative teaching methods
                    with rich resources to help our students achieve their linguistic goals.</p>



            </div>
            <div class="clear"></div>

        </div>

        <div class="team">
            <h1> services</h1>
            <p>At the (--------------), we strive to provide not only high-quality education but also the tools and
                spaces necessary for effective learning. Our services are designed to complement your studies and create
                an environment that fosters growth and success.</p>
        </div>

        <div class="services">

            <div class="card">
                <div class="content">
                    <div class="icons">
                        <i class="fas fa-chalkboard-teacher"></i>
                    </div>
                    <h4>Online Learning Platform:</h4>
                    <p class="para">
                        Access our user-friendly online portal, which provides a range of interactive courses, virtual
                        classrooms, and multimedia resources for learning languages at your own pace.
                    </p>
                </div>
            </div>

            <div class="card">
                <div class="content">
                    <div class="icons">
                        <i class="fas fa-users"></i>
                    </div>
                    <h4>Cultural Workshops & Events:</h4>
                    <p class="para">
                        Participate in cultural workshops, events, and celebrations that immerse you in the traditions,
                        food, music, and art of the language you're learning. These events allow you to practice your
                        skills in real-life contexts.
                    </p>
                </div>
            </div>

            <div class="card">
                <div class="content">
                    <div class="icons">
                        <i class="fas fa-file-alt"></i>
                    </div>
                    <h4>Language Proficiency Testing:</h4>
                    <p class="para">
                        We offer official language proficiency testing, so you can track your progress and obtain
                        recognized certifications for your language skills, which will be useful for personal, academic,
                        or professional growth.
                    </p>
                </div>
            </div>

            <div class="card">
                <div class="content">
                    <div class="icons">
                        <i class="fas fa-user-graduate"></i>
                    </div>
                    <h4>One-on-One Tutoring:</h4>
                    <p class="para">
                        For a more personalized learning experience, we offer private tutoring sessions with expert
                        instructors who will tailor lessons to your specific needs and pace.
                    </p>
                </div>
            </div>

            <div class="card">
                <div class="content">
                    <div class="icons">
                        <i class="fas fa-volume-up"></i>
                    </div>
                    <h4>Pronunciation and Accent Training:</h4>
                    <p class="para">
                        Enhance your speaking skills with special classes dedicated to perfecting pronunciation and
                        reducing accents, helping you communicate more effectively and with confidence.
                    </p>
                </div>
            </div>

            <div class="card">
                <div class="content">
                    <div class="icons">
                        <i class="fas fa-child"></i>
                    </div>
                    <h4>Child and Teen Language Programs:</h4>
                    <p class="para">
                        We offer specially designed programs for children and teenagers to make learning a new language
                        fun and interactive, with age-appropriate materials and teaching methods.
                    </p>
                </div>
            </div>

        </div>
    </div>
        </div>
    </form>

      <script src="https://kit.fontawesome.com/20637403cc.js" crossorigin="anonymous"></script>
</body>
</html>
