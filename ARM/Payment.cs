//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ARM
{
    using System;
    using System.Collections.Generic;
    
    public partial class Payment
    {
        public int paymentID { get; set; }
        public string accountNumber { get; set; }
        public Nullable<double> amount { get; set; }
        public Nullable<System.DateTime> date { get; set; }
        public string bank { get; set; }
        public string creditCardNo { get; set; }
        public Nullable<System.DateTime> expiryDate { get; set; }
        public string code { get; set; }
    
        public virtual Account Account { get; set; }
    }
}
