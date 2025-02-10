<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="home.jsp" %>

<!-- Success and Error Messages -->
<c:if test="${not empty successMessage}">
    <div class="alert alert-success" role="alert">
        ${successMessage}
    </div>
</c:if>
<c:if test="${not empty errorMessage}">
    <div class="alert alert-danger" role="alert">
        ${errorMessage}
    </div>
</c:if>

<hr>
<center>
    <!-- Event List Table -->
    <div class="table-responsive">
        <table class="table table-bordered table-hover">
            <thead class="table-dark">
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
            </thead>
            <tbody>
                <c:forEach items="${event}" var="event">
                    <tr>
                        <td>${event.id}</td>
                        <td>${event.eventName}</td>
                        <td>${event.eventDate}</td>
                        <td>${event.venue}</td>
                        <td>${event.capacity}</td>
                        <td>${event.description}</td>
                        <td>${event.contactInfo}</td>
                        <td><a href='updateevent.jsp?id=${event.id}&eventName=${event.eventName}&eventDate=${event.eventDate}&venue=${event.venue}&capacity=${event.capacity}&description=${event.description}&contactInfo=${event.contactInfo}' class="btn btn-warning">Edit</a></td>
                        <td><a href="javascript:void(0);" onclick="confirmDelete(${event.id})" class="btn btn-danger">Delete</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</center>

<!-- Confirmation for Deletion -->
<script>
    function confirmDelete(eventId) {
        if (confirm('Are you sure you want to delete this event?')) {
            window.location.href = 'deleteById?id=' + eventId;
        }
    }
</script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
