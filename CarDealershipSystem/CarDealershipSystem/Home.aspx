<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CarDealershipSystem.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Car DealerShip System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="TextFile1.css" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
</head>
<body>

<nav class="navbar navbar-dark bg-dark">
 <div class="container-fluid">
     <h1>
    <a class="navbar-brand" href="#">Car Dealership System</a></h1>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">>
      </div>
    </div>
  </div>
</nav>

    <form id="form1" runat="server">

   <div class="bgimg"> 
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click"  Text="Want to buy?" Height="50px" Width="220px" CssClass="btn btn-outline-primary" BorderStyle="Solid" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Want to sell?" CssClass="btn btn-outline-primary " Height="50px" Width="220px" BorderStyle="Solid" />
      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Admin" Height="50px" Width="220px" CssClass="btn btn-outline-primary" BorderColor="White" BorderStyle="Solid" />
       <img src="homeimage.jpg" alt="Background image" />
        </div>    
    </form>
</body>
</html>
