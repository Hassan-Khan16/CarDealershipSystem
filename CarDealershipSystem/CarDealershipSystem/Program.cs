using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CarDealershipSystem
{
    public class Program
    {
        public static void Main(string[] args)
        {
            double amount = TextBox1.Text();
            string name = TextBox2.Text();
            Approver larry = new Director();
            Approver sam = new VicePresident();
            Approver tammy = new President();
            larry.SetSuccessor(sam);
            sam.SetSuccessor(tammy);
            // Generate and process purchase requests
            Purchase p = new Purchase(350.00, "Supplies");
            larry.ProcessRequest(p);
            p = new Purchase( 32590.10, "Project X");
            larry.ProcessRequest(p);
            p = new Purchase( 122100.00, "Project Y");
            larry.ProcessRequest(p);
            // Wait for user
            Console.ReadKey();
        }
    }
}