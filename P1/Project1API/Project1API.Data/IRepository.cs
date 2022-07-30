using Project1API.Model;

namespace Project1API.Data
{
    public interface IRepository
    {
        Task<IEnumerable<Clubs>> GetClubsAsync(int season);
    }
}

