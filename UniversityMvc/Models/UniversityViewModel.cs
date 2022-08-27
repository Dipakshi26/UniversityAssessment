using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace UniversityMvc.Models
{
    public class UniversityViewModel
    {
        [Key]
        public int UniversityId { get; set; }

        [Column(TypeName = "nvarchar(50)")]
        [DisplayName("University Name")]
        [Required(ErrorMessage = "This field is required.")]
        [MaxLength(50, ErrorMessage = "Maximum 50 characters only.")]
        public string? UniversityName { get; set; }

        [Column(TypeName = "nvarchar(50)")]
        [DisplayName("Location")]
        [Required(ErrorMessage = "This field is required.")]
        public string? Location { get; set; }

        [Column(TypeName = "nvarchar(50)")]
        [DisplayName("Affiliated Under")]
        [Required(ErrorMessage = "This field is required.")]
        public string? AffiliatedUnder { get; set; }



   
        public int EstablishedYear { get; set; }
    }
}
