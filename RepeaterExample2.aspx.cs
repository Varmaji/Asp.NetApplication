using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using System.Data.SqlClient;
using AspNetApplication.Models;

namespace AspNetApplication
{
    public partial class RepeaterExample2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateData();
            }
        }
        string ConnectionString = $@"Data Source=VAAYU\SQLDEV2016;initial catalog=northwind;integrated security=sspi";
        string sql = "Select CustomerId,CompanyName,ContactName,City,Country From Customers";
        DataSet ds;
        SqlDataAdapter adapter;
        string tablename = "Customers";

        private void PopulateData()
        {
            //if (adapter == null)
            //    adapter = new SqlDataAdapter(sql, ConnectionString);
            //if (ds == null) ds = new DataSet();
            //adapter.Fill(ds, tablename);
            //this.repeater1.DataSource = ds;
            //repeater1.DataMember = tablename;
            //repeater1.DataBind();

            CustomerDataAcess dataAcess = new CustomerDataAcess();
            var list = dataAcess.GetCustomers();
            repeater1.DataSource = list;
            repeater1.DataBind();
        }

        protected void repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string CustId = e.CommandArgument.ToString();
            if(e.CommandName== "View")
            {
                Response.Redirect("CustomerDetails.aspx?ID=" + CustId);
            }
        }
    }
}