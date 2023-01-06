using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CarDealershipSystem
{
     public class Director : Approver
        {
            public override void ProcessRequest(Purchase purchase)
            {
                if (purchase.Amount < 1000000.0)
                {
                    Console.WriteLine("{0} approved request# {1}",
                        this.GetType().Name);
                }
                else if (successor != null)
                {
                    successor.ProcessRequest(purchase);
                }
            }
        }
    }
}