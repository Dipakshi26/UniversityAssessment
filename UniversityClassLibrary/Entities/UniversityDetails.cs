using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UniversityClassLibrary.Entities
{
    public class UniversityDetails
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]

        [Key]

        public int UniversityId { get; set; }
        public string? UniversityName { get; set; }
        public string? Location { get; set; }
        public string? AffiliatedUnder { get; set; }
        public int EstablishedYear { get; set; }
    }
}
