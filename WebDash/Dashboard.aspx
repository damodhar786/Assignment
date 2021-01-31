<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebDash.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <link href="StyleSheet/styles.css" rel="stylesheet" />

    <title>Dashboard</title>

</head>
<body>
    <form id="form1" runat="server">

       <nav class="navigation container">
            <div class="nav-brand">
                <asp:Label ID="welcome" runat="server" Text="Welcome to My Dashboard"></asp:Label>
            </div>
       </nav>
           
        <div>
            <br />
            <asp:Label ID="dashuserLabel" runat="server" Text=" Logged in User Details"></asp:Label>
            <br />
            <asp:Button ID="portfolioButton" runat="server" Text="My Portfolio" Onclick="portfolioButton_Click"/>
            <asp:Button ID="logoutButton" runat="server" Text="Logout" OnClick="logoutButton_Click" />
        </div>
    </form>

        <footer class="footer">
        <div class="footer-header">Connect Me On</div>
        <ul class="list-no-bullet">
            <li class="list-inline"><a class="link" target="blank" href="mailto:vanjarapudamodhar@gmail.com"><i class="fas fa-at"></i></i></a></li>
            <li class="list-inline"><a class="link" target="blank" href="https://www.linkedin.com/in/damodhar-vanjarapu"><i class="fab fa-linkedin-in"></i></a></li>
            <li class="list-inline"><a class="link" target="blank" href="https://github.com/damodhar786"><i class="fab fa-github"></i></a></li>
            <li class="list-inline"><a class="link" target="blank" href="https://twitter.com/damodhar_rao"><i class="fab fa-twitter"></i></a></li>
        </ul>
    </footer>

    <script src="https://kit.fontawesome.com/5cd2013d00.js" crossorigin="anonymous"></script>



</body>
</html>