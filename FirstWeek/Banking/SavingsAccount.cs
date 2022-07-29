namespace Banking
{
    class SavingsAccount : Account  // Extends Account class
    {
        private double interestRate;

        //Constructor
        public SavingsAccount(String owner, double initialBalance, double interestRate = 0.0003) : base(initialBalance, owner)
        {
            this.interestRate = interestRate;
        }

        public void ApplyIntrest()
        {
            double payment = this.balance * this.interestRate;
            this.MakeDeposit(payment);
        }

        public override string DisplayBalance() //overrides method from abstract class
        {
            return "From SacingsAccount: " + base.DisplayBalance();
        }
    }
}