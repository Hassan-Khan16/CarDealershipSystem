using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CarDealershipSystem
{
    public class Purchase
    {
        double amount;
        string name;
        // Constructor
        public Purchase( double amount, string purpose)
        {
            this.amount = amount;
            this.name = purpose;
        }
        // Gets or sets purchase amount
        public double Amount
        {
            get { return amount; }
            set { amount = value; }
        }
        // Gets or sets purchase purpose
        public string Purpose
        {
            get { return name; }
            set { name = value; }
        }
    }
}