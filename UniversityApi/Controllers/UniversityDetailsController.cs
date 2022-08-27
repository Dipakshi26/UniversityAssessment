using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using UniversityClassLibrary;
using UniversityClassLibrary.Entities;

namespace UniversityApi.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class UniversityDetailsController : ControllerBase
    {
        private readonly UniversityDbContext _context;

        public UniversityDetailsController(UniversityDbContext context)
        {
            _context = context;
        }

        // GET: api/UniversityDetails
        [HttpGet]
        public async Task<ActionResult<IEnumerable<UniversityDetails>>> GetUniversity()
        {
          if (_context.University == null)
          {
              return NotFound();
          }
            return await _context.University.ToListAsync();
        }

        // GET: api/UniversityDetails/5
        [HttpGet("{id}")]
        public async Task<ActionResult<UniversityDetails>> GetUniversityDetails(int id)
        {
          if (_context.University == null)
          {
              return NotFound();
          }
            var universityDetails = await _context.University.FindAsync(id);

            if (universityDetails == null)
            {
                return NotFound();
            }

            return universityDetails;
        }

        // PUT: api/UniversityDetails/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutUniversityDetails(int id, UniversityDetails universityDetails)
        {
            if (id != universityDetails.UniversityId)
            {
                return BadRequest();
            }

            _context.Entry(universityDetails).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!UniversityDetailsExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/UniversityDetails
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<UniversityDetails>> PostUniversityDetails(UniversityDetails universityDetails)
        {
          if (_context.University == null)
          {
              return Problem("Entity set 'UniversityDbContext.University'  is null.");
          }
            _context.University.Add(universityDetails);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetUniversityDetails", new { id = universityDetails.UniversityId }, universityDetails);
        }

        // DELETE: api/UniversityDetails/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteUniversityDetails(int id)
        {
            if (_context.University == null)
            {
                return NotFound();
            }
            var universityDetails = await _context.University.FindAsync(id);
            if (universityDetails == null)
            {
                return NotFound();
            }

            _context.University.Remove(universityDetails);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool UniversityDetailsExists(int id)
        {
            return (_context.University?.Any(e => e.UniversityId == id)).GetValueOrDefault();
        }
    }
}
