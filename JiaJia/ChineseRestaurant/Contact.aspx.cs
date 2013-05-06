using System;
using Parse;


namespace ChineseRestaurant
{
    public partial class ContactPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ParseClient.Initialize("GFtzj3jqhkcjqOEwGQwQGhwy1JxP0F2oJ7FB0Klt", "P1Uu5I4eYaSnEpKAHzd09RCZsksbHeoKsLFmRXgP");
        }

        protected async void btnSend_Click(object sender, EventArgs e)
        {
            Contact newContact = new Contact();
            newContact.EmailAddress = txtEmail.Text;
            newContact.FirstName = txtFName.Text;
            newContact.LastName = txtLName.Text;
            newContact.Message = txtMessage.Text;

            var contactObject = new ParseObject("Contacts");
            contactObject["EmailAddress"] = newContact.EmailAddress;
            contactObject["FirstName"] = newContact.FirstName;
            contactObject["LastName"] = newContact.LastName;
            contactObject["Message"] = newContact.Message;


            if (radDined.SelectedValue == "Yes")
            {
                Survey newSurvey = new Survey();
                newSurvey.Food = radListFood.SelectedValue;
                newSurvey.Value = radListValue.SelectedValue;
                newSurvey.FavoriteDish = txtFavDish.Text;
                newSurvey.LeastFavoriteDish = txtBadDish.Text;
                newSurvey.Critique = txtWhyDislike.Text;
                newSurvey.AddToMenu = txtAddMenu.Text;

                var surveyObject = new ParseObject("Survey");
                surveyObject["EmailAddress"] = newContact.EmailAddress;
                surveyObject["Food"] = newSurvey.Food;
                surveyObject["Value"] = newSurvey.Value;
                surveyObject["FavoriteDish"] = newSurvey.FavoriteDish;
                surveyObject["LeastFavoriteDish"] = newSurvey.LeastFavoriteDish;
                surveyObject["Critique"] = newSurvey.Critique;
                surveyObject["AddToMenu"] = newSurvey.AddToMenu;

                surveyObject["ContactID"] = contactObject;
                await surveyObject.SaveAsync();
            }
            else
                await contactObject.SaveAsync();

            Response.Redirect("~/ThankYou.aspx");
        }
    }
}