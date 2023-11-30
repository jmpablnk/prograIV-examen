using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace examenPIV.Models;

public partial class ExamenContext : DbContext
{
    public ExamenContext()
    {
    }

    public ExamenContext(DbContextOptions<ExamenContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Producto> Producto { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    { 
    }
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Producto>(entity =>
        {
            entity.HasKey(e => e.IdProducto);

            entity.ToTable("PRODUCTOS", "EXAMENFINAL");

            entity.Property(e => e.IdProducto).HasColumnName("ID_PRODUCTO");
            entity.Property(e => e.AnioFabricacion).HasColumnName("Anio_Fabricacion");
            entity.Property(e => e.AreaTratamiento)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Area_Tratamiento");
            entity.Property(e => e.CasaFabricacion)
                .HasMaxLength(100)
                .IsUnicode(false)
                .HasColumnName("Casa_Fabricacion");
            entity.Property(e => e.DescProducto)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("Desc_Producto");
            entity.Property(e => e.EstadoProducto)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("Estado_Producto");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
