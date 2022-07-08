using System;

namespace Practice 
{

    class Calculator
    {
         //fields

        //methods

        
        public void Calculate(int n)
        {
            //find the highest number that is a multiple of 3 that is less than n
           int start = n - (n % 3);


           //loop that decreases by 3, and prints the current value, until <=3
           if (start >= 3)
           {
            while (start >=3)
            {
                Console.WriteLine(start);
                start -= 3;

            }
           }
           else{
            Console.WriteLine("Number has not multiple of 3, or is not greater than 3");
           }
          // Console.WriteLine(start);
        }
    }
}