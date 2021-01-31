<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebDash.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="StyleSheet/styles.css" rel="stylesheet" />
    <title>Login</title>
    <style>
        body {
            background-color: #F9FAFB;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="text-Center">Sign in to Web Dashboard</h1>
            <table>
              <thead></thead>
                <tr>
                    <td>
                        <asp:Label ID="userLabel" runat="server" Text="Username"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="userText" runat="server"></asp:TextBox></td>
                        <asp:RequiredFieldValidator ID="reqID" runat="server" ControlToValidate="userText" ErrorMessage="Please Enter User Name," ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="passLabel" runat="server" Text="Password"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="passText" runat="server" TextMode="Password"></asp:TextBox></td>
                        <asp:RequiredFieldValidator ID="reqID2" runat="server" ControlToValidate="passText" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="invalidLabel" runat="server" Text="Invalid Credentials check again" ForeColor="Red"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="loginButton" runat="server" Text="Sign in" OnClick="loginButton_Click" />
                    </td>
                </tr>
            </table>
        </div>
        
    </form>
</body>
</html>
