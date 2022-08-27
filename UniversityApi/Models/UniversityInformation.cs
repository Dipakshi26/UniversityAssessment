namespace UniversityApi.Models
{
    public class UniversityInformation
    {
        public int UniversityId { get; set; }
        public string? UniversityName { get; set; }
        public string? Location { get; set; }
        public string? AffiliatedUnder { get; set; }
        public int EstablishedYear { get; set; }
    }
}
