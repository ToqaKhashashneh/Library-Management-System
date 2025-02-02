<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Show_meeting.aspx.cs" Inherits="Library_Website.Ayman.Show_meeting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <style>
        @import url("https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Montserrat:wght@700&display=swap");

:root {
  /* Colors */
  --brand-color: hsl(46, 100%, 50%);
  --black: hsl(0, 0%, 0%);
  --white: hsl(0, 0%, 100%);
  /* Fonts */
  --font-title: "Montserrat", sans-serif;
  --font-text: "Lato", sans-serif;
}

/* RESET */

/* Box sizing rules */
*,
*::before,
*::after {
  box-sizing: border-box;
}

/* Remove default margin */
body,
h2,
p {
  margin: 0;
}

/* GLOBAL STYLES */
body {
  display: grid;
  place-items: center;
  height: 100vh;
}

h2 {
  font-size: 2.25rem;
  font-family: var(--font-title);
  color: var(--white);
  line-height: 1.1;
}

p {
  font-family: var(--font-text);
  font-size: 1rem;
  line-height: 1.5;
  color: var(--white);
}

.flow > * + * {
  margin-top: var(--flow-space, 1em);
}

/* CARD COMPONENT */

.card {
  display: grid;
  place-items: center;
  width: 80vw;
  max-width: 21.875rem;
  height: 28.125rem;
  overflow: hidden;
  border-radius: 0.625rem;
  box-shadow: 0.25rem 0.25rem 0.5rem rgba(0, 0, 0, 0.25);
}

.card > * {
  grid-column: 1 / 2;
  grid-row: 1 / 2;
}

.card__background {
  object-fit: cover;
  max-width: 100%;
  height: 100%;
}

.card__content {
  --flow-space: 0.9375rem;
  display: flex;
  flex-direction: column;
  justify-content: flex-end;
  align-self: flex-end;
  height: 60%;
  padding: 10% 1.25rem 1.875rem;
  background: linear-gradient(
    180deg,
    hsla(0, 0%, 0%, 0) 0%,
    hsla(0, 0%, 0%, 0.3) 10%,
    hsl(0, 0%, 0%) 100%
  );
  opacity: 0;
  transform: translateY(50%);
  transition: opacity 0.5s ease-in, transform 0.5s ease-in;
}

.card__content--container {
  --flow-space: 1.25rem;
  display: flex;
  flex-direction: column;
  align-items: flex-start;
}

.card__title {
  position: relative;
  width: fit-content;
  width: -moz-fit-content; /* Prefijo necesario para Firefox */
  margin-bottom: 0.5rem; /* Adding space for the line */
}

.card__title::after {
  content: "";
  position: absolute;
  height: 0.3125rem;
  width: 100%;
  bottom: -0.5rem; /* Positioning the line just below the title */
  left: 0;
  background-color: var(--brand-color);
  opacity: 0;
  transition: opacity 0.5s ease;
}

.card__button {
  padding: 0.75em 1.6em;
  width: fit-content;
  width: -moz-fit-content; /* Prefijo necesario para Firefox */
  font-variant: small-caps;
  font-weight: bold;
  border-radius: 0.45em;
  border: none;
  background-color: var(--brand-color);
  font-family: var(--font-title);
  font-size: 1.125rem;
  color: var(--black);
  opacity: 0;
  transition: opacity 0.5s ease 0.5s;
}

.card__button:focus {
  outline: 2px solid black;
  outline-offset: -5px;
}

@media (any-hover: hover) and (any-pointer: fine) {
  .card:hover .card__content {
    opacity: 1;
    transform: translateY(0);
  }

  .card:hover .card__title::after {
    opacity: 1;
    transition: opacity 0.5s ease 0.5s;
  }

  .card:hover .card__button {
    opacity: 1;
    transition: opacity 0.5s ease 1s;
  }
}

.conta {
  display: grid;
  grid-template-columns: repeat(3, 1fr); 
  gap: 3rem; 
  justify-items: center; 
}

@media (max-width: 768px) {
  .conta {
    grid-template-columns: repeat(2, 1fr); /* 2 columns on medium screens */
  }
}

@media (max-width: 480px) {
  .conta {
    grid-template-columns: 1fr; /* 1 column on small screens */
  }
}
    </style>
    <title>Meeting Show</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="conta">
            <article class="card">
                <img class="card__background" src="https://i.pinimg.com/originals/f4/2b/c1/f42bc16b2133e23bc318b92d39bede1d.jpg" alt="Research Room" />
                <div class="card__content">
                    <div class="card__content--container">
                        <h2 class="card__title">Research Room</h2>
                        <p class="card__description">
                         A room dedicated to research and learning with tables, computers, and a research library.
                        </p>
                    </div>
                    <asp:Button ID="button1" runat="server" OnClick="button1_Click" class="card__button" Text="More Details"/>
                </div>
            </article>

            <article class="card">
                <img class="card__background" src="https://wallpaperaccess.com/full/3099847.jpg" alt="Discussion Room" />
                <div class="card__content">
                    <div class="card__content--container">
                        <h2 class="card__title">Discussion Room</h2>
                        <p class="card__description">
                           A room designed for group discussions and brainstorming. It features an open design with flexible seating arrangements.
                        </p>
                    </div>
                    <asp:Button ID="button2" runat="server" OnClick="button2_Click" class="card__button" Text="More Details"/>
                </div>
            </article>

            <article class="card">
                <img class="card__background" src="https://officesnapshots.com/wp-content/uploads/2023/11/amanat-holdings-offices-dubai-8-1024x836.jpg" alt="Knowledge Room" />
                <div class="card__content">
                    <div class="card__content--container">
                        <h2 class="card__title">Knowledge Room</h2>
                        <p class="card__description">
                          A room containing a wide range of educational resources such as books, journals, and digital media.
                        </p>
                    </div>
                    <asp:Button ID="button3" runat="server" OnClick="button3_Click" class="card__button" Text="More Details"/>
                </div>
            </article>

            <article class="card">
                <img class="card__background" src="https://bellia.net/wp-content/gallery/hfm/cinf2.jpg" alt="Creativity Room" />
                <div class="card__content">
                    <div class="card__content--container">
                        <h2 class="card__title">Creativity Room</h2>
                        <p class="card__description">
                            A room designed to foster creativity and innovation. It is equipped with whiteboards, design tools, and projectors.
                        </p>
                    </div>
                    <asp:Button ID="button4" runat="server" OnClick="button4_Click" class="card__button" Text="More Details"/>
                </div>
            </article>

            <article class="card">
                <img class="card__background" src="https://f.hubspotusercontent20.net/hubfs/2917278/FlowoodGallery7.jpg" alt="Training Room" />
                <div class="card__content">
                    <div class="card__content--container">
                        <h2 class="card__title">Training Room</h2>
                        <p class="card__description">
                           A room designed for training sessions and presentations. It is equipped with large screens and rows of tables for efficient information sharing.
                        </p>
                    </div>
                    <asp:Button ID="button5" runat="server" OnClick="button5_Click" class="card__button" Text="More Details"/>
                </div>
            </article>

            <article class="card">
                <img class="card__background" src="https://lightwerks.com/wp-content/uploads/2019/02/conferenceroompic.jpg" alt="Analysis Room" />
                <div class="card__content">
                    <div class="card__content--container">
                        <h2 class="card__title">Analysis Room</h2>
                        <p class="card__description">
                           A room equipped for data analysis or meetings to discuss research results. It has large screens and tools for analyzing data.
                        </p>
                    </div>
                    <asp:Button ID="button6" runat="server" OnClick="button6_Click" class="card__button" Text="More Details"/>
                </div>
            </article>

        </div>
    </form>
</body>
</html>
