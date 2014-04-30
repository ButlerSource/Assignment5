using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Assignment5;

public partial class Account_Register : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];

       Image1.ImageUrl = "~/ImageProcess.aspx";

        
        
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        TextBox txtVerify = txt_imageVerify;
        Label txtError = err_verify;
        ServiceReference2.UserServiceClient user = new ServiceReference2.UserServiceClient();
        
        if (Session["generatedString"].Equals(txtVerify.Text))
        {
            String pass = Assignment5.SecureEncrpytDecrypt.Encrypt(Password.Text);

            user.AddUser(UserName.Text,pass,"member");
            Response.Redirect("/");


        }
        else
        {
            txtError.Text = "String Does Not Match Image";
        }
        
    }

}