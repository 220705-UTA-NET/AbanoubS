using System;

namespace Banking 
{
    class Program
    {
        static void Main(string[] args)
        {
            Account newAccount = new SavingsAccount("Abanoub", 150);
            Account secondAccount = new SavingsAccount("James", 50);
            Account thirdAccount = new SavingsAccount("John", 100);

            // Console.WriteLine(newAccount.accountNumber.ToString());
            // Console.WriteLine(secondAccount.accountNumber.ToString());
            // Console.WriteLine(thirdAccount.accountNumber.ToString());

            // thirdAccount.accountNumber = 12345;
            // Console.WriteLine(thirdAccount.accountNumber.ToString());




            secondAccount.MakeDeposit(250, "Got paid");
            secondAccount.MakeDeposit(50, "dinner with family");
            secondAccount.MakeWithdrawal(85, "new shoes");
            secondAccount.MakeWithdrawal(25, "lunch");

            // string Transactions = secondAccount.getAccountHistory();
            // Console.WriteLine(Transaction);
            Console.WriteLine(secondAccount.getAccountHistory());




           
            
        }
    }
}