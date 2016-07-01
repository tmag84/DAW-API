using Microsoft.Owin.Hosting;
using DAWApi;
using System;


namespace AppHarbor
{
    public class Program
    {
        static void Main(string[] args)
        {
            using (WebApp.Start<Startup>("localhost:8080"))
            {
                Console.WriteLine("Server is listening...");
                Console.ReadKey();
            }
        }
    }
}