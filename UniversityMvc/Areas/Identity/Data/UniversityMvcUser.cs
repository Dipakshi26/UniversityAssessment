using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;

namespace UniversityMvc.Areas.Identity.Data;

// Add profile data for application users by adding properties to the UniversityMvcUser class
public class UniversityMvcUser : IdentityUser
{
    [MaxLength(10)]
    public string? PanNo { get; set; }

}

