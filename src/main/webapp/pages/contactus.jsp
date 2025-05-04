<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Contact Us - Book Store</title>
 <%@include file="../all_component/allCss.jsp"%>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f3f3;
            margin: 0;
            padding: 0;
        }
        .contact-container {
            padding: 40px;
            background-color: white;
            max-width: 800px;
            margin: 50px auto;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .contact-container h2 {
            color: #004d40;
            margin-bottom: 20px;
        }
        .contact-container p {
            line-height: 1.6;
            color: #333;
        }
        .contact-info ul {
            list-style: none;
            padding-left: 0;
        }
        .contact-info li {
            margin-bottom: 10px;
            padding: 10px;
            background-color: #e0f2f1;
            border-radius: 6px;
        }
    </style>
</head>
<body>
<%@include file="../all_component/navbar.jsp" %>
    <div class="contact-container">
        <h2>Contact Us</h2>
        <p>
            We’d love to hear from you! Whether it’s feedback on our project, collaboration, or just a friendly hello — feel free to get in touch.
        </p>

        <div class="contact-info">
            <ul>
                <li><strong>Email:</strong> bookstore.project@informatics.edu.np</li>
                <li><strong>Phone:</strong> +977-9800000000</li>
                <li><strong>Institution:</strong> Informatics College Pokhara</li>
                <li><strong>Batch:</strong> 2nd Year, 2nd Semester – Spring</li>
                <li><strong>Address:</strong> Pokhara, Gandaki Province, Nepal</li>
            </ul>
        </div>

        <p style="margin-top: 30px;">
            Thank you for visiting our system. We hope you find it helpful and easy to use!
        </p>
    </div>
    <%@include file="../all_component/footer.jsp" %>
</body>
</html>
