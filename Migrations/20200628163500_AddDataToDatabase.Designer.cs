﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using TheGioiDienThoai.Models;

namespace TheGioiDienThoai.Migrations
{
    [DbContext(typeof(AppDbContext))]
    [Migration("20200628163500_AddDataToDatabase")]
    partial class AddDataToDatabase
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "3.1.5")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("TheGioiDienThoai.Models.ProductModel.Brand", b =>
                {
                    b.Property<int>("BrandId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("BrandId");

                    b.ToTable("Brands");

                    b.HasData(
                        new
                        {
                            BrandId = 1,
                            Name = "Apple"
                        },
                        new
                        {
                            BrandId = 2,
                            Name = "Samsung"
                        },
                        new
                        {
                            BrandId = 3,
                            Name = "VSmart"
                        },
                        new
                        {
                            BrandId = 4,
                            Name = "Oppo"
                        },
                        new
                        {
                            BrandId = 5,
                            Name = "Sony"
                        });
                });

            modelBuilder.Entity("TheGioiDienThoai.Models.ProductModel.Category", b =>
                {
                    b.Property<int>("CategoryId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(20)")
                        .HasMaxLength(20);

                    b.HasKey("CategoryId");

                    b.ToTable("Categories");

                    b.HasData(
                        new
                        {
                            CategoryId = 1,
                            Name = "Smartphone"
                        },
                        new
                        {
                            CategoryId = 2,
                            Name = "Tablet"
                        },
                        new
                        {
                            CategoryId = 3,
                            Name = "Laptop"
                        });
                });

            modelBuilder.Entity("TheGioiDienThoai.Models.ProductModel.Product", b =>
                {
                    b.Property<string>("ProductId")
                        .HasColumnType("nvarchar(450)");

                    b.Property<int?>("BrandId")
                        .HasColumnType("int");

                    b.Property<string>("CPU")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("CategoryId")
                        .HasColumnType("int");

                    b.Property<string>("Description")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("FrontCamera")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ImageFileName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(50)")
                        .HasMaxLength(50);

                    b.Property<string>("OS")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("Price")
                        .HasColumnType("int");

                    b.Property<int?>("Ram")
                        .HasColumnType("int");

                    b.Property<string>("RearCamera")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("Remain")
                        .IsRequired()
                        .HasColumnType("int");

                    b.Property<int?>("Rom")
                        .HasColumnType("int");

                    b.Property<string>("Screen")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("ProductId");

                    b.HasIndex("BrandId");

                    b.HasIndex("CategoryId");

                    b.ToTable("Products");

                    b.HasData(
                        new
                        {
                            ProductId = "1",
                            CPU = "Exynos 9611 8 nhân",
                            Description = "Galaxy A51 8GB là phiên bản nâng cấp RAM của smartphone tầm trung đình đám Galaxy A51 từ Samsung. Sản phẩm nổi bật với thiết kế sang trọng, màn hình Infinity-O cùng cụm 4 camera đột phá.",
                            FrontCamera = "32 MP",
                            ImageFileName = "samsung-galaxy-a51-8gb-blue.png",
                            Name = "Galaxy A51",
                            OS = "Android 10",
                            Price = 7790000,
                            Ram = 8,
                            RearCamera = "Chính 48 MP & Phụ 12 MP, 5 MP, 5 MP",
                            Remain = 10,
                            Rom = 128,
                            Screen = "Super AMOLED, \"6.5\",Full HD + "
                        });
                });

            modelBuilder.Entity("TheGioiDienThoai.Models.ProductModel.Product", b =>
                {
                    b.HasOne("TheGioiDienThoai.Models.ProductModel.Brand", "Brand")
                        .WithMany("Products")
                        .HasForeignKey("BrandId");

                    b.HasOne("TheGioiDienThoai.Models.ProductModel.Category", "Category")
                        .WithMany("Products")
                        .HasForeignKey("CategoryId");
                });
#pragma warning restore 612, 618
        }
    }
}
