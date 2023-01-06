<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateBuyerAccount.aspx.cs" Inherits="CarDealershipSystem.CreateBuyerAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="TextFile1.css" />
<style>
    body {
        color:white;
        background-color: black;
    }
</style>
</head>
<body >
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
    <p class="lead" style="font-size: x-large; color:white;" >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Create buyer account</p>
    <form id="form1" runat="server">
     
    <p class="lead"> 
        <asp:Label  ID="Label5" runat="server"  Width="500px"></asp:Label>
        <asp:Label  ID="Label1" runat="server" Text="Name" Width="119px"  ></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
      </p>
      <p class="lead"> 
           <asp:Label  ID="Label12" runat="server"  Width="500px"></asp:Label>
        <asp:Label  ID="Label10" runat="server" Text="Enter UserID" Width="118px"  ></asp:Label>
          <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
      </p>
      <p class="lead"> 
          <asp:Label  ID="Label6" runat="server"  Width="500px"></asp:Label>
          <asp:Label ID="Label2" runat="server" Text="City" Width="119px"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Width="150px" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
      </p>
      <p class="lead"> 
          <asp:Label  ID="Label8" runat="server"  Width="487px"></asp:Label>
          <asp:Label ID="Label4" runat="server" Text="User ID already taken" Visible="False"></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label14" runat="server" Text="Start your UserID with &quot;Buy&quot;" Visible="False"></asp:Label>
      </p>
      <p class="lead"> 
          <asp:Label  ID="Label9" runat="server"  Width="529px"></asp:Label>
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Proceed to next page&gt;&gt;" CssClass="btn btn-outline-primary" BorderStyle="Solid" BorderColor="White" ForeColor="White" />
&nbsp;
          </p>
    </form>
</body>
</html>
