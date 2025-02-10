<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Management System</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #000;
            color: #fff;
        }

       
        .header {
            display: flex;
            justify-content: space-between; 
            align-items: center; 
            height: 80px;
            background-color: #000;
            padding: 0 40px; 
            text-transform: uppercase;
            font-weight: bold;
            font-size: 24px;
            color: #fff;
            border-bottom: 2px solid #00ff57;
        }

        /* Title Styling */
        .header span {
            color: #00ff57; /* Neon green */
        }

        /* Ensure buttons are aligned side by side */
        .header .buttons {
            display: flex;
            gap: 15px; /* Space between the buttons */
        }

        .header .buttons button {
            padding: 12px 25px;
            font-size: 16px;
            background-color: #00ff57;
            color: #000;
            border-radius: 30px;
            border: none;
            text-transform: uppercase;
            font-weight: bold;
            transition: transform 0.3s, box-shadow 0.3s, background-color 0.3s;
        }

        .header .buttons button:hover {
            transform: scale(1.1);
            box-shadow: 0 10px 20px rgba(0, 255, 87, 0.5);
            background-color: #ff00ff;
        }

        /* Main Content Styles */
        .container {
            padding: 40px 20px;
            text-align: center;
        }

        h1 {
            font-size: 32px;
            margin-bottom: 20px;
            color: #fff;
        }

        p {
            font-size: 18px;
            color: #aaa;
        }

        .link-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
            margin-top: 30px;
        }

        .link-container a {
            text-decoration: none;
            background-color: #00ff57;
            color: #000;
            padding: 15px 30px;
            border-radius: 30px;
            font-size: 18px;
            font-weight: bold;
            text-transform: uppercase;
            transition: transform 0.3s, box-shadow 0.3s, background-color 0.3s;
        }

        .link-container a:hover {
            transform: scale(1.1);
            box-shadow: 0 10px 20px rgba(0, 255, 87, 0.5);
            background-color: #ff00ff;
        }

      

        /* Footer Styles */
        .footer {
            margin-top: 40px;
            padding: 20px;
            background-color: #111;
            font-size: 14px;
            color: #aaa;
            text-align: center;
        }

        /* Glass Effect for About Section */
        .about {
            margin-top: 40px;
            padding: 30px;
            background: rgba(255, 255, 255, 0.1); /* Semi-transparent white background */
            border-radius: 10px;
            backdrop-filter: blur(8px); /* Blurring the background */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2); /* Adding shadow for depth */
            color: #fff;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center; /* Centers the content horizontally */
            text-align: center; /* Ensures the text is centered */
        }

        /* About Us Section Title Styling */
        .about h2 {
            font-size: 28px;
            margin-bottom: 10px;
            color: #00ff57;
        }

        /* About Us Section Text Styling */
        .about p {
            font-size: 18px;
            color: #aaa;
            max-width: 800px; /* Limit width of the paragraph for readability */
            margin: 0 auto;
        }

        /* Contact Section */
        .contact {
            margin-top: 40px;
            padding: 20px;
            background-color: #222;
            border-radius: 10px;
            color: #fff;
        }

        .contact h2 {
            font-size: 28px;
            margin-bottom: 10px;
            color: #00ff57;
        }

        .contact p {
            font-size: 18px;
            color: #aaa;
        }

        .contact p a {
            color: #00ff57;
            text-decoration: none;
            font-weight: bold;
        }

        .contact p a:hover {
            text-decoration: underline;
        }

        /* Container for About Us and Contact Us side by side */
        .about-contact-container {
            display: flex;
            justify-content: space-between;
            gap: 20px;
            margin-top: 40px;
        }

        .about, .contact {
            flex: 1; /* Makes each section take equal space */
            padding: 30px;
        }

        /* Make the sections look nice on mobile screens */
        @media (max-width: 768px) {
            .about-contact-container {
                flex-direction: column;
            }

            .about, .contact {
                flex: none;
                width: 100%;
                margin-bottom: 20px;
            }
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <div class="header">
        <div>Event <span>Management</span> System</div>
        <!-- Container for About Us and Contact Us buttons side by side -->
        <div class="buttons">
            <button onclick="scrollToAboutUs()">About</button>
            <button onclick="scrollToContactUs()">Contact Us</button>
        </div>
    </div>

    <!-- Main Content -->
    <div class="container">
        <h1>Welcome to the Event Page</h1>
        <p>Select an action below to manage your events:</p>
        <div class="link-container">
            <a href="addevent.jsp">Add Event</a>
            <a href="searchevent.jsp">Search Events</a>
            <a href="findAll">View All Events</a>
        </div>

        <%@include file="gallery.jsp" %>

        <!-- About Us and Contact Us Sections Side by Side -->
        <div class="about-contact-container">
            <!-- About Us Section -->
            <div class="about" id="about-us">
                <h2>About</h2>
                <p>We are a passionate team dedicated to creating memorable and seamless event experiences. Our Event Management System is designed to help you organize, manage, and enjoy your events with ease. Whether it's a small gathering or a large celebration, we provide all the tools you need for a successful event.</p>
            </div>

            <!-- Contact Us Section -->
            <div class="contact" id="contact-us">
                <h2>Contact Us</h2>
                <p>If you have any questions or need assistance, feel free to reach out to us:</p>
                <p>Email: <a href="mailto:contact@eventmanagement.com">contact@eventmanagement.com</a></p>
                <p>Phone: +1 (123) 456-7890</p>
                <p>Address: 123 Event St., Event City, EC 45678</p>
            </div>
        </div>
    </div>

	
    <div class="footer">
    
        <p>&copy; 2024 Event Management System. All rights reserved.</p>
    </div>

    <script>
        function scrollToAboutUs() {
            document.getElementById('about-us').scrollIntoView({ behavior: 'smooth' });
        }

        function scrollToContactUs() {
            document.getElementById('contact-us').scrollIntoView({ behavior: 'smooth' });
        }
    </script>
</body>
</html>
