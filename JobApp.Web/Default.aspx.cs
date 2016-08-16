using JobApp.BLL;
using JobApp.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobApp.Web
{
    public partial class Default : System.Web.UI.Page
    {
        ApplicationBL ap1;
        public Default()
        {
            ap1 = new ApplicationBL();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack != true)
            {
                State.DataSource = ap1.GetStates();
                State.DataTextField = "StateDesc";
                State.DataValueField = "StateID";
                State.DataBind();

                DropDown.DataSource = ap1.GetCountry();
                DropDown.DataTextField = "CountryDesc";
                DropDown.DataValueField = "CountryID";
                DropDown.DataBind();

                gender.DataSource = ap1.GetGender();
                gender.DataTextField = "GenderDesc";
                gender.DataValueField = "GenderID";
                gender.DataBind();

                race.DataSource = ap1.GetRace();
                race.DataTextField = "RaceDesc";
                race.DataValueField = "RaceID";
                race.DataBind();

                Veteran.DataSource = ap1.GetVeteran();
                Veteran.DataTextField = "VeteranDesc";
                Veteran.DataValueField = "VeteranID";
                Veteran.DataBind();

                disability.DataSource = ap1.GetDisability();
                disability.DataTextField = "DisabilityDesc";
                disability.DataValueField = "DisabilityID";
                disability.DataBind();
            }

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            ApplicationVM app = new ApplicationVM();

            app.FirstName = first_Name.Text;
            app.LastName = last_name.Text;
            app.phone = contact.Text;
            app.email = email.Text;
            app.address1 = address1.Text;
            app.address2 = address2.Text;
            app.city = city.Text;
            app.StateID = Convert.ToInt32(State.SelectedValue);
            app.CountryID = Convert.ToInt32(DropDown.SelectedValue);
            app.linkedin = LinkedIn.Text;
            app.website = website.Text;
            app.hear = referral.Text;
            app.GenderID =Convert.ToInt32(gender.SelectedValue);
            app.RaceID = Convert.ToInt32(race.SelectedValue);
            app.VeteranID = Convert.ToInt32(Veteran.SelectedValue);
            app.DisabilityID = Convert.ToInt32(disability.SelectedValue);

        
            List<string> invalid = ap1.Create(app);

            if(invalid.Count == 0)
            {
                label.Text = "Application has been sent, successfully!";
                clear();
            }
            else
            {
                label.Text = invalid[0];
            }

        }
        public void clear()
        {
            first_Name.Text = string.Empty;
            last_name.Text = string.Empty;
            contact.Text= string.Empty; 
            email.Text= string.Empty;
            address1.Text= string.Empty;
            address2.Text= string.Empty;
            city.Text= string.Empty;
            State.SelectedIndex=0;
            DropDown.SelectedIndex = 0;
            LinkedIn.Text= string.Empty;
            website.Text = string.Empty; 
            referral.Text = string.Empty;
            gender.ClearSelection();
            race.SelectedIndex = 0;
            Veteran.ClearSelection();
            disability.ClearSelection();
        }
    }
}