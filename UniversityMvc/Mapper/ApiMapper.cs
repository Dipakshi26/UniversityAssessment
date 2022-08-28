using AutoMapper;
using UniversityClassLibrary.Entities;
using UniversityMvc.Models;

namespace UniversityMvc.Mapper
{
    public class ApiMapper: Profile
    {
        public ApiMapper()
        {
            CreateMap<UniversityDetails, UniversityViewModel>().ReverseMap();
           
        }
    }
}
