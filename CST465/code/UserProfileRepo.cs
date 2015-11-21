using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CST465.code
{
    public static class UserProfileRepo
    {
        public static UserProfileBO getProfile(Guid id)
        {
            //create a user object to return at the end
            UserProfileBO usr = new UserProfileBO();

            //setup a connection to the database
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_CST465"].ConnectionString);
            //setup a way to talk to the database
            SqlCommand command = new SqlCommand();
            command.Connection = connection;

            //open connection and set command parameters and type
            command.Connection.Open();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "UserProfile_Get";
            command.Parameters.Add(new SqlParameter("@UserID", id));

            //setup a data reader to get user info from database
            SqlDataReader reader = command.ExecuteReader();

            if(reader.Read())
            { 
                //set the user object attributes to the information read in
                usr.UserID = (Guid)reader[0];
                usr.fname = (String)reader[1];
                usr.lname = (String)reader[2];
                usr.age = (int)reader[3];
                usr.phone = (String)reader[4];
                usr.email = (String)reader[5];
                usr.street = (String)reader[6];
                usr.city = (String)reader[7];
                usr.state = (String)reader[8];
                usr.zip = (String)reader[9];
                if(reader[10] == System.DBNull.Value)
                {
                    usr.profpic = null;
                }
                else
                {
                    usr.profpic = (byte[])reader[10];
                }
            }

            command.Connection.Close();

            //return user object
            return usr;
        }

        public static void saveProfile(UserProfileBO profile)
        {
            //setup a connection to the database
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_CST465"].ConnectionString);
            //setup a way to talk to the database
            SqlCommand command = new SqlCommand();
            command.Connection = connection;

            //open connection and set command parameters and type
            command.Connection.Open();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "UserProfile_InsertUpdate";

            //set all of the data to be sent to database
            command.Parameters.Add(new SqlParameter("@UserID", profile.UserID));
            command.Parameters.Add(new SqlParameter("@FirstName", profile.fname));
            command.Parameters.Add(new SqlParameter("@LastName", profile.lname));
            command.Parameters.Add(new SqlParameter("@Age", profile.age));
            command.Parameters.Add(new SqlParameter("@PhoneNumber", profile.phone));
            command.Parameters.Add(new SqlParameter("@EmailAddress", profile.email));
            command.Parameters.Add(new SqlParameter("@StreetAddress", profile.street));
            command.Parameters.Add(new SqlParameter("@City", profile.city));
            command.Parameters.Add(new SqlParameter("@State", profile.state));
            command.Parameters.Add(new SqlParameter("@ZipCode", profile.zip));
            command.Parameters.Add(new SqlParameter("@ProfileImage", profile.profpic));

            command.ExecuteNonQuery();

            command.Connection.Close();


        }
    }
}