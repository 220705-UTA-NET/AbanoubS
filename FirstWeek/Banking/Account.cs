
namespace Banking 
{
    class Account
    {
        //Fields / State

        //(acess modifier) (type) (name) (initial value)

        protected double balance; 
        private List<Transaction> transactions = new List<Transaction>();
        public int accountNumber { get; set; }

        
        private string owner;

        private static int accountNumberSeed = 34567890;

        //Construtor 
        // acess modifier, class-name, parameter list

        public Account(double initialBalance, string owner)
        {
            this.accountNumber = accountNumberSeed;
            accountNumberSeed++;

            MakeDeposit(initialBalance); 
            this.owner = owner;
        }

        //Methods / behavior 
        //(acess modifier) (return type) (name) (parameters)
         public void setAccountNumber(int accountNumber)
        {
            this.accountNumber = accountNumber;
        }

        public int getAccountNumber()
        {
            return accountNumber;
        }

        public string DisplayBalance()
        {
            string balanceString = balance.ToString();
            return balanceString;
        }

        public void MakeDeposit (double amount, string note = "")
        {
            if (amount <= 0)
            {
                throw new ArgumentOutOfRangeException(nameof(amount), "Amount must me greater than zero");
            }
            else if (balance - amount < 0)
            {
                throw new ArgumentOutOfRangeException(nameof(amount), "Insufficient funds");
            }
            else 
            {
                balance += amount;
                var deposit = new Transaction(amount, DateTime.Now, note);
                transactions.Add(deposit);
            }
        }
        public void MakeWithdrawal (double amount, string note = "")
        {
            if (amount <= 0)
            {
                throw new ArgumentOutOfRangeException(nameof(amount), "Amount must be greater than zero");
            }
            else if (balance - amount < 0)
            {
                throw new ArgumentOutOfRangeException(nameof(amount), "Insufficient funds");
            }
            else
            {
                balance -= amount;
                var withdrawal = new Transaction(amount, DateTime.Now, note);
                transactions.Add(withdrawal);
            }
        }
        public string getAccountHistory()
        {
            var report = new System.Text.StringBuilder();

            report.AppendLine("Date\t\tAmount\t\tNote");
            foreach(var item in transactions)
            {
                report.AppendLine($"{item.data.ToShortDateString()}\t{item.note}");
            }
            return report.ToString();
        }


    }
}
