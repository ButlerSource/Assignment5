using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CookieView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //checks if cookie has been saved
        HttpCookie myCookies = Request.Cookies[Context.User.Identity.Name];

        if (myCookies == null)
        {
            lblNoCookie.Text = "No Cookie Data Has Been Set! Register an account or login to see Cookie Data";
        }
        else
        {
            lblNoCookie.Text = "";
            lblUsername.Text = "User Name: " + myCookies["Username"];
            lblEmail.Text = "Email: " + myCookies["Email"];
        }
    }
}