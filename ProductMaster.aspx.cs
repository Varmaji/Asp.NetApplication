using AspNetApplication.Models;
using System;
using System.Collections.Generic;

namespace AspNetApplication
{
    public partial class ProductMaster : System.Web.UI.Page
    {
        #region Private Helper Methods
        private void InitializePage()
        {
            txtSearch.Text = string.Empty;
            FetchProductData();
        }

        private void FetchProductData()
        {
            if (Cache["productlist"] == null)
            {
                try
                {
                    ProductProcess process = new ProductProcess();
                    var list = process.GetProducts(txtSearch.Text);
                    this.grid1.DataSource = list;
                    this.grid1.DataBind();
                }
                catch (Exception)
                {
                    throw;
                }
            }
            else
            {
                var list = Cache["productlist"] as List<Product>;
                this.grid1.DataSource = list;
                this.grid1.DataBind();
            }
        }
        #endregion


        #region Private Event Handler Methods
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) InitializePage();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            FetchProductData();
        }

        protected void btnCreateView_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateProduct.aspx");
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtSearch.Text = string.Empty;
            FetchProductData();
        }
        #endregion

        protected void grid1_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {
            grid1.PageIndex = e.NewPageIndex;
            FetchProductData();
        }

        protected void grid1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            string id = this.grid1.DataKeys[e.NewEditIndex].Value.ToString();
            Response.Redirect("UpdateProduct.aspx?id=" + id);
        }
    }
}