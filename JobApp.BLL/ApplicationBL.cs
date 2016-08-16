using JobApp.DAL;
using JobApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace JobApp.BLL
{
    public class ApplicationBL
    {
        ApplicationDA app;
        public ApplicationBL()
        {
            app = new ApplicationDA();
        }
        
        public List<string> Create(ApplicationVM ap)
        {
            List<string> invalid = validations(ap);
            if(invalid.Count == 0)
            {
                app.SaveData(ap);
            }
            return invalid;
        }
        public List<StateVM> GetStates()
        {
            return app.GetState();
        }
        public List<CountryVM> GetCountry()
        {
            return app.GetCountry();
        }
        public List<GenderVM> GetGender()
        {
            return app.GetGenders();
        }
        public List<RaceVM> GetRace()
        {
            return app.GetRace();
        }
        public List<VeteranVM> GetVeteran()
        {
            return app.GetVeteran();
        }
        public List<DisabilityVM> GetDisability()
        {
            return app.GetDisability();
        }
        public List<string> validations(ApplicationVM avm)
        {
            List<string> errors = new List<string>();
            Regex emailval = new Regex("^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$", RegexOptions.IgnoreCase);

            if (string.IsNullOrWhiteSpace(avm.FirstName))
            {
                errors.Add("First Name cannot be Empty");
            }
            else if (avm.FirstName.Length > 100 || avm.FirstName.Length < 2)
            {
                errors.Add("Length of the first name should be in between 2 or 100");
            }
            else if (string.IsNullOrWhiteSpace(avm.LastName))
            {
                errors.Add("Last Name cannot be Empty");
            }
            else if (avm.LastName.Length > 100 || avm.LastName.Length < 2)
            {
                errors.Add("Length of the last name should be in between 2 or 100");
            }

            else if (avm.phone.Length != 10)
            {
                errors.Add("Please add a 10 digit phone number");
            }
            else if (string.IsNullOrWhiteSpace(avm.email))
            {
                errors.Add("please enter a email address");
            }
            else if (emailval.IsMatch(avm.email) == false)
            {
                errors.Add("Enter valid email address");
            }
            else if (app.Doesnotemail(avm.email))
            {
                errors.Add("Duplicates of your email are not allowed");
            }
            else if (string.IsNullOrWhiteSpace(avm.address1))
            {
                errors.Add("You cannot leave the address 1 empty");
            }
            else if (avm.address1.Length > 100 || avm.address1.Length < 5)
            {
                errors.Add("Check the length of the address 1");
            }
            else if (string.IsNullOrWhiteSpace(avm.hear))
            {
                errors.Add("Please let us know where did you hear about us");
            }
            else if (avm.hear.Length > 100 || avm.hear.Length <3)
            {
                errors.Add("Please check the length of the reference name");
            }
            else if(avm.GenderID < 1)
            {
                errors.Add("Please select a Gender");
            }
            else if (avm.VeteranID == 0)
            {
                errors.Add("Please select veteran status");
            }
            else if (avm.DisabilityID == 0)
            {
                errors.Add("Please choose one of the Disability status");
            }
            return errors;
        }
        
    }
}
