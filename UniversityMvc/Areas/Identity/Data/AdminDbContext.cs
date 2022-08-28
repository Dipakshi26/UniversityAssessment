using Microsoft.EntityFrameworkCore;
using UniversityMvc.Models;

namespace UniversityMvc.Areas.Identity.Data
{
    public class AdminDbContext : DbContext
    {
        public DbSet<Admin> AdminModels { get; set; }
        public AdminDbContext()
        {

        }
        public AdminDbContext(DbContextOptions options) : base(options)
        {

        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=DESKTOP-P3O2VMI\SQLEXPRESS;Database=UniversityInformationDb;Trusted_Connection=True;");

        }
        protected override void OnModelCreating(ModelBuilder builder)
        {
            builder.Entity<Admin>(entity => entity.HasIndex(e => e.Email).IsUnique());
            builder.Entity<Admin>().Property(e => e.PanNo).HasColumnType("VARCHAR").HasMaxLength(10);
            builder.Entity<Admin>().Property(e => e.RoleName).HasColumnType("VARCHAR").HasMaxLength(10);
           
        }
    }
}
