using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace AspNetApplication
{
    //partial class is a class which is spread across multiple physical files
    public partial class FirstPage : System.Web.UI.Page//inherit from this namespace always
    {

        protected TextBox txt1;
        //page delegate void System.EventHandler(object sender,Eventargs e);
        protected override void OnInit(EventArgs e)
        {
            this.Load += new EventHandler(Page_Load);//manually we are calling page_load
            base.OnInit(e);
        }
        public void Page_Load(object sender, EventArgs e)
        {
            //checks whether the requesr is a new request ,or a post back request
            if (!IsPostBack)
                this.txt1.Text = "Enter your name here";
        }
        public void btn1_Click(object sender, EventArgs e)
        {
            this.txt1.Text = this.txt1.Text.ToUpper();
        }
    }
}