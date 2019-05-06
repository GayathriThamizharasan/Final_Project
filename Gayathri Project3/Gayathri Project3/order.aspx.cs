using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Gayathri_Project3
{
    public partial class order : System.Web.UI.Page
    {
        private Product selectedProduct;

        

        private Product GetSelectedProduct()
        {
            //get row from AccessDataSource based on value in dropdownlist
            DataView productsTable = (DataView)
                SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            productsTable.RowFilter =
            string.Format("Product = '{0}'" , DropDownList1.SelectedValue);
            DataRowView row = productsTable[0];

            //create a new product object and load with data from row
            Product p = new Product();
            
            p.Name = row["product"].ToString();
            p.ShortDescription = row["product description"].ToString();

            p.UnitPrice = (int)row["price"];
            p.ImageFile = row["image"].ToString();
            return p;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //get cart from session and selected item from cart
                CartItemList cart = CartItemList.GetCart();
                CartItem cartItem = cart[selectedProduct.Name];

                //if item isn’t in cart, add it; otherwise, increase its quantity
                if (cartItem == null)
                {
                    cart.AddItem(selectedProduct,
                                 Convert.ToInt32(TextBox1.Text));
                }
                else
                {
                    cartItem.AddQuantity(Convert.ToInt32(TextBox1.Text));
                }
                Response.Redirect("Cart.aspx");
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // bind drop-down list and update page hit count on first load  
            if (!IsPostBack) DropDownList1.DataBind();


                // get and show product data on every load  
                selectedProduct = this.GetSelectedProduct();
                //lblName.Text = selectedProduct.Name;
                Label2.Text = selectedProduct.ShortDescription;
                //lblLongDescription.Text = selectedProduct.LongDescription;
                Label3.Text = selectedProduct.UnitPrice.ToString("c") + " each";
                Image1.ImageUrl =  selectedProduct.ImageFile;
     
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            selectedProduct = this.GetSelectedProduct();
            //lblName.Text = selectedProduct.Name;
            Label2.Text = selectedProduct.ShortDescription;
            //lblLongDescription.Text = selectedProduct.LongDescription;
            Label3.Text = selectedProduct.UnitPrice.ToString("c") + " each";
            Image1.ImageUrl = selectedProduct.ImageFile;
        }
    }
}
        