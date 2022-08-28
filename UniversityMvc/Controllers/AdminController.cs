using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using UniversityMvc.Areas.Identity.Data;
using UniversityMvc.Models;

namespace UniversityMvc.Controllers
{
    public class AdminController : Controller
    {
        private readonly AdminDbContext _adminDbContext;
        public AdminController(AdminDbContext adminDbContext)
        {
            _adminDbContext = adminDbContext;
        }

        public IActionResult Approve(Admin adminModels)
        {

            adminModels.StatusIsApprove = "Approved";
            _adminDbContext.AdminModels.Update(adminModels);
            _adminDbContext.SaveChanges();
            return View("Index", adminModels);
        }
        public IActionResult Reject(Admin adminModels)
        {
            adminModels.StatusIsApprove = "Rejected";
            _adminDbContext.AdminModels.Update(adminModels);
            _adminDbContext.SaveChanges();
            return View("Index", adminModels);
        }
        [Authorize(Policy = "writeonly")]
        public IActionResult Index()
        {
            if (_adminDbContext.AdminModels == null)
            {
                return NotFound();
            }
            List<Admin> adminModels = new List<Admin>();
            adminModels = _adminDbContext.AdminModels.Where(x => x.StatusIsApprove == "Pending").ToList();
            if (adminModels == null)
            {
                return NotFound();
            }
            return View(adminModels);

        }

    }
}
   
