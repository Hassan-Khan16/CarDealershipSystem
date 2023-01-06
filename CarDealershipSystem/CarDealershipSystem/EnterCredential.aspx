<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnterCredential.aspx.cs" Inherits="CarDealershipSystem.EnterCredential" %>

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
        body {
        color:white;
        background-color: black;
    }
</style>
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
        <div>
             <h3 class="card-header bg-light" style="font-size: x-large;color:black;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please enter seller credentials</h3>

            <p class="lead">
                &nbsp;</p>
            <p class="lead">
                &nbsp;</p>
            <p class="lead">
                <asp:Label ID="Label12" runat="server" Width="322px"></asp:Label>
                <asp:Label ID="Label10" runat="server" Text="Enter UserID" Width="166px"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" Width="212px"></asp:TextBox>
          <asp:Label  ID="Label16" runat="server"  Width="500px" Visible="False"></asp:Label>
            </p>
            <p class="lead">
                <asp:Label ID="Label13" runat="server" Width="322px"></asp:Label>
                <asp:Label ID="Label11" runat="server" Text="Enter Password" Width="166px"></asp:Label>
                <asp:TextBox ID="TextBox5" Textmode="Password" runat="server" Width="212px" CssClass="accordion-header" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectDBfinalConnectionString %>" SelectCommand="SELECT [sellerid], [pass] FROM [SellerCredentials]"></asp:SqlDataSource>
            </p>
            <p class="lead">
                <asp:Label ID="Label14" runat="server" Width="322px"></asp:Label>
                <asp:Label ID="Label15" runat="server" Text="Confirm Password" Width="166px"></asp:Label>
                <asp:TextBox ID="TextBox6" Textmode="Password" runat="server" Width="211px"></asp:TextBox>
            </p>
            <p class="lead">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label  ID="Label17" runat="server"  Width="500px" Visible="False"></asp:Label>
            </p>
            <p class="lead">
          <asp:Label  ID="Label9" runat="server"  Width="396px"></asp:Label>
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register as seller" CssClass="btn btn-outline-primary" BorderStyle="Solid" BorderColor="black" ForeColor="black" />
&nbsp;
            </p>
        </div>
    </form>
</body>
</html>
