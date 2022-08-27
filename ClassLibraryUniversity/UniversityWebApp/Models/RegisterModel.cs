using System.ComponentModel.DataAnnotations;

namespace UniversityWebApp.Models
{
    public class RegisterModel
    {
        public int Id { get; set; }
        [Required]
        [MaxLength(50, ErrorMessage="Email must less than 50")]
        public string Email { get; set; }
        [Required]
        public string PanNo { get; set; }
        [Required]
        [MaxLength(10), MinLength(8, ErrorMessage = "Password must between 8 to 10 charcater Length")]
        public string Password { get; set; }
        [Required]
        [MaxLength(10), MinLength(8, ErrorMessage = "Password must between 8 to 10 charcater Length")]
        public string ConfirmPassword { get; set; }
        public bool IsApproved { get; set; }
        public string Status { get; set; }
        public virtual int RoleId { get; set; }
    }
}
