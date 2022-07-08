using System;

namespace Practice 
{
    class Program{
        //class has members, fields or state, and members or behaviors

        //fields

        //methods

        static void Main(string[]args)
        {
            Console.WriteLine("Please enter and interger: ");

            string response = Console.ReadLine(); //readline returns a sring
            Calculator calc = new Calculator();

            try{
                int n;
                if (int.TryParse(response, out int n))
                {
                     calc.Calculate(n);
                }
                else
                {
                    Console.WriteLine("Please enter and interger: ");

                }

                int  number = int.Parse(response); // returns an int
            
               
            }
            catch(Exception ex)
            {
                Console.WriteLine("I don't know what you did, but that's not an integer!");
                return;
            }
            
            

        }

       
    }
}