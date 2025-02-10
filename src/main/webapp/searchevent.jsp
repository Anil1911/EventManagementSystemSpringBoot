<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="home.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Event</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://images.unsplash.com/photo-1492684223066-81342ee5ff30?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #fff;
        }

        .container {
            padding: 40px 20px;
            text-align: center;
            background-color: rgba(0, 0, 0, 0.7); /* Add some transparency to the form container */
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 255, 87, 0.3);
        }

        h2 {
            font-size: 32px;
            color: #00ff57;
            margin-bottom: 30px;
        }

        form {
            display: inline-block;
            text-align: left;
            background-color: #111;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 255, 87, 0.3);
            width: 100%;
            max-width: 600px;
        }

        table {
            width: 100%;
            margin-top: 20px;
            color: #fff;
        }

        td {
            padding: 10px;
            font-size: 18px;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 2px solid #00ff57;
            border-radius: 5px;
            background-color: #222;
            color: #fff;
            font-size: 16px;
            margin-top: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            padding: 15px;
            border: none;
            border-radius: 5px;
            background-color: #00ff57;
            color: #000;
            font-weight: bold;
            font-size: 18px;
            text-transform: uppercase;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
            margin-top: 20px;
            box-sizing: border-box;
        }

        input[type="submit"]:hover {
            background-color: #ff00ff;
            transform: scale(1.05);
        }

        .status {
            margin-bottom: 20px;
            font-size: 18px;
            color: #ff6347;
            text-align: center;
        }

        .gallery {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 20px;
            margin-top: 40px;
        }

        .gallery img {
            width: 100%;
            border-radius: 10px;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .gallery img:hover {
            transform: scale(1.05);
            box-shadow: 0 5px 15px rgba(0, 255, 87, 0.7);
        }

        /* Responsive Design */
        @media screen and (max-width: 768px) {
            .container {
                padding: 30px 15px;
            }

            form {
                width: 90%;
            }

            table {
                font-size: 14px;
            }

            input[type="text"], input[type="submit"] {
                font-size: 14px;
            }
        }

    </style>
</head>
<body>

<!-- Main Container -->
<div class="container">
    <h2>Search Event</h2>

    <!-- Search Form -->
    <form action="findById" method="post">
        <!-- Status Message -->
        <% if (request.getAttribute("status") != null) { %>
        <div class="status">
            <h3><%= request.getAttribute("status") %></h3>
        </div>
        <% } %>

        <!-- Event ID Input -->
        <table>
            <tr>
                <td>ID</td>
                <td><input type="text" name="id" placeholder="Enter Event ID" required></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" value="Search Event">
                </td>
            </tr>
        </table>
    </form>

</div>

</body>
</html>
