using Microsoft.EntityFrameworkCore;
using System;
using Voxtet.Web.Domain;

namespace Voxtet.Web.Data
{
    public class VoxtetContext:DbContext
    {
        public DbSet<Concert> Concerts { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder){
            optionsBuilder.UseSqlServer("Server=(localdb)\\mssqllocaldb;Database=VoxtetCz;Trusted_Connection=True;MultipleActiveResultSets=true");
            //base.OnConfiguring(optionsBuilder);
        }
    }
}
