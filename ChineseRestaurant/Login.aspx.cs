using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChineseRestaurant
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox txtUserName = (TextBox)FindControl("Username");
            TextBox txtPassword = (TextBox)FindControl("Password");


        }

        public LoginStatus authenticated { get; set; }
    }
}