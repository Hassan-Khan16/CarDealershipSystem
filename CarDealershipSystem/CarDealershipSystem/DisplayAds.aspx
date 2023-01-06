<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayAds.aspx.cs" Inherits="CarDealershipSystem.DisplayAds" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="TextFile1.css" />
    <style type="text/css">
        
        body {
        color:white;
        background-color: black;
    }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 397px;
        }
    </style>
    </head>
<body>
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
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" align="center" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="carid" DataSourceID="SqlDataSource1" Height="308px" Width="581px">
                <Columns>
                    <asp:BoundField DataField="sellerid" HeaderText="sellerid" SortExpression="sellerid" />
                    <asp:BoundField DataField="carid" HeaderText="carid" ReadOnly="True" SortExpression="carid" />
                    <asp:BoundField DataField="make" HeaderText="make" SortExpression="make" />
                    <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
                    <asp:BoundField DataField="company" HeaderText="company" SortExpression="company" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                </Columns>
               
            </asp:GridView>
          
            <br />
          
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Load" Visible="False" CssClass="btn btn-outline-primary" BorderStyle="Solid" BorderColor="White" ForeColor="White" />
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Update or Delete"  CssClass="btn btn-outline-primary" BorderStyle="Solid" BorderColor="White" ForeColor="White"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click1" Text="View Triggers" CssClass="btn btn-outline-primary" BorderStyle="Solid" BorderColor="White" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Log Out" CssClass="btn btn-outline-primary" BorderStyle="Solid" BorderColor="White" ForeColor="White" />
                    </td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:projectDBfinalConnectionString %>" SelectCommand="SELECT * FROM [Images]" OnSelecting="SqlDataSource2_Selecting"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectDBfinalConnectionString %>" SelectCommand="SELECT * FROM [Cardetails]"></asp:SqlDataSource>
        </div>
        <div>
        </div>
        <table>
            <tr>
            <td>
                
                    <asp:Image ID="Image1" runat="server"  />
                
            </td>
                </tr>
        </table>
    </form>
</body>
</html>
