

using DAW.Models;
namespace DAW.Utils.Exceptions
{
    class ClosedIssueException : MyException
    {
        private ErrorModel error;
        public ClosedIssueException(string msg) : base()
        {
            this.error = new ErrorModel
            {
                type = Const_Strings.APP_PREFIX + "/prob/closed-issue",
                title = "Closed issue",
                detail = msg,
                status = System.Net.HttpStatusCode.Forbidden
            };            
        }

        public new ErrorModel GetError()
        {
            return error;
        }
    }
}
