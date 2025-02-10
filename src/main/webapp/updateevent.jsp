<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="index.jsp" %>

<style>
    body {
        background-image: url('https://images.unsplash.com/photo-1492684223066-81342ee5ff30?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
        font-family: 'Arial', sans-serif;
        color: #fff;
    }

    .form-container {
        background: rgba(0, 0, 0, 0.6); /* Semi-transparent black */
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 6px 15px rgba(0, 0, 0, 0.4);
        width: 50%;
        margin: 30px auto;
    }

    .form-container h2 {
        text-align: center;
        color: #00ff57;
        text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.7);
    }

    table {
        width: 100%;
        color: #fff;
    }

    td {
        padding: 10px;
        vertical-align: middle;
    }

    input[type="text"],
    input[type="date"],
    input[type="number"],
    select {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 5px;
        background: rgba(255, 255, 255, 0.8);
        color: #333;
    }

    input[type="submit"] {
        background: #00c853;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        font-size: 1em;
        cursor: pointer;
        transition: all 0.3s ease-in-out;
    }

    input[type="submit"]:hover {
        background: #d50000;
        transform: scale(1.05);
    }
</style>

<hr>
<center>
    <div class="form-container">
        <h2>Edit Event</h2>
        <form action="update" method="get">
            <table class="table table-bordered">
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%= request.getParameter("id") %>" readonly /></td>
                </tr>
                <tr>
                    <td>Event Name</td>
                    <td>
                        <select name="eventName">
                            <option value="">----Select----</option>
                            <option value="Marriage">Marriage</option>
                            <option value="Birthday">Birthday</option>
                            <option value="Anniversary">Anniversary</option>
                            <option value="Retirement Party">Retirement Party</option>
                            <option value="Reunion">Reunion</option>
                            <option value="Farewell">Farewell</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Event Date</td>
                    <td><input type="date" name="eventDate" value="<%= request.getParameter("eventDate") %>" /></td>
                </tr>
                <tr>
                    <td>Venue</td>
                    <td><input type="text" name="venue" value="<%= request.getParameter("venue") %>" /></td>
                </tr>
                <tr>
                    <td>Capacity</td>
                    <td><input type="number" name="capacity" value="<%= request.getParameter("capacity") %>" /></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td><input type="text" name="description" value="<%= request.getParameter("description") %>" /></td>
                </tr>
                <tr>
                    <td>Contact Info</td>
                    <td><input type="text" name="contactInfo" value="<%= request.getParameter("contactInfo") %>" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Edit Event" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</center>

<!-- Bootstrap CDN -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy3Rg9TcZoEiv2xkV6b5H+pqW3R3W2bQcxz4Aj70" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js" integrity="sha384-pzjw8f+ua7Kw1TIq0r3U5Kz5z4V+TVFg5oyHeTgF2Xnk+z+a5/4qrM8oySwh1bsi" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" crossorigin="anonymous"></script>
