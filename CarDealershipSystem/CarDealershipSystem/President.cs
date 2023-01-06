using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CarDealershipSystem
{
    public class President : Approver
    {
        public override void ProcessRequest(Purchase purchase)
        {
            if (purchase.Amount < 10000000.0)
            {
                Console.WriteLine("{0} approved request# {1}",
                    this.GetType().Name);
            }
            else
            {
                Console.WriteLine("Request requires an executive meeting!");
            }
        }
    }
}