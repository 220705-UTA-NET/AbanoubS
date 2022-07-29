﻿using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Project1API.Data;
using Project1API.Model;

namespace Project1API.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ClubsController : ControllerBase
    {
        // Fields
        private readonly IRepository _repo;
        private readonly ILogger<ClubsController> _logger;

        // Constructor
        public ClubsController(IRepository repo, ILogger<ClubsController> logger)
        {
            _repo = repo;
            _logger = logger;
        }

        // Methods

        // GET /api/Clubs/{season}
        // /post
        // /post/1


        [HttpGet]
        public async Task<ActionResult<IEnumerable<Clubs>>> GetClubs( /* Get the season # from the route*/)
        {
            IEnumerable<Clubs> clubs;

            try
            {
                clubs = await _repo.GetClubsAsync();
            }
            catch (Exception e)
            {
                _logger.LogError(e, e.Message);
                return StatusCode(500);
            }

            return clubs.ToList();

        }


        /*
         * [GET]
         * puablic async Task<ActionResult<Ienumerable<int>>> GetSeasons()
         * {
         *  Ienumerable<int> seasons;
         *  try
         *  {
         *      season = await repo.GetSeasonsAsync();
         *      }
         *   catch (exception e )
         *   {
         *   _logger
         *   
         *   */

    }
}