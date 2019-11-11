using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace AspNetApplication.Models
{
    public class CustomerDataAcess
    {
        string ConnectionString = string.Empty;
        SqlConnection connection;
        public CustomerDataAcess()
        {
            var ConStr = ConfigurationManager.ConnectionStrings["NorthwindConnectionString"]
                .ConnectionString;
            ConnectionString = ConStr;
            connection = new SqlConnection(ConnectionString);
            
        }
        public void UpdateCustomer(Customer item)
        {
            if (item == null)
                throw new ArgumentException(nameof(item), "Value is null.");

            string sql = " Update Customers SET CompanyName=@company, " +
                " ContactName=@contact,City=@city,Country=@country " + " Where CustomerId=@customerid ";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@company", item.CompanyName);
            command.Parameters.AddWithValue("@contact", item.ContactName);
            command.Parameters.AddWithValue("@city", item.City);
            command.Parameters.AddWithValue("@country", item.Country);
            command.Parameters.AddWithValue("@customerid", item.CustomerId);

            try
            {
                connection.Open();
                command.ExecuteNonQuery();

            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
               
                if (connection.State != ConnectionState.Closed) connection.Close();
                connection = null;
            }
        }

        public List<Customer> GetCustomers()
        {
            List<Customer> customerlist = new List<Customer>();
            String sql = "SELECT CustomerID,CompanyName,ContactName,City,Country FROM Customers";
            SqlCommand cmd = new SqlCommand(sql, connection);
            SqlDataReader dr = null;
            try
            {
                connection.Open();
                dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                while(dr.Read())
                {
                    Customer obj = new Customer
                    { 
                        CustomerId = dr.GetString(0),
                        CompanyName = dr.GetString(1),
                        ContactName = dr.GetString(2),
                        City = dr.GetString(3),
                        Country = dr.GetString(4)
                    };
                    customerlist.Add(obj);
                }
               
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                if (dr != null) if (!dr.IsClosed) dr.Close();
                if (connection.State != ConnectionState.Closed) connection.Close();
                connection = null;

            }
            return customerlist;
        }
    }
}