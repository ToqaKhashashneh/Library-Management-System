<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Library_Website.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.4.4.min.js"></script>
		<script src="https://tympanus.net/Tutorials/MoleskineNotebook/booklet/jquery.easing.1.3.js" type="text/javascript"></script>
		<script src="https://tympanus.net/Tutorials/MoleskineNotebook/booklet/jquery.booklet.1.1.0.min.js" type="text/javascript"></script>

		<link href="https://tympanus.net/Tutorials/MoleskineNotebook/booklet/jquery.booklet.1.1.0.css" type="text/css" rel="stylesheet" media="screen" />
		<link rel="stylesheet" href="https://tympanus.net/Tutorials/MoleskineNotebook/css/style.css" type="text/css" media="screen"/>

		<script src="https://tympanus.net/Tutorials/MoleskineNotebook/cufon/cufon-yui.js" type="text/javascript"></script>
		<script src="https://tympanus.net/Tutorials/MoleskineNotebook/cufon/ChunkFive_400.font.js" type="text/javascript"></script>
		<script src="https://tympanus.net/Tutorials/MoleskineNotebook/cufon/Note_this_400.font.js" type="text/javascript"></script>
		<script type="text/javascript">
            Cufon.replace('h1,p,.b-counter');
            Cufon.replace('.book_wrapper a', { hover: true });
            Cufon.replace('.title', { textShadow: '1px 1px #C59471', fontFamily: 'ChunkFive' });
            Cufon.replace('.reference a', { textShadow: '1px 1px #C59471', fontFamily: 'ChunkFive' });
            Cufon.replace('.loading', { textShadow: '1px 1px #000', fontFamily: 'ChunkFive' });
        </script>
	<style>
    .login-wrapper {
        width: 320px; /* Small compact form */
        height: 450px; /* Fixed height */
        margin: 50px auto;
        padding: 20px;
 
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .login-form {
        width: 100%;
        text-align: center;
    }

    .login-form h2 {
        font-size: 20px;
        margin-bottom: 20px;
    }

    .input-field {
        position: relative;
        margin-bottom: 12px;
    }

    .input-field input {
        width: 100%;
        padding: 8px 10px;
        font-size: 14px;
        border: 1px solid #ccc;
        border-radius: 5px;
        outline: none;
        background: white;
    }

    .input-field label {
        position: absolute;
        left: 10px;
        top: 10px;
        font-size: 12px;
        color: #666;
        transition: 0.3s;
    }

    .input-field input:focus + label,
    .input-field input:not(:placeholder-shown) + label {
        top: -10px;
        left: 8px;
        font-size: 10px;
        color: #007bff;
    }

    .remember-forgot {
        display: flex;
        justify-content: space-between;
        align-items: center;
        font-size: 12px;
        margin: 10px 0;
    }

    .remember-forgot label {
        cursor: pointer;
    }

    .remember-forgot a {
        color: #007bff;
        text-decoration: none;
    }

    .login-btn {
        width: 100%;
        padding: 10px;
        font-size: 14px;
        border: none;
        border-radius: 5px;
        background: #007bff;
        color: white;
        cursor: pointer;
        transition: 0.3s;
    }

    .login-btn:hover {
        background: #0056b3;
    }

    .register-link {
        font-size: 12px;
        margin-top: 15px;
    }

    .register-link a {
        color: #007bff;
        text-decoration: none;
    }






    .register-wrapper {
        width: 320px; /* Compact width */
        height: 450px; /* Fixed height */
        margin: 50px auto;
        padding: 20px;
        background: #f8f9fa;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .register-form {
        width: 100%;
        text-align: center;
    }

    .register-form h2 {
        font-size: 20px;
        margin-bottom: 15px;
    }

    .input-field {
        position: relative;
        margin-bottom: 10px;
    }

    .input-field input {
        width: 100%;
        padding: 8px 10px;
        font-size: 14px;
        border: 1px solid #ccc;
        border-radius: 5px;
        outline: none;
        background: white;
    }

    .input-field label {
        position: absolute;
        left: 10px;
        top: 10px;
        font-size: 12px;
        color: #666;
        transition: 0.3s;
    }

    .input-field input:focus + label,
    .input-field input:not(:placeholder-shown) + label {
        top: -10px;
        left: 8px;
        font-size: 10px;
        color: #007bff;
    }

    .register-btn {
        width: 100%;
        padding: 10px;
        font-size: 14px;
        border: none;
        border-radius: 5px;
        background: #007bff;
        color: white;
        cursor: pointer;
        transition: 0.3s;
    }

    .register-btn:hover {
        background: #0056b3;
    }

    .login-link {
        font-size: 12px;
        margin-top: 10px;
    }

    .login-link a {
        color: #007bff;
        text-decoration: none;
    }

</style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
        
		<div class="book_wrapper" style="margin-top: 10%;">
			<a id="next_page_button"></a>
			<a id="prev_page_button"></a>
			<div id="loading" class="loading">Loading pages...</div>
			<div id="mybook" style="display:none;">
				<div class="b-load">
					<div>
       <div class="login-wrapper">
    <div class="login-form">
        <h2>Login</h2>

        <div class="input-field">
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <label>Enter your email</label>
        </div>

        <div class="input-field">
            <asp:TextBox ID="password" TextMode="Password" runat="server"></asp:TextBox>
            <label>Enter your password</label>
        </div>

        <div class="remember-forgot">
            <asp:CheckBox ID="rememberMe" runat="server" />
            <label for="rememberMe">Remember Me</label>
            <a href="ForgotPassword.aspx">Forgot Password?</a>
        </div>

        <asp:Button ID="loginBtn" runat="server" OnClick="loginBtn_Click" Text="Login" class="login-btn" />

        <div class="register-link">
            <p>Don't have an account? <a href="Register.aspx">Sign Up</a></p>
        </div>
    </div>
</div>


 
						
						
					</div>
					<div>
						<img src="https://tympanus.net/Tutorials/MoleskineNotebook/images/2.jpg" alt="" />
						<h1>Animated Portfolio Gallery</h1>
						<p>Today we will create an animated portfolio gallery with jQuery.
							The gallery will contain a scroller for thumbnails and a
							content area where we will display details about the portfolio
							item. The image can be enlarged by clicking on it, making
							it appear as an overlay.</p>
						<a href="http://tympanus.net/codrops/2010/11/14/animated-portfolio-gallery/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/AnimatedPortfolioGallery/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<div class="register-wrapper">
    <div class="register-form">
        <h2>Register</h2>

        <div class="input-field">
            <asp:TextBox ID="firstName" runat="server"></asp:TextBox>
            <label>First Name</label>
        </div>

        <div class="input-field">
            <asp:TextBox ID="lastName" runat="server"></asp:TextBox>
            <label>Last Name</label>
        </div>

        <div class="input-field">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <label>Email</label>
        </div>

        <div class="input-field">
            <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>
            <label>Password</label>
        </div>

        <div class="input-field">
            <asp:TextBox ID="confirmPassword" TextMode="Password" runat="server"></asp:TextBox>
            <label>Confirm Password</label>
        </div>

        <asp:Button ID="registerBtn" runat="server" OnClick="Register_Click" Text="Register" class="register-btn" />

        <div class="login-link">
            <p>Already have an account? <a href="Login.aspx">Login</a></p>
        </div>
    </div>
</div>

					</div>
					<div>
						<img src="https://tympanus.net/Tutorials/MoleskineNotebook/images/4.jpg" alt="" />
						<h1>Bubbleriffic Image Gallery</h1>
						<p>In this tutorial we will create a bubbly image gallery that
							shows your images in a unique way. The idea is to show the
							thumbnails of albums in a rounded fashion allowing the
							user to scroll them automatically by moving the mouse.
							Clicking on a thumbnail will zoom in a big circle and
							the full image which will be automatically resized to
							fit into the screen.</p>
						<a href="http://tympanus.net/codrops/2010/12/10/bubbleriffic-image-gallery/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/BubblerifficImageGallery/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<img src="https://tympanus.net/Tutorials/MoleskineNotebook/images/5.jpg" alt="" />
						<h1>Collapsing Site Navigation</h1>
						<p>Today we will create a collapsing menu that contains vertical
							navigation bars and a slide out content area. When hovering
							over a menu item, an image slides down from the top and a
							submenu slides up from the bottom. Clicking on one of the
							submenu items will make the whole menu collapse like a card
							deck and the respective content area will slide out.</p>
						<a href="http://tympanus.net/codrops/2010/09/06/collapsing-site-navigation/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/CollapsingSiteNavigation/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<img src="https://tympanus.net/Tutorials/MoleskineNotebook/images/6.jpg" alt="" />
						<h1>Custom Animation Banner</h1>
						<p>In today’s tutorial we will be creating a custom animation banner with jQuery.
							The idea is to have different elements in a banner that will
							animate step-wise in a custom way.</p>
						<p>We will be using the jQuery Easing Plugin and the jQuery 2D
							Transform Plugin to create some nifty animations.</p>
						<a href="http://tympanus.net/codrops/2010/10/18/custom-animation-banner/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/CustomAnimationBanner/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<img src="https://tympanus.net/Tutorials/MoleskineNotebook/images/7.jpg" alt="" />
						<h1>Full Page Image Gallery</h1>
						<p>In this tutorial we are going to create a stunning full page
							gallery with scrollable thumbnails and a scrollable full
							screen preview. The idea is to have a thumbnails bar at
							the bottom of the page that scrolls automatically when
							the user moves the mouse. When a thumbnail is clicked,
							it moves to the center of the page and the full screen
							image is loaded in the background.</p>
						<a href="http://tympanus.net/codrops/2010/09/08/full-page-image-gallery/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/FullPageImageGallery/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<img src="https://tympanus.net/Tutorials/MoleskineNotebook/images/8.jpg" alt="" />
						<h1>Hover Slide Effect</h1>
						<p>Today we will create a neat effect with some images using
							jQuery. The main idea is to have an image area with several
							images that slide out when we hover over them, revealing
							other images. The sliding effect will be random, i.e.
							the images will slide to the top or bottom, left or
							right, fading out or not. When we click on any area,
							all areas will slide their images out.</p>
						<a href="http://tympanus.net/codrops/2010/11/16/hover-slide-effect/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/HoverSlideEffect/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<img src="https://tympanus.net/Tutorials/MoleskineNotebook/images/9.jpg" alt="" />
						<h1>Merging Image Boxes</h1>
						<p>Today we will show you a nice effect for images with jQuery.
							The idea is to have a set of rotated thumbnails that,
							once clicked, animate to form the selected image.
							You can navigate through the images with previous
							and next buttons and when the big image gets clicked
							it will scatter into the little box shaped thumbnails again.</p>
						<a href="http://tympanus.net/codrops/2010/11/30/merging-image-boxes/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Development/MergingImageBoxes/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<img src="https://tympanus.net/Tutorials/MoleskineNotebook/images/10.jpg" alt="" />
						<h1>Compact News Previewer</h1>
						<p>Today we will create a news previewer that let’s you
							show your latest articles or news in a compact way.
							The news previewer will show some list of articles
							on the left side and the preview of the article with a
							longer description on the right. Once a news on the left
							is clicked, the preview will slide in.</p>
						<a href="http://tympanus.net/codrops/2010/10/03/compact-news-previewer/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/CompactNewsPreviewer/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<img src="https://tympanus.net/Tutorials/MoleskineNotebook/images/11.jpg" alt="" />
						<h1>Overlay Effect Menu</h1>
						<p>In this tutorial we are going to create a simple menu
							that will stand out once we hover over it by covering
							everything except the menu with a dark overlay.
							The menu will stay white and a submenu area will
							expand. We will create this effect using jQuery.</p>
						<a href="http://tympanus.net/codrops/2010/11/25/overlay-effect-menu/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/OverlayEffectMenu/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<img src="https://tympanus.net/Tutorials/MoleskineNotebook/images/12.jpg" alt="" />
						<h1>Polaroid Photobar Gallery</h1>
						<p>In this tutorial we are going to create an image gallery
							with a Polaroid look. We will have albums that will expand
							to sets of slightly rotated thumbnails that pop out on hover.
							The full image will slide in from the bottom once a thumbnail
							is clicked. In the full image view the user can navigate
							through the pictures or simply choose another thumbnail
							to be displayed.</p>
						<a href="http://tympanus.net/codrops/2010/09/28/polaroid-photobar-gallery/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/PolaroidPhotobarGallery/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<img src="https://tympanus.net/Tutorials/MoleskineNotebook/images/13.jpg" alt="" />
						<h1>Pull Out Content Panel</h1>
						<p>In this tutorial we will create a content panel that 
							slides out at a predefined scroll position. It will 
							reveal a teaser with related content and it can be 
							expanded to full page size to show more. A custom 
							slider allows to scroll through many items in the 
							panel.</p>
						<a href="http://tympanus.net/codrops/2010/11/01/pull-out-content-panel/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/PullOutContentPanel/" target="_blank" class="demo">Demo</a>
					</div>
					<div>
						<img src="https://tympanus.net/Tutorials/MoleskineNotebook/images/14.jpg" alt="" />
						<h1>Thumbnails Navigation Gallery</h1>
						<p>In this tutorial we are going to create an extraordinary
							gallery with scrollable thumbnails that slide out from a
							navigation. We are going to use jQuery and some CSS3
							properties for the style. The main idea is to have a
							menu of albums where each item will reveal a horizontal
							bar with thumbnails when clicked.</p>
						<a href="http://tympanus.net/codrops/2010/07/29/thumbnails-navigation-gallery/" target="_blank" class="article">Article</a>
						<a href="http://tympanus.net/Tutorials/ThumbnailsNavigationGallery/" target="_blank" class="demo">Demo</a>
					</div>
				</div>
			</div>
		</div>
       

        <!-- The JavaScript -->

      
        </div>
    </form>
	 <script type="text/javascript">
         $(function () {
             var $mybook = $('#mybook');
             var $bttn_next = $('#next_page_button');
             var $bttn_prev = $('#prev_page_button');
             var $loading = $('#loading');
             var $mybook_images = $mybook.find('img');
             var cnt_images = $mybook_images.length;
             var loaded = 0;
             //preload all the images in the book,
             //and then call the booklet plugin

             $mybook_images.each(function () {
                 var $img = $(this);
                 var source = $img.attr('src');
                 $('<img/>').load(function () {
                     ++loaded;
                     if (loaded == cnt_images) {
                         $loading.hide();
                         $bttn_next.show();
                         $bttn_prev.show();
                         $mybook.show().booklet({
                             name: null,                            // name of the booklet to display in the document title bar
                             width: 800,                             // container width
                             height: 500,                             // container height
                             speed: 600,                             // speed of the transition between pages
                             direction: 'LTR',                           // direction of the overall content organization, default LTR, left to right, can be RTL for languages which read right to left
                             startingPage: 0,                               // index of the first page to be displayed
                             easing: 'easeInOutQuad',                 // easing method for complete transition
                             easeIn: 'easeInQuad',                    // easing method for first half of transition
                             easeOut: 'easeOutQuad',                   // easing method for second half of transition

                             closed: true,                           // start with the book "closed", will add empty pages to beginning and end of book
                             closedFrontTitle: null,                            // used with "closed", "menu" and "pageSelector", determines title of blank starting page
                             closedFrontChapter: null,                            // used with "closed", "menu" and "chapterSelector", determines chapter name of blank starting page
                             closedBackTitle: null,                            // used with "closed", "menu" and "pageSelector", determines chapter name of blank ending page
                             closedBackChapter: null,                            // used with "closed", "menu" and "chapterSelector", determines chapter name of blank ending page
                             covers: false,                           // used with  "closed", makes first and last pages into covers, without page numbers (if enabled)

                             pagePadding: 10,                              // padding for each page wrapper
                             pageNumbers: true,                            // display page numbers on each page

                             hovers: false,                            // enables preview pageturn hover animation, shows a small preview of previous or next page on hover
                             overlays: false,                            // enables navigation using a page sized overlay, when enabled links inside the content will not be clickable
                             tabs: false,                           // adds tabs along the top of the pages
                             tabWidth: 60,                              // set the width of the tabs
                             tabHeight: 20,                              // set the height of the tabs
                             arrows: false,                           // adds arrows overlayed over the book edges
                             cursor: 'pointer',                       // cursor css setting for side bar areas

                             hash: false,                           // enables navigation using a hash string, ex: #/page/1 for page 1, will affect all booklets with 'hash' enabled
                             keyboard: true,                            // enables navigation with arrow keys (left: previous, right: next)
                             next: $bttn_next,          			// selector for element to use as click trigger for next page
                             prev: $bttn_prev,          			// selector for element to use as click trigger for previous page

                             menu: null,                            // selector for element to use as the menu area, required for 'pageSelector'
                             pageSelector: false,                           // enables navigation with a dropdown menu of pages, requires 'menu'
                             chapterSelector: false,                           // enables navigation with a dropdown menu of chapters, determined by the "rel" attribute, requires 'menu'

                             shadows: true,                            // display shadows on page animations
                             shadowTopFwdWidth: 166,                             // shadow width for top forward anim
                             shadowTopBackWidth: 166,                             // shadow width for top back anim
                             shadowBtmWidth: 50,                              // shadow width for bottom shadow

                             before: function () { },                    // callback invoked before each page turn animation
                             after: function () { }                     // callback invoked after each page turn animation
                         });
                         Cufon.refresh();
                     }
                 }).attr('src', source);
             });

         });
     </script>
</body>
	 
</html>

