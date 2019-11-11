using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetApplication
{
    public partial class SignInForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

            //add namespace System.Web.Security
            //if (FormsAuthentication.Authenticate(Login1.UserName, Login1.Password))
            //{
            //    FormsAuthentication.RedirectFromLoginPage(Login1.UserName, false);
            //}
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            if(Membership.ValidateUser(txtUserId.Text,txtPassword.Text))
            {
                Session["User"] = txtUserId.Text;
                FormsAuthentication.RedirectFromLoginPage(txtUserId.Text, false);
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //register the user name by using the membership provider
            if(String.IsNullOrEmpty(txtUser.Text)||
                String.IsNullOrEmpty(txtPwd.Text)||
                String.IsNullOrEmpty(txtEmail.Text)||
                String.IsNullOrEmpty(txtQuestion.Text)||
                String.IsNullOrEmpty(txtAnswer.Text)
                )
            {
                pnlErrors.Visible = true;
                litErrors.Text = "Values has not been specified for one or more details";
            }
            else
            {
                pnlErrors.Visible = false;
                MembershipCreateStatus status = MembershipCreateStatus.ProviderError;
                var user = Membership.CreateUser(
                    username: txtUser.Text,
                    password: txtPwd.Text,
                    email: txtEmail.Text,
                    passwordQuestion: txtQuestion.Text,
                    passwordAnswer: txtAnswer.Text,
                    isApproved: true,
                    status: out status);
                if(status != MembershipCreateStatus.Success)
                {
                    pnlErrors.Visible = true;
                    litErrors.Text = "Failed while creating a new user.";
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            pnlErrors.Visible = false;
            txtUser.Text = txtPwd.Text = txtConfirm.Text = txtEmail.Text =
                txtQuestion.Text = txtAnswer.Text = string.Empty;
       
        }
    }
}