using Microsoft.Owin.Hosting;
using DAW.Utils;
using System;
using DAW;

namespace DAW_Project
{
    class Program
    {
        static void Main(string[] args)
        {
            using (WebApp.Start<Startup>(Const_Strings.SELF_HOST_SERVER_INFO))
            {
                Console.WriteLine("Server is listening...");
            }
        }
    }
}
