using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Parse;

namespace ChineseRestaurant
{
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ParseClient.Initialize("GFtzj3jqhkcjqOEwGQwQGhwy1JxP0F2oJ7FB0Klt", "P1Uu5I4eYaSnEpKAHzd09RCZsksbHeoKsLFmRXgP");

            BindContactGridView();
            BindSurveyGridView();
        }

        protected async void BindContactGridView()
        {
            List<Contact> listOfContacts = new List<Contact>();
            var query = new ParseQuery<ParseObject>("Contacts");
            IEnumerable<ParseObject> results = await query.FindAsync();

            foreach (var item in results)
            {
                Contact newContact = new Contact();
                newContact.FirstName = item.Get<string>("FirstName");
                newContact.LastName = item.Get<string>("LastName");
                newContact.EmailAddress = item.Get<string>("EmailAddress");
                newContact.Message = item.Get<string>("Message");
                listOfContacts.Add(newContact);
            }

            gvContacts.DataSource = listOfContacts;
            gvContacts.DataBind();
        }

        protected async void BindSurveyGridView()
        {
            List<Survey> listOfSurveys = new List<Survey>();
            var query = new ParseQuery<ParseObject>("Survey");
            IEnumerable<ParseObject> results = await query.FindAsync();

            foreach (var item in results)
            {
                Survey newSurvey = new Survey();
                newSurvey.Email = item.Get<string>("EmailAddress");
                newSurvey.Food = item.Get<string>("Food");
                newSurvey.Value = item.Get<string>("Value");
                newSurvey.FavoriteDish = item.Get<string>("FavoriteDish");
                newSurvey.LeastFavoriteDish = item.Get<string>("LeastFavoriteDish");
                newSurvey.Critique = item.Get<string>("Critique");
                newSurvey.AddToMenu = item.Get<string>("AddToMenu");
                listOfSurveys.Add(newSurvey);
            }

            gvSurvey.DataSource = listOfSurveys;
            gvSurvey.DataBind();
        }
    }
}