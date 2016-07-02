using System.Web;
using System.Web.Http;

namespace AppHarbor
{
    public class WebApiApplication : HttpApplication
    {
        protected void Application_Start()
        {
            GlobalConfiguration.Configure(Startup.Register);
        }
    }
}
