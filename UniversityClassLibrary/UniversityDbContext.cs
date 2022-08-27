using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UniversityClassLibrary.Entities;

namespace UniversityClassLibrary
{
    public class UniversityDbContext : DbContext
    {
        public UniversityDbContext()
        {

        }
        public DbSet<UniversityDetails> University { get; set; }
        public UniversityDbContext(DbContextOptions options) : base(options)
        {

        }

      

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=DESKTOP-P3O2VMI\SQLEXPRESS;Database=UniversityInformationDb;Trusted_Connection=True;");

        }
    }
}
