using AspNetApplication.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetApplication
{
    public partial class DataListEx1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                PopulateData();
            }
        }

        private void PopulateData()
        {

            CustomerDataAcess dataAcess = new CustomerDataAcess();
            var list = dataAcess.GetCustomers();
            dataList1.DataSource = list;
            dataList1.DataBind();
        }

        protected void dataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            String id = e.CommandArgument.ToString();
            if (e.CommandName == "View")
                Response.Redirect("CustomerDetails.aspx?ID=" + id);
        }

        protected void dataList1_EditCommand(object source, DataListCommandEventArgs e)
        {
            //enables the edit item template for the selected rows
            //the seleceted rows is the one on which the command button was clicked
            dataList1.EditItemIndex = e.Item.ItemIndex;//returns the row number
            PopulateData();
        }

        protected void dataList1_UpdateCommand(object source, DataListCommandEventArgs e)
        {
            String custId = dataList1.DataKeys[e.Item.ItemIndex].ToString();
            string company = ((TextBox)e.Item.FindControl("txtCompany")).Text;
            string contact = ((TextBox)e.Item.FindControl("txtContact")).Text;
            string city = ((TextBox)e.Item.FindControl("txtCity")).Text;
            string country = ((TextBox)e.Item.FindControl("txtCountry")).Text;

            //Create the Customer object
            Customer obj = new Customer
            {
                CustomerId = custId,
                CompanyName = company,
                ContactName = contact,
                City = city,
                Country = country
            };

            try
            {
                CustomerDataAcess dataAcess = new CustomerDataAcess();
                dataAcess.UpdateCustomer(obj);

            }
            catch(Exception ex)
            {
                throw ex;
            }
            //Deselect the edititemtemplate by resetting the EditItemIndex to -1
            dataList1.EditItemIndex = -1;
            PopulateData();

        }

        protected void dataList1_CancelCommand(object source, DataListCommandEventArgs e)
        {
            dataList1.EditItemIndex = -1;
            PopulateData();
        }

        protected void dataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {

        }
    }
}