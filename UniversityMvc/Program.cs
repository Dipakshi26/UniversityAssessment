using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using UniversityMvc.Areas.Identity.Data;
using UniversityMvc.Data;

var builder = WebApplication.CreateBuilder(args);
var connectionString = builder.Configuration.GetConnectionString("UniversityMvcContextConnection") ?? throw new InvalidOperationException("Connection string 'UniversityMvcContextConnection' not found.");

builder.Services.AddDbContext<UniversityMvcContext>(options =>
    options.UseSqlServer(connectionString));
builder.Services.AddDbContext<AdminDbContext>(options =>
    options.UseSqlServer(connectionString));

builder.Services.AddIdentity<UniversityMvcUser, IdentityRole>(options => options.SignIn.RequireConfirmedAccount = false)
    .AddDefaultUI().AddEntityFrameworkStores<UniversityMvcContext>();
builder.Services.AddSession(options =>
{
    options.IdleTimeout = TimeSpan.FromMinutes(30);
    options.Cookie.HttpOnly = true;
    options.Cookie.IsEssential = true;
});
builder.Services.AddAuthorization(options =>
{
    options.AddPolicy("readonly", policy => policy.RequireRole("Operator"));
    options.AddPolicy("writeonly", policy => policy.RequireRole("Admin"));
});
builder.Services.AddScoped<AdminDbContext>();
// Add services to the container.
builder.Services.AddAutoMapper(typeof(Program));

builder.Services.AddControllersWithViews();

var app = builder.Build();

if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();
app.UseAuthentication(); 

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");
app.MapRazorPages();
app.Run();