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
    
    public partial class customer
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public customer()
        {
            this.Accounts = new HashSet<Account>();
        }
    
        public int ID { get; set; }
        public string userName { get; set; }
        public string name { get; set; }
        public string address { get; set; }
        public string homeTel { get; set; }
        public string mobile { get; set; }
        public string NIC { get; set; }
        public string password { get; set; }
        public string email { get; set; }
        public string tarrifCategory { get; set; }
        public string region { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Account> Accounts { get; set; }
    }
}
