using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Drawing.Imaging;

public partial class ImageProcess : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Clear();
        ImageVerifierService.ServiceClient fromService = new ImageVerifierService.ServiceClient();
       
        string myStr = fromService.GetVerifierString("5");
        Session["generatedString"] = myStr;
        Stream myStream = fromService.GetImage(myStr);
        System.Drawing.Image myImage = System.Drawing.Image.FromStream(myStream);
        Response.ContentType = "image/jpeg";
        myImage.Save(Response.OutputStream, ImageFormat.Jpeg);
    }
}