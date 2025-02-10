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

        /* Header Styling */
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

        .header span {
            color: #00ff57;
        }

        .header .buttons {
            display: flex;
            gap: 15px;
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

        .link-container button {
            text-decoration: none;
            background-color: #00ff57;
            color: #000;
            padding: 15px 30px;
            border-radius: 30px;
            font-size: 18px;
            font-weight: bold;
            text-transform: uppercase;
            transition: transform 0.3s, box-shadow 0.3s, background-color 0.3s;
            display: inline-block;
        }

        .link-container button:hover {
            transform: scale(1.1);
            box-shadow: 0 10px 20px rgba(0, 255, 87, 0.5);
            background-color: #ff00ff;
        }

        /* Modal (Add Event Form) Styles */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            overflow: auto;
            padding-top: 60px;
        }

        /* Modal Content */
        .modal-content {
            background-color: #111;
            margin: 5% auto;
            padding: 20px;
            border-radius: 10px;
            width: 50%;
            color: #fff;
            box-shadow: 0px 4px 10px rgba(0, 255, 87, 0.3);
        }

        /* Close Button */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: #ff00ff;
            text-decoration: none;
            cursor: pointer;
        }

        /* Form Styling inside the Modal */
        .modal form {
            display: block;
            width: 100%;
            text-align: left;
        }

        .modal input, .modal select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .modal input[type="submit"] {
            background-color: #00ff57;
            color: #000;
            font-weight: bold;
            text-transform: uppercase;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
        }

        .modal input[type="submit"]:hover {
            background-color: #ff00ff;
            transform: scale(1.05);
        }

        /* Section Styles for About and Contact */
        .section {
            padding: 40px;
            margin: 0 auto;
            max-width: 800px;
            text-align: center;
            background-color: #111;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 255, 87, 0.3);
            margin-bottom: 40px;
        }

        .section h2 {
            font-size: 28px;
            color: #00ff57;
            margin-bottom: 20px;
        }

        .section p {
            font-size: 18px;
            color: #aaa;
            line-height: 1.6;
        }

    </style>
</head>
<body>

    <!-- Header Section -->
    <div class="header">
        <div>Event <span>Management</span> System</div>
        <div class="buttons">
            <button onclick="scrollToAboutUs()">About</button> <!-- About Us Button -->
            <button onclick="scrollToContactUs()">Contact Us</button> <!-- Contact Us Button -->
        </div>
    </div>

    <!-- Main Content -->
    <div class="container">
        <h1>Welcome to the Event Page</h1>
        <p>Select an action below to manage your events:</p>

        <!-- Centered "Add Event" button, styled like the other buttons -->
        <div class="link-container">
            <button onclick="openModal()" class="add-event-btn">Add New Event</button>
        </div>

        <!-- Additional action buttons below -->
        <div class="link-container">
            <button onclick="window.location.href='searchevent.jsp'">Search Events</button>
            <button onclick="window.location.href='findAll'">View All Events</button>
        </div>
    </div>

    <!-- Modal for Add Event Form -->
    <div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <h2>Add New Event</h2>
            <form action="save" method="post">
                <label for="eventName">Event Name</label>
                <select name="eventName" id="eventName" required>
                    <option value="">----Select----</option>
                    <option value="Marriage">Marriage</option>
                    <option value="Birthday">Birthday</option>
                    <option value="Anniversary">Anniversary</option>
                    <option value="Retirement Party">Retirement Party</option>
                    <option value="Reunion">Reunion</option>
                    <option value="Farewell">Farewell</option>
                </select>

                <label for="eventDate">Date</label>
                <input type="date" name="eventDate" id="eventDate" required>

                <label for="venue">Venue</label>
                <input type="text" name="venue" id="venue" required>

                <label for="capacity">Capacity</label>
                <input type="number" name="capacity" id="capacity" min="1" required>

                <label for="description">Description</label>
                <input type="text" name="description" id="description" required>

                <label for="contactInfo">Contact Info</label>
                <input type="text" name="contactInfo" id="contactInfo" required>

                <input type="submit" value="Save">
            </form>
        </div>
    </div>

    <!-- About Us Section -->
    <div class="section" id="about-us">
        <h2>About</h2>
        <p>We are a passionate team dedicated to creating memorable and seamless event experiences. Our goal is to help you plan and execute events that will leave a lasting impression. From weddings to corporate events, we are here to assist with every detail.</p>
    </div>

    <!-- Contact Us Section -->
    <div class="section" id="contact-us">
        <h2>Contact Us</h2>
        <p>If you have any questions or need assistance, feel free to reach out to us. We are available via email, phone, or through our online form. We look forward to hearing from you!</p>
    </div>

    <script>
        // Function to scroll to the About Us section
        function scrollToAboutUs() {
            document.getElementById("about-us").scrollIntoView({ behavior: "smooth" });
        }

        // Function to scroll to the Contact Us section
        function scrollToContactUs() {
            document.getElementById("contact-us").scrollIntoView({ behavior: "smooth" });
        }

        // Modal open/close functions
        function openModal() {
            document.getElementById("myModal").style.display = "block";
        }

        function closeModal() {
            document.getElementById("myModal").style.display = "none";
        }
    </script>

</body>
</html>
