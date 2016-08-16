using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JobApp.Models
{
   public class ApplicationVM
    {
        public int ApplicationID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string phone { get; set; }
        public string email { get; set; }
        public string address1 { get; set; }
        public string address2 { get; set; }
        public string city { get; set; }
        public int StateID { get; set; }
        public int CountryID { get; set; }
        public string linkedin { get; set; }
        public string website { get; set; }
        public string hear { get; set; }
        public int GenderID { get; set; }
        public int RaceID { get; set; }
        public int VeteranID { get; set; }
        public int DisabilityID { get; set; }
    }
}
