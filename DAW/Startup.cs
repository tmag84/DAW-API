using Drum;
using Owin;
using WebApi.Hal;
using System.Web.Http;
using DAW.Utils;
using Newtonsoft.Json;
using CollectionJsonFormatter;
using System.Web.Http.Cors;

namespace DAW_Project
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            var config = new HttpConfiguration();

            var cors = new EnableCorsAttribute("http://localhost:8000", "*", "*");
            config.EnableCors(cors);

            config.MapHttpAttributeRoutesAndUseUriMaker();
            /*
            config.Routes.MapHttpRoute(
                "API",
                "api/{controller}"
                );*/

            //project route
            
            config.Routes.MapHttpRoute(
                "projects",
                Const_Strings.PROJECT_ROUTE_PREFIX
                );
                

            //issues route
            
            config.Routes.MapHttpRoute(
                "issues",
                Const_Strings.ISSUE_ROUTE_PREFIX
                );
                


            //comments route
            
            config.Routes.MapHttpRoute(
                "comments",
                Const_Strings.COMMENT_ROUTE_PREFIX
                );
                

            config.Formatters.Remove(config.Formatters.JsonFormatter);
            //config.Formatters.JsonFormatter.SerializerSettings.Formatting = Formatting.Indented;
            //config.Formatters.JsonFormatter.SerializerSettings.NullValueHandling = Newtonsoft.Json.NullValueHandling.Ignore;
            config.Formatters.Remove(config.Formatters.XmlFormatter);

            var jsonhal = new JsonHalMediaTypeFormatter();
            jsonhal.SerializerSettings.NullValueHandling = NullValueHandling.Ignore;
            jsonhal.SerializerSettings.DefaultValueHandling = DefaultValueHandling.Ignore;
            jsonhal.SerializerSettings.Formatting = Formatting.Indented;
            config.Formatters.Add(jsonhal);   
  
            app.UseWebApi(config);
        }
    }
}
