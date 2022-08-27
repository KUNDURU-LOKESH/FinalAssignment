using ClassLibraryUniversity.Model;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace UniversityApi.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class UniversityApiController : ControllerBase
    {
        private readonly UniversityDbContext _universityDbContext;

        public UniversityApiController(UniversityDbContext universityDbContext)
        {
            _universityDbContext = universityDbContext;
        }
        [HttpPost]
        public async Task<IActionResult> create(University university)
        {
            if (university == null)
            {
                return BadRequest("university object can't be null");

            }
            if (_universityDbContext.Universities == null)
            {
                return NotFound("table doesn't exist");
            }
            _universityDbContext.Universities.Add(university);
            await _universityDbContext.SaveChangesAsync();
            return Ok("added");
        }

        [HttpGet]
        public async Task<IActionResult> Get()
        {
            if (_universityDbContext.Universities == null)
            {
                return BadRequest("table doesn't exist");
            }
            return Ok(_universityDbContext.Universities);
        }
        [HttpGet("{id}")]
        public async Task<IActionResult> GetOneUniversity(int id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var data = _universityDbContext.Universities.Where(a => a.Id == id).FirstOrDefault();
            return Ok(data);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> update(int id, University university)
        {
            if (id <= 0)
            {
                return NotFound("id not exist");
            }
            var orginalData = _universityDbContext.Universities.Where(a => a.Id == id).FirstOrDefault();
            orginalData.UniversityName = university.UniversityName;
            orginalData.AffiliatedUnder=university.AffiliatedUnder;
            orginalData.Location= university.Location;
            orginalData.EstablishedYear=university.EstablishedYear;
            
            if (orginalData == null)
            {
                return NotFound("data not present");

            }
            _universityDbContext.Universities.Update(orginalData);
            _universityDbContext.SaveChanges();
            return Ok("Updated");
        }
        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(int id)
        {
            if (id <= 0)
            {
                return BadRequest("Id doesn't exist");
            }
            var data = _universityDbContext.Universities.Where(e => e.Id == id).FirstOrDefault();
            if (data == null)
            {
                return NotFound();
            }
            _universityDbContext.Universities.Remove(data);
            _universityDbContext.SaveChanges();
            return Ok("deleted");

        }
    }
}
