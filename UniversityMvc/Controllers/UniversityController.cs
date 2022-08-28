using AutoMapper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using UniversityClassLibrary.Entities;
using UniversityMvc.Models;

namespace UniversityMvc.Controllers
{
    public class UniversityController : Controller
    {
        public readonly IWebHostEnvironment _webHostEnvironment;
        Uri baseAddress = new Uri("https://localhost:7272/api");

        HttpClient client;
        private readonly IMapper _mapper;
        public UniversityController(IWebHostEnvironment webHostEnvironment,IMapper mapper)
        {
            client = new HttpClient();
            _webHostEnvironment = webHostEnvironment;
            client.BaseAddress = baseAddress;
            _mapper = mapper;

        }
        //public static List<UniversityViewModel> university = new List<UniversityViewModel>();

        [Authorize(Policy= "readonly")]
        public IActionResult Index()
        {
            
            HttpResponseMessage response = client.GetAsync(baseAddress + "/UniversityDetails/GetUniversity").Result;
            if (response.IsSuccessStatusCode)
            {
                string data = response.Content.ReadAsStringAsync().Result;
                var uni = JsonConvert.DeserializeObject<List<UniversityDetails>>(data);
                var uniList = _mapper.Map<List<UniversityViewModel>>(uni);

                return View("Index", uniList);
            }
            else
            {
                return View();
            }

        }
        public IActionResult AddNewUniversity()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult AddNewUniversity(UniversityViewModel university)
        {
            try
            {
                HttpRequestMessage request = new HttpRequestMessage();
                var data = JsonConvert.SerializeObject(university);
                var contentData = new StringContent(data, System.Text.Encoding.UTF8, "application/json");
                HttpResponseMessage respnse = client.PostAsync(baseAddress + "/UniversityDetails/PostUniversityDetails", contentData).Result;
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return Content("ohhh");
            }
        }
        
        public ActionResult DeleteUniversityDeatils(int id)
        {

            //HTTP DELETE
            List<UniversityViewModel> university = new List<UniversityViewModel>();
            var deleteTask = client.DeleteAsync(baseAddress + "/UniversityDetails/DeleteUniversityDetails/" + id);
            deleteTask.Wait();

            var result = deleteTask.Result;
            if (result.IsSuccessStatusCode)
            {
                return RedirectToAction("Index");
            }
            return View("Index",university);
        }

        public ActionResult UpdateUniversity1(int id)
        {
            UniversityViewModel? university = new();

            HttpResponseMessage responseMessage = client.GetAsync(baseAddress + "/UniversityDetails/GetUniversityDetails/" + id.ToString()).Result;
            if (responseMessage.IsSuccessStatusCode)
            {
                string data = responseMessage.Content.ReadAsStringAsync().Result;
                university = JsonConvert.DeserializeObject<UniversityViewModel>(data);
            }
            return View(university);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult UpdateUniversity(UniversityViewModel university)
        {

            var putTask = client.PutAsJsonAsync<UniversityViewModel>(baseAddress + "/UniversityDetails/PutUniversityDetails/" + university.UniversityId.ToString(), university);
            putTask.Wait();

            var result = putTask.Result;
            if (result.IsSuccessStatusCode)
            {
                return RedirectToAction("Index");
            }
            return View(university);
        }



        [HttpGet]
        public ActionResult Details(int id)
        {

            HttpResponseMessage response = client.GetAsync(baseAddress + "/UniversityDetails/UniversityDetailsExists/id?id=" + id).Result;
            string data = response.Content.ReadAsStringAsync().Result;
            UniversityViewModel university = JsonConvert.DeserializeObject<UniversityViewModel>(data)!;
            return View("Details",university);


        }


    }
}
