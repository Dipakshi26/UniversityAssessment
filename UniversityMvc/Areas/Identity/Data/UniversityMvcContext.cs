﻿using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using UniversityMvc.Areas.Identity.Data;
using UniversityMvc.Models;

namespace UniversityMvc.Data;

public class UniversityMvcContext : IdentityDbContext<UniversityMvcUser>
{
    public UniversityMvcContext(DbContextOptions<UniversityMvcContext> options)
        : base(options)
    {
    }

    protected override void OnModelCreating(ModelBuilder builder)
    {
        base.OnModelCreating(builder);
        // Customize the ASP.NET Identity model and override the defaults if needed.
        // For example, you can rename the ASP.NET Identity table names and more.
        // Add your customizations after calling base.OnModelCreating(builder);
    }

    public DbSet<UniversityMvc.Models.UniversityViewModel>? UniversityViewModel { get; set; }
}
