using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using AspNetApplication.Models;
using System.Configuration;

namespace AspNetApplication
{
    public partial class UpdateProduct : System.Web.UI.Page
    {

        #region private helper methods

        private void InitializePage()
        {

        }

        private void PopulateCategories()
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ToString();
            string sql = "Select CategoryId,CategoryName FROM Categories";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, ConnectionString);
            DataSet ds = new DataSet();
            adapter.Fill(ds, "Categories");
            ddlCategories.DataSource = ds.Tables["Categories"];
            ddlCategories.DataTextField = "CategoryName";
            ddlCategories.DataValueField = "CategoryId";
            ddlCategories.DataBind();
        }

        private void AssignValuesToTextboxes(Product Model)
        {
            txtName.Text = Model.ProductName;
            txtPrice.Text = Model.UnitPrice.ToString();
            txtStock.Text = Model.UnitsInStock.ToString();
            chkDiscontinued.Checked = Model.Discontinued;
            ddlCategories.SelectedValue = Model.CategoryId.ToString();
        }

        private Product RetreiveValuesFromControls()
        {
            Product model = new Product();
            model.ProductName = txtName.Text;
            model.UnitPrice = Convert.ToDecimal("0" + txtPrice.Text);
            model.UnitsInStock = Convert.ToInt16("0" + txtStock.Text);
            model.Discontinued = chkDiscontinued.Checked;
            model.CategoryId = Convert.ToInt32("0" + ddlCategories.SelectedValue);
            model.ProductId = Convert.ToInt32("0" + Request.QueryString["id"]);
            return model;
        }
        private void LoadProductDetails()
        {
            int productId = Convert.ToInt32("0" + Request.QueryString["id"]);
            if (productId != 0)
            {
                ProductProcess process = new ProductProcess();
                var item = process.GetProduct(productId);
                AssignValuesToTextboxes(item);
            }
        }
        private void SaveProductDetails()
        {
            Product obj = RetreiveValuesFromControls();
            ProductProcess process = new ProductProcess();
            process.UpdateProduct(obj);
        }
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["User"]==null)
            {
                Response.Redirect("SignInForm.aspx?ReturnUrl="+Request.Url.PathAndQuery);
            }
            if (!IsPostBack)
            {
                InitializePage();
                PopulateCategories();
                LoadProductDetails();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SaveProductDetails();

            //it will remove cache and set the value to null and reload
            Cache.Remove("productlist");//Cache["productlist"]==null
            Response.Redirect("ProductMaster.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductMaster.aspx");
        }
    }
}