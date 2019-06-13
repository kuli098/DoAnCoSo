using System;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace DoAnCoSo1.Models
{
    public partial class DACSDBContext : DbContext
    {
        public DACSDBContext()
        {
        }

        public DACSDBContext(DbContextOptions<DACSDBContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Admin> Admin { get; set; }
        public virtual DbSet<Banner> Banner { get; set; }
        public virtual DbSet<Theloai> Theloai { get; set; }
        public virtual DbSet<Tintuc> Tintuc { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
                optionsBuilder.UseSqlServer("Server=DESKTOP-3URSRU2\\SQLEXPRESS;Database=DACSDB;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Admin>(entity =>
            {
                entity.HasKey(e => e.AdminTaikhoan);

                entity.ToTable("ADMIN");

                entity.Property(e => e.AdminTaikhoan)
                    .HasMaxLength(20)
                    .ValueGeneratedNever();

                entity.Property(e => e.AdminPassword).HasMaxLength(18);
            });

            modelBuilder.Entity<Banner>(entity =>
            {
                entity.HasKey(e => e.MaBanner);

                entity.ToTable("BANNER");
            });

            modelBuilder.Entity<Theloai>(entity =>
            {
                entity.HasKey(e => e.MaTheloai);

                entity.ToTable("THELOAI");

                entity.Property(e => e.MaTheloai)
                    .HasMaxLength(10)
                    .IsUnicode(false)
                    .ValueGeneratedNever();

                entity.Property(e => e.TenTheloai).HasMaxLength(50);
            });

            modelBuilder.Entity<Tintuc>(entity =>
            {
                entity.HasKey(e => e.MaTintuc);

                entity.ToTable("TINTUC");

                entity.Property(e => e.MaTheloai)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.Tieude).HasMaxLength(200);

                entity.HasOne(d => d.MaTheloaiNavigation)
                    .WithMany(p => p.Tintuc)
                    .HasForeignKey(d => d.MaTheloai)
                    .HasConstraintName("FK_TINTUC_THELOAI");
            });
        }
    }
}
