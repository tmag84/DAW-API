namespace DAW.Utils
{
    public class Const_Strings
    {
        public const string SERVER_INFO = "http://localhost:8080";
        public const string APP_PREFIX = SERVER_INFO + "/api";
        public const string PROJECT_ROUTE_PREFIX = "api/projects";
        //public const string ISSUE_ROUTE_PREFIX = "api/issues";
        public const string ISSUE_ROUTE_PREFIX = "api/projects/{name}/issues";
        //public const string COMMENT_ROUTE_PREFIX = "api/comments";
        public const string COMMENT_ROUTE_PREFIX = "api/projects/{name}/issues/{id}/comments";           
    }
}
