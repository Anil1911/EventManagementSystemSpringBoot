<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="home.jsp" %>
<hr>
<html>
<body>
<center>

    <style>
        /* Set the background image */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://cdn.create.vista.com/api/media/small/12618788/stock-photo-dancing-in-nightclub');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #fff;
        }

        /* Event Table Styling */
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: rgba(0, 0, 0, 0.7);
            border-radius: 8px;
        }

        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #00ff57;
            color: black;
            font-size: 20px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        /* Error message styling */
        .message {
            color: red;
            font-size: 18px;
            text-align: center;
            margin-top: 20px;
        }

        /* Responsive Design */
        @media screen and (max-width: 768px) {
            table {
                width: 100%;
                font-size: 14px;
            }

            th, td {
                padding: 10px;
            }
        }
    </style>

    <!-- Event Table Rendering -->
    <c:if test="${not empty event}">
        <table>
            <thead>
            <tr>
                <th>ID</th>
                <th>Event Name</th>
                <th>Event Date</th>
                <th>Venue</th>
                <th>Capacity</th>
                <th>Description</th>
                <th>Contact Info</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>${event.id}</td>
                <td>${event.eventName}</td>
                <td>${event.eventDate}</td>
                <td>${event.venue}</td>
                <td>${event.capacity}</td>
                <td>${event.description}</td>
                <td>${event.contactInfo}</td>
            </tr>
            </tbody>
        </table>
    </c:if>

    <!-- Message when no event is found -->
    <c:if test="${empty event}">
        <div class="message">
            <h3>No Event found for the given ID.</h3>
        </div>
    </c:if>

</center>
</body>
</html>
