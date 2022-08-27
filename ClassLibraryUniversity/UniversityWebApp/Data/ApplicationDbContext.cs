using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using UniversityWebApp.Models;

namespace UniversityWebApp.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
        public DbSet<UniversityWebApp.Models.UniversityModel>? UniversityModel { get; set; }
        public DbSet<UniversityWebApp.Models.RegisterModel>? RegisterModel { get; set; }
    }
}