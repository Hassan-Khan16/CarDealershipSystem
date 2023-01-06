<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginforBuyer.aspx.cs" Inherits="CarDealershipSystem.LoginforBuyer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="TextFile1.css" />
    <style>
        body {
  background-image: url('buyerimage.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
        #Button1 {
            position:absolute;
        left: 10%;
        }
         #Button2 {
            position: absolute;
        left: 10%;
        }
</style>
</head>
<body style="background-image: url(buyerimage.jpg); width:100%; height:100%;">
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
        
  <h3 class="card-header bg-light" style="font-size: x-large" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please enter buyer credentials</h3>
    <form id="form1" runat="server">   
        <div style="margin-left: 400px">
        </div>
        <br />
        <br />
        <p style="margin-left: 173px">&nbsp;
            <asp:Label ID="Label2" runat="server" Text="User ID" ForeColor="White" ></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="250px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p style="margin-left: 160px">
            <asp:Label style="font-size: large" ID="Label3" runat="server" Text="Password" ForeColor="White"></asp:Label>
            <asp:TextBox style="font-size: large" ID="TextBox2" runat="server" TextMode="Password" Width="250px" OnTextChanged="TextBox2_TextChanged" ></asp:TextBox>
        </p>
      <br />
        
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" CssClass="btn btn-outline-primary" BorderStyle="Solid" BorderColor="White" ForeColor="White" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Create an account" OnClick="Button2_Click" CssClass="btn btn-outline-primary" BorderStyle="Solid" BorderColor="White" ForeColor="White" />
   
        <div>
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
