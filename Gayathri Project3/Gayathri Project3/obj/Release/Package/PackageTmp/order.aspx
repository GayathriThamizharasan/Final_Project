<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="Gayathri_Project3.order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SQIN-order</title>
    <meta name="descrption" content="My hope is that learning about beauty from women's perspective which will change the way you think about your skin" />
    <meta name="keywords" content="Beauty, mist, eyelinear, perfume, eyeshadow, compact" />
    <link href="Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
          <header>
            <img src="Images/make-up-background-design_1273-158.jpg" height="80" id="headerimage"/>
            <h2><i>SQIN</i></h2>
            <h3><i>You Are Amazing</i></h3>
             
        </header>
          <nav>
            <a href="Default.aspx">What'sNew</a>
            <a href="Products.aspx">Products</a>
            <a href="BestSeller.aspx">BestSeller</a>
            <a href="order.aspx">order</a>
               <a href="Cart.aspx">Cart</a>
        </nav>
      
        <div>
            <section>
            <table >
                <tr> 
                   <td>
                       <asp:Label ID="Label1" runat="server" Text="Select Product"></asp:Label></td>
                   <td>
                       <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="product" DataValueField="product" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Cosmeticsconnectionstring %>" SelectCommand="SELECT [product], [price], [product description], [image] FROM [Table] ORDER BY [product]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Image ID="Image1" runat="server" height="100" Width="100"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                       <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                    
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Add to cart" OnClick="btnAdd_Click"/>
                         <asp:Button ID="Button2" runat="server" Text="Go to cart" OnClick="Button2_Click" />
                    </td>
                </tr>
              </table>
                </section>
        </div>
    </form>
</body>
</html>
