<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdsDetail.aspx.cs" Inherits="CarDealershipSystem.PostAdd" %>

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
       
        .auto-style1 {
            margin-left: 11;
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
      <h3 class="card-header" style="font-size: x-large" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add car details</h3>

    <form id="form1" runat="server">
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
    <p class="lead"> 
        <asp:Label  ID="Label5" runat="server"  Width="470px"></asp:Label>
        <asp:Label  ID="Label1" runat="server" Text="Car Name" Width="127px"  ></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="187px"></asp:TextBox>
      </p>
      <p class="lead"> 
          &nbsp;</p>
      <p class="lead"> 
           <asp:Label  ID="Label12" runat="server"  Width="454px"></asp:Label>
        <asp:Label  ID="Label10" runat="server" Text="Manufacturer" Width="143px"  ></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Width="188px" style="margin-top: 0px"></asp:TextBox>
      </p>
      <p class="lead"> 
           &nbsp;</p>
      <p class="lead"> 
          <asp:Label  ID="Label13" runat="server"  Width="500px"></asp:Label>
        <asp:Label  ID="Label11" runat="server" Text="Make" Width="97px"  ></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" Width="187px" CssClass="offset-sm-0"></asp:TextBox>
      </p>
      <p class="lead"> 
          &nbsp;</p>
      <p class="lead"> 
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectDBfinalConnectionString %>" SelectCommand="SELECT * FROM [Cardetails]"></asp:SqlDataSource>
          <asp:Label  ID="Label6" runat="server"  Width="500px"></asp:Label>
          <asp:Label ID="Label2" runat="server" Text="Price" Width="96px"></asp:Label>
          <asp:TextBox ID="TextBox2" runat="server" Width="188px" CssClass="auto-style1"></asp:TextBox>
      </p>
      <p class="lead"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
        </p>
      <p class="lead"> 
          <asp:Label  ID="Label9" runat="server"  Width="500px"></asp:Label>
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Post ad" Width="136px" />
&nbsp;
          <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update Record" />
          </p>
    </form>
</body>
</html>
