﻿using AppHarbor.Models;
using System;

namespace AppHarbor.Utils.Exceptions
{
    class MyException : Exception
    {
        public MyException() : base() {}
        public virtual ErrorModel GetError() { return null;}
    }
}
