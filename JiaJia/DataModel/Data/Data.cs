using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Parse;

namespace ChineseRestaurant.DataModel
{
    public class Data
    {
        //public async List<Contact> readContacts()
        //{
        //    List<Contact> listOfContacts = new List<Contact>();

        //    var query = from myContacts in ParseObject.GetQuery("Contacts")
        //                orderby myContacts.Get<DateTime>("updatedAt") descending
        //                select myContacts;

        //    IEnumerable<ParseObject> results = await query.FindAsync();

        //    foreach (var item in results)
        //    {
        //        Contact newContact = new Contact();
        //        newContact.FirstName = item.Get<string>("FirstName");
        //        newContact.LastName = item.Get<string>("LastName");
        //        newContact.EmailAddress = item.Get<string>("EmailAddress");
        //        newContact.Message = item.Get<string>("Message");
        //        listOfContacts.Add(newContact);
        //    }

        //    return listOfContacts;
        //}

        public async void readContacts()
        {
            List<Contact> listOfContacts = new List<Contact>();

            //var query = from myContacts in ParseObject.GetQuery("Contacts")
            //            orderby myContacts.Get<DateTime>("updatedAt") descending
            //            select myContacts;

            ParseQuery<ParseObject> query = new ParseQuery<ParseObject>("Contacts");

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
        }
    }
}
