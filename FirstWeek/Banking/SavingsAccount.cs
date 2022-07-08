namespace Banking
{
    class SavingsAccount : Account  // Extends Account class
    {
        private double interestRate;

        //Constructor
        public SavingsAccount() : base(initialBalance, owner)
        {

        }

        public void ApplyIntrest()
        {
            double payment = this.balance * this.interestRate;
            this.MakeDeposit(payment);
        }
    }
}