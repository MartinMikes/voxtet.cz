using Microsoft.EntityFrameworkCore;
using System;
using Voxtet.Web.Domain;

namespace Voxtet.Web.Data
{
    public class VoxtetContext:DbContext
    {
        public DbSet<Concert> Concerts { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder){
            //optionsBuilder.useS
            base.OnConfiguring(optionsBuilder);
        }
    }
}
