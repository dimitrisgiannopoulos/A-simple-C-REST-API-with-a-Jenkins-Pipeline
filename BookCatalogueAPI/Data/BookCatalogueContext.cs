using Microsoft.EntityFrameworkCore;
using BookCatalogueAPI.Models;

namespace BookCatalogueAPI.Data
{
    public class BookCatalogueContext : DbContext
    {
        public DbSet<Book> Books { get; set; }
        public DbSet<Category> Categories { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            var serverVersion = new MySqlServerVersion(new Version(8, 0, 29));
            optionsBuilder.UseMySql("server=localhost;database=BookCatalogue;user=root;password=password;", serverVersion);
        }
    }
}