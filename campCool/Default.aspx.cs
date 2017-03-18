using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DT = System.Data;            // System.Data.dll  
using QC = System.Data.SqlClient;  // System.Data.dll  


namespace campCool
{
    public partial class campCool : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            string connString = "Server = tcp:campcoolsqlserver.database.windows.net,1433; Initial Catalog = campCoolUserDB; Persist Security Info = False; User ID =sqladmin; Password = k0Vd48DIfPA19WYc; MultipleActiveResultSets = False; Encrypt = True; TrustServerCertificate = False; Connection Timeout = 30;";
            string emailAddress = txtEmail.Text;
            campCool.InsertData(connString, emailAddress);
            Response.Redirect("~/thankyou.html");

        }

        private static void InsertData(string connString, string emailAddress)
        {
            // define INSERT query with parameters
            string query = "INSERT INTO dbo.userData (emailAddress) " +
                           "VALUES (@emailAddress) ";

            // create connection and command
            using (var connection = new QC.SqlConnection(connString))
            using (var command = new QC.SqlCommand(query, connection))
            {
                // define parameters and their values
                command.Parameters.Add("@emailAddress", DT.SqlDbType.VarChar, 50).Value = emailAddress;

                // open connection, execute INSERT, close connection
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
            }
        }
        
    }        
}