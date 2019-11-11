using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AspNetApplication.Models
{
    class ProductProcess
    {
        ProductDAO dao;

        public ProductProcess()
        {
            dao = new ProductDAO();
        }

        public List<Product> GetProducts(String criteria)
        {
            return dao.GetProducts(criteria);
        }
        public Product GetProduct(int  ProductId)
        {
            return dao.GetProductsDetails(ProductId);
        }

        public void CreateProduct(Product item)//Add the new Product
        {
            dao.CreateProduct(item);
        }
        public void UpdateProduct(Product item)
        {
             dao.UpdateProductById(item);
        }
    }
}
