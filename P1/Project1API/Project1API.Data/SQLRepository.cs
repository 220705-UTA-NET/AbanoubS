using System.Data.SqlClient;
using Microsoft.Extensions.Logging;
using Project1API.Model;


namespace Project1API.Data
{
    public class SQLRepository : IRepository
    {
        //Fields
        private readonly string _connectionString;
        private readonly ILogger<SQLRepository> _logger;

        //Constructors
        public SQLRepository(string connectionString, ILogger<SQLRepository> logger)
        {
            _connectionString = connectionString;
            _logger = logger;
        }

        // Methods
        public async Task<IEnumerable<Clubs>> GetClubsAsync(int season)
        {
            List<Clubs> result = new();

            using SqlConnection connection = new(_connectionString);

            await connection.OpenAsync();

            //string cmdText = "SELECT Position, Club, Points FROM Season21_22; SELECT Position, Club, Points FROM Season20_21; SELECT Position, Club, Points FROM Season19_20; SELECT Position, Club, Points FROM Season18_19; SELECT Position, Club, Points FROM Season17_18; SELECT Position, Club, Points FROM Season16_17; SELECT Position, Club, Points FROM Season15_16; SELECT Position, Club, Points FROM Season14_15; SELECT Position, Club, Points FROM Season13_14; SELECT Position, Club, Points FROM Season12_13; SELECT Position, Club, Points FROM Season11_12;";

            string cmdText = $"SELECT * FROM All_Seasons WHERE Season_End=@season;";

            using SqlCommand cmd = new(cmdText, connection);
            cmd.Parameters.AddWithValue("@season", season);

            using SqlDataReader reader = await cmd.ExecuteReaderAsync();

            while (await reader.ReadAsync())
            {
                int Position = reader.GetInt32(1);
                int Points = reader.GetInt32(3);
                string Club = reader.GetString(2);
                //int Season_End = reader.GetInt32(4);

                Clubs ClubWinners = new(Position, Club, Points);
                result.Add(ClubWinners);
            }

            await connection.CloseAsync();

            _logger.LogInformation("Executed GetClubsAsync, returned {0} results", result.Count);

            return result;
        }

        public async Task<IEnumerable<int>> GetSeasonsAsync()
        {
            List<int> seasons = new();

            using SqlConnection connection = new(_connectionString);

            await connection.OpenAsync();

            string selectText = "SELECT DISTINCT Season_End FROM All_Seasons;";

            using SqlCommand cmd = new(selectText, connection);

            using SqlDataReader reader = await cmd.ExecuteReaderAsync();

            while (reader.Read())
            {
                seasons.Add(reader.GetInt32(0));
            }
            await connection.CloseAsync();
            _logger.LogInformation("Executed GetSeasonsAsync, returned {0} results", seasons.Count);
            return seasons;

        }

    }
}

