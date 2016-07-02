using AppHarbor.Web.Models;
using System;

namespace AppHarbor.Web.Utils.Exceptions
{
    class MyException : Exception
    {
        public MyException() : base() {}
        public virtual ErrorModel GetError() { return null;}
    }
}