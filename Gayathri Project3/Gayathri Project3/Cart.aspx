<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Gayathri_Project3.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SQIN-Cart</title>
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
        <section>
        <div>
            <div class="row"><%-- row 1 --%>
                <div class="col-sm-12"><h1>Your shopping cart</h1></div>
                <div class="col-sm-6"><%-- cart display column --%>
                    <div class="form-group">
                        <div class="col-sm-12"><asp:ListBox ID="lstCart" runat="server" CssClass="form-control"></asp:ListBox></div>
                    </div>
                </div>
                <div class="col-sm-6"><%-- cart edit buttons column --%>
                    <div class="form-group">
                        <div class="col-sm-12"><asp:Button ID="btnRemove" runat="server" 
                            Text="Remove Item" onclick="btnRemove_Click" CssClass="btn" /></div>
                        <div class="col-sm-12"><asp:Button ID="btnEmpty" runat="server" 
                            Text="Empty Cart" onclick="btnEmpty_Click" CssClass="btn" /></div>
                    </div>
                </div>
            </div><%-- end of row 1 --%>

            <div class="row"><%-- row 2 --%>
                <div class="col-sm-12">
                    <div class="form-group"><%-- message label --%>
                        <asp:Label ID="lblMessage" runat="server" EnableViewState="False"
                            CssClass="text-info col-sm-12"></asp:Label>
                    </div>
                    <div class="form-group"><%-- buttons --%>
                        <div class="col-sm-12">
                            <asp:Button ID="btnContinue" runat="server"
                                PostBackUrl="~/Order.aspx" Text="Continue Shopping" CssClass="btn" />
                            <asp:Button ID="btnCheckOut" runat="server" Text="Check Out"  
                                onclick="btnCheckOut_Click" CssClass="btn" />
                        </div>
                    </div>
                </div>
            </div><%-- end of row 2 --%>
        </div>
        </section>

    </form>
</body>
</html>
