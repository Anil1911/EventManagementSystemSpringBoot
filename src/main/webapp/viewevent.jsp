<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="home.jsp" %>

<hr>
<center>
	<!-- Event List Table -->
	<div class="table-container">
		<table>
			<tr>
				<th>ID</th>
				<th>Event Name</th>
				<th>Event Date</th>
				<th>Venue</th>
				<th>Capacity</th>
				<th>Description</th>
				<th>Contact Info</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach items="${event}" var="event">
			<tr>
				<td>${event.id}</td>
				<td>${event.eventName}</td>
				<td>${event.eventDate}</td>
				<td>${event.venue}</td>
				<td>${event.capacity}</td>
				<td>${event.description}</td>
				<td>${event.contactInfo}</td>
				<td><a href='updateevent.jsp?id=${event.id}&eventName=${event.eventName}&eventDate=${event.eventDate}&venue=${event.venue}&capacity=${event.capacity}&description=${event.description}&contactInfo=${event.contactInfo}'>Edit</a></td>
				<td><a href='deleteById?id=${event.id}'>Delete</a></td>
			</tr>
			</c:forEach>
		</table>
	</div>
</center>

<style>
    /* Body styling */
    body {
        font-family: 'Arial', sans-serif;
        background: linear-gradient(135deg, #1a1a1a, #333);
        color: #fff;
        margin: 0;
        padding: 0;
    }

    /* Table container for glassmorphism effect */
    .table-container {
        background: rgba(255, 255, 255, 0.1); /* Semi-transparent background */
        backdrop-filter: blur(10px); /* Glassmorphism effect */
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.5);
        width: 100%;
        max-width: 1000px;
        margin-top: 50px;
    }

    /* Table styling */
    table {
        width: 100%;
        border-collapse: collapse;
    }

    /* Table headers with glassmorphism */
    th {
        background: rgba(0, 255, 87, 0.3);
        backdrop-filter: blur(8px);
        color: #fff;
        padding: 15px;
        text-align: center;
        font-size: 18px;
        text-transform: uppercase;
    }

    /* Table rows */
    td {
        background-color: rgba(255, 255, 255, 0.1);
        border: 1px solid rgba(255, 255, 255, 0.3);
        padding: 15px;
        text-align: center;
    }

    /* Alternate row colors for better visibility */
    tr:nth-child(even) {
        background: rgba(255, 0, 255, 0.1); /* Neon pink */
    }

    tr:nth-child(odd) {
        background: rgba(0, 0, 0, 0.3); /* Dark background */
    }

    /* Row hover effect */
    tr:hover {
        background: rgba(255, 255, 255, 0.1);
    }

    /* Links in table */
    a {
        text-decoration: none;
        background: rgba(0, 255, 87, 0.8);
        color: #000;
        padding: 8px 15px;
        border-radius: 5px;
        font-weight: bold;
        transition: background 0.3s, transform 0.3s;
    }

    a:hover {
        background: rgba(255, 0, 255, 0.8); /* Neon pink on hover */
        color: #fff;
        transform: scale(1.05);
    }
</style>
