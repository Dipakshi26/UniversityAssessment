using System.ComponentModel.DataAnnotations;

namespace UniversityMvc.Models
{
    public class Admin
    {
        public int Id { get; set; }
        public string? Email { get; set; }

        [MaxLength(10)]
        public string? PanNo { get; set; }
        public string? StatusIsApprove{ get; set; }

        public string? RoleName { get; set; }
    }
}
