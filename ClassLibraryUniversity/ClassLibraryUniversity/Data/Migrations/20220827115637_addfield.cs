using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace ClassLibraryUniversity.Data.Migrations
{
    public partial class addfield : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "Password",
                table: "users",
                type: "Varchar(20)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "Varchar(10)");

            migrationBuilder.AlterColumn<string>(
                name: "PanNo",
                table: "users",
                type: "Varchar(15)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "Varchar(10)");

            migrationBuilder.AlterColumn<string>(
                name: "ConfirmPassword",
                table: "users",
                type: "Varchar(20)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "Varchar(10)");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "Password",
                table: "users",
                type: "Varchar(10)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "Varchar(20)");

            migrationBuilder.AlterColumn<string>(
                name: "PanNo",
                table: "users",
                type: "Varchar(10)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "Varchar(15)");

            migrationBuilder.AlterColumn<string>(
                name: "ConfirmPassword",
                table: "users",
                type: "Varchar(10)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "Varchar(20)");
        }
    }
}
