//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MusicStore.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Order
    {
        public Order()
        {
            this.Albums = new HashSet<Album>();
        }
    
        public int ID { get; set; }
        public string Username { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public int Money { get; set; }
    
        public virtual UserAccount UserAccount { get; set; }
        public virtual ICollection<Album> Albums { get; set; }
    }
}
