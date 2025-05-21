<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us - Book Store</title>
<%@include file="../all_component/allCss.jsp"%>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f3f3;
            margin: 0;
            padding: 0;
        }
        .about-container {
            padding: 40px;
            background-color: white;
            max-width: 900px;
            margin: 50px auto;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .about-container h2 {
            color: #004d40;
            margin-bottom: 20px;
        }
        .about-container p {
            line-height: 1.6;
            color: #333;
        }
        .team-members {
            margin-top: 30px;
        }
        .team-members h3 {
            color: #004d40;
        }
        .team-members ul {
            list-style-type: none;
            padding-left: 0;
        }
        .team-members li {
            margin-bottom: 20px;
            background-color: #e0f2f1;
            padding: 15px;
            border-radius: 6px;
        }
    </style>
</head>
<body>
<%@include file="../all_component/navbar.jsp" %>
    <div class="about-container">
        <h2>About Our Book Store Project</h2>
        <p>
            This Book Store Management System is a dynamic web-based project developed as part of our 
            Advanced Java course in the 2nd year, 2nd semester at <strong>Informatics College Pokhara</strong> – Spring Batch. 
            Our goal is to simplify the book buying and inventory management process with a modern, responsive, and intuitive interface.
        </p>
        <p>
            Built using technologies such as Java, JSP, Servlets, JDBC, and Maven, this system allows admins to manage book inventories, 
            process orders, and streamline user interactions. It demonstrates our technical learning and teamwork capabilities.
        </p>

        <div class="team-members">
            <h3>Meet Our Team</h3>
            <p>
                We are a group of enthusiastic students, each contributing unique skills to bring this project to life:
            </p>
            <ul>
                <li>
                    <strong>Suchana Sunar</strong> – <em>Managed overall system and Admin portal</em><br>
                    Suchana effectively managed the team and led the development of the admin portal. She ensured timely progress, coordinated tasks, and kept the team focused through every stage of the project.
                </li>
                <li>
                    <strong>Prapti Lalchan</strong> – <em>Managed User Portal</em><br>
                    With a keen analytical mindset, Prapti was responsible for developing and refining the user portal. Her contributions ensured a seamless experience for end-users.
                </li>
                <li>
                    <strong>Anjila Gurung</strong> – <em>UI/UX</em><br>
                    Anjila translated concepts into engaging designs. Her creativity and eye for usability were key in delivering a clean, user-centric interface.
                </li>
                <li>
                    <strong>Esmyker Adhikari</strong> – <em>Tester</em><br>
                    Esmyker played a crucial role in system validation and testing. He rigorously checked features and maintained data integrity to ensure a stable and error-free product.
                </li>
                <li>
                    <strong>Bednidhi Khanal</strong> – <em>Research</em><br>
                    Bednidhi contributed by assisting with research, documentation, and team coordination tasks, helping maintain the project's workflow also managed about us and contact us page.
                </li>
            </ul>
        </div>

        <p style="margin-top: 30px;">
            With this project, we not only deepened our understanding of Advanced Java but also enhanced our collaboration and software development skills.
        </p>
    </div>
    <%@include file="../all_component/footer.jsp" %>
</body>
</html>

