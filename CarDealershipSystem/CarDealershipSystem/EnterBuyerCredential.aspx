<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnterBuyerCredential.aspx.cs" Inherits="CarDealershipSystem.EnterBuyerCredential" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="TextFile1.css" />
<style>
    body {
        background-color: black;
    }
</style>
</head>
<body  >
    <nav class="navbar navbar-dark bg-dark">
 <div class="container-fluid">
     <h1>
    <a class="navbar-brand" href="#">Car Dealership System</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    </button>
     </h1>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">>
      </div>
    </div>
  </div>
</nav>
    <form id="form1" runat="server" style=" color:white;" >
        <div>
            <h3 style="font-size: x-large; color:white;" >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter your credentials</h3>
            <br />
            <br />
            <p class="lead">
                <asp:Label ID="Label12" runat="server" Width="500px" ></asp:Label>
                <asp:Label ID="Label10" runat="server" Text="Enter UserID" Width="158px"></asp:Label>
               <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox4_TextChanged" Width="150px"></asp:TextBox>
         <asp:Label  ID="Label16" runat="server"  Width="500px"></asp:Label>
            </p>
            <p class="lead">
                <asp:Label ID="Label13" runat="server" Width="500px"></asp:Label>
                <asp:Label ID="Label11" runat="server" Text="Enter Password" Width="160px"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
            </p>
            <p class="lead">
                <asp:Label ID="Label14" runat="server" Width="500px"></asp:Label>
                <asp:Label ID="Label15" runat="server" Text="Confirm Password" Width="161px"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox>
            </p>
            <br />
            <p class="lead">
          <asp:Label  ID="Label9" runat="server"  Width="500px"></asp:Label>
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register as buyer" CssClass="btn btn-outline-primary" BorderStyle="Solid" BorderColor="White" ForeColor="White" />
&nbsp;
            </p>
        </div>
    </form>
</body>
</html>
