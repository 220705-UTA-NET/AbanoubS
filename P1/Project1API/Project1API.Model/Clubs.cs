namespace Project1API.Model
{
    public class Clubs
    {
        //Fields
        public int Position { get; set; }
        public string Club { get; set; }
        public int Points { get; set; }



        //Constructor
        public Clubs() { }

        public Clubs(int position, string club, int points)
        {
            Position = position;
            Club = club;
            Points = points;
        }

        //Methods

    }
}
