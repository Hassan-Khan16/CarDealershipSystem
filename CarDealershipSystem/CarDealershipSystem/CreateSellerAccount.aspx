<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateSellerAccount.aspx.cs" Inherits="CarDealershipSystem.CreateSellerAccount" %>

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
     <h3 class="card-header bg-light" style="font-size: x-large; color:black;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Make seller account</h3>
    <form id="form1" runat="server">
        <div>
            <div class="jumbotron jumbotron-fluid">
  <div class="container">
      <p>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
    <p class="lead"> 
        <asp:Label  ID="Label5" runat="server"  Width="500px"></asp:Label>
        <asp:Label  ID="Label1" runat="server" Text="Name" Width="70px"  ></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="150px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
      </p>
      <p class="lead"> 
          &nbsp;</p>
      <p class="lead"> 
           <asp:Label  ID="Label12" runat="server"  Width="500px"></asp:Label>
        <asp:Label  ID="Label10" runat="server" Text="Enter UserID" Width="70px"  ></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Width="150px" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
      </p>
      <p class="lead"> 
           &nbsp;</p>
      <p class="lead"> 
          <asp:Label  ID="Label6" runat="server"  Width="500px"></asp:Label>
          <asp:Label ID="Label2" runat="server" Text="City" Width="70px"></asp:Label>
          <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
      </p>
      <p class="lead"> 
          &nbsp;</p>
      <p class="lead"> 
          <asp:Label  ID="Label7" runat="server"  Width="500px"></asp:Label>
          <asp:Label ID="Label3" runat="server" Text="Number" Width="70px"></asp:Label>
          <asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectDBfinalConnectionString %>" SelectCommand="SELECT [sellerid], [sellername], [city], [phonenumber] FROM [Sellerdetails]"></asp:SqlDataSource>
      </p>
      <p class="lead"> 
          <asp:Label  ID="Label8" runat="server"  Width="500px"></asp:Label>
          <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label14" runat="server" Text="Start your UserID with &quot;Sell&quot;" Visible="False" ForeColor="Red"></asp:Label>
      &nbsp; <asp:Label ID="Label15" runat="server" Visible="False"></asp:Label>
      </p>
      <p class="lead"> 
          <asp:Label  ID="Label9" runat="server"  Width="500px"></asp:Label>
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Proceed to next page&gt;&gt;" />
&nbsp;
          <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update record" />
          </p>
  </div>
</div>
        </div>
        <p>
            &nbsp;</p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
        </p>
    </form>
</body>
</html>
