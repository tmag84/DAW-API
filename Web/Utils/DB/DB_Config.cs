using System.Configuration;

namespace AppHarbor.Web.Utils.DB
{
    public class DB_Config
    {
        //Get the connection string from App config file.
        public static string GetConnectionString()
        {
            string returnValue = null;

            ConnectionStringSettings settings =
            ConfigurationManager.ConnectionStrings["AppHarbor.Web.Properties.Settings.connString"];

            if (settings != null)
                returnValue = settings.ConnectionString;

            return returnValue;
        }
    }
}