using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TravelProject
{
    public class User
    {
        public string fname,email,pass, lname, usrname, profile_path, cover_path;
        public int followers;
        public User(string[] data,int followers)
        {
            fname= data[0];
            lname = data[1];
            email= data[2];
            pass= data[3];
            usrname= data[4];
            profile_path= data[5];
            cover_path= data[6];
            this.followers= followers;
        }
    }
}