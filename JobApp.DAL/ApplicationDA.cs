using JobApp.DAL.Infrastructure;
using JobApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JobApp.DAL
{
    public class ApplicationDA
    {
        ApplicationsContext acontext;
        public ApplicationDA()
        {
            acontext = new ApplicationsContext();
        }
        public List<StateVM> GetState()
        {
            return acontext.States.Select(p => new StateVM { StateID = p.StateID, StateDesc = p.StateDesc }).ToList();
        }
        public List<CountryVM> GetCountry()
        {
            return acontext.Countries.Select(p => new CountryVM { CountryID = p.CountryID, CountryDesc = p.CountryDesc }).ToList();
        }
        public List<GenderVM> GetGenders()
        {
            return acontext.Genders.Select(p => new GenderVM { GenderID = p.GenderID, GenderDesc = p.GenderDesc }).ToList();
        }
        public List<RaceVM> GetRace()
        {
            return acontext.Races.Select(p => new RaceVM { RaceID = p.RaceID, RaceDesc = p.RaceDesc }).ToList();
        }
        public List<VeteranVM> GetVeteran()
        {
            return acontext.veterans.Select(p => new VeteranVM { VeteranID = p.VeteranID, VeteranDesc = p.VeteranDesc }).ToList();
        }
        public List<DisabilityVM> GetDisability()
        {
            return acontext.disabilities.Select(p => new DisabilityVM { DisabilityID = p.DisabilityID, DisabilityDesc = p.DisabilityDesc }).ToList();
        }
        public void SaveData(ApplicationVM app)
        {
            Application apps = new Application();

            apps.FirstName = app.FirstName;
            apps.LastName = app.LastName;
            apps.phone = app.phone;
            apps.email = app.email;
            apps.address1 = app.address1;
            apps.address2 = app.address2;
            apps.city = app.city;
            apps.StateID = app.StateID;
            apps.CountryID = app.CountryID;
            apps.linkedin = app.linkedin;
            apps.website = app.website;
            apps.hear = app.hear;
            apps.GenderID = app.GenderID;
            apps.RaceID = app.RaceID;
            apps.VeteranID = app.VeteranID;
            apps.DisabilityID = app.DisabilityID;

            acontext.Applications.Add(apps);
            acontext.SaveChanges();

            app.ApplicationID = apps.ApplicationID;
        }

        public bool Doesnotemail(string email)
        {
            if(acontext.Applications.Where(p=> p.email == email).Count() == 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

    }
}
