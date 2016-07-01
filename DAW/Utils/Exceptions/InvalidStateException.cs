

using DAW.Models;
namespace DAW.Utils.Exceptions
{
    class InvalidStateException : MyException
    {
        private ErrorModel error;
        public InvalidStateException(string msg) : base()
        {
            this.error = new ErrorModel
            {
                type = Const_Strings.APP_PREFIX + "/prob/invalid-state",
                title = "Set Invalid State to Issue",
                detail = msg,
                status = System.Net.HttpStatusCode.Forbidden
            };
        }

        public override ErrorModel GetError()
        {
            return this.error;
        }
    }
}
