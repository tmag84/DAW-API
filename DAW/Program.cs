using Microsoft.Owin.Hosting;
using DAW.Utils;
using System;

namespace DAW_Project
{
    class Program
    {
        static void Main(string[] args)
        {
            using (WebApp.Start<Startup>(Const_Strings.SERVER_INFO))
            {
                Console.WriteLine("Server is listening...");
                Console.ReadKey();
            }
        }
    }
}
