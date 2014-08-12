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
    
    public partial class Album
    {
        public Album()
        {
            this.Songs = new HashSet<Song>();
            this.Orders = new HashSet<Order>();
            this.UserAccounts = new HashSet<UserAccount>();
        }
    
        public int ID { get; set; }
        public string Name { get; set; }
        public string Information { get; set; }
        public string LinkImage { get; set; }
        public Nullable<System.DateTime> ReleaseDate { get; set; }
        public Nullable<int> BuyCounter { get; set; }
        public Nullable<int> IDGenre { get; set; }
        public Nullable<int> IDPublisher { get; set; }
    
        public virtual Genre Genre { get; set; }
        public virtual Publisher Publisher { get; set; }
        public virtual ICollection<Song> Songs { get; set; }
        public virtual ICollection<Order> Orders { get; set; }
        public virtual ICollection<UserAccount> UserAccounts { get; set; }
    }
}