﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProjectDA377BVT17
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class WebDevModelContainer : DbContext
    {
        public WebDevModelContainer()
            : base("name=WebDevModelContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Products> Products { get; set; }
        public virtual DbSet<Categories> Categories { get; set; }
        public virtual DbSet<Tags> Tags { get; set; }
        public virtual DbSet<Orders> Orders { get; set; }
        public virtual DbSet<Order_Details> Order_Details { get; set; }
        public virtual DbSet<productTags> productTags { get; set; }
        public virtual DbSet<Seller> Sellers1 { get; set; }
        public virtual DbSet<Buyers> Buyers { get; set; }
        public virtual DbSet<Ad> Ads { get; set; }
        public virtual DbSet<Seller_Ads> Seller_Ads { get; set; }
        public virtual DbSet<PayMethods> PayMethods { get; set; }
        public virtual DbSet<Report> Reports { get; set; }
        public virtual DbSet<Review> Reviews { get; set; }
    }
}
