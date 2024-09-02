package tyss.in;

public class BankAccount {
	
	private String  accountNo;
	private String ifsc;
	private double balance;
	private String branch;
	public String getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	public String getIfsc() {
		return ifsc;
	}
	public void setIfsc(String ifsc) {
		this.ifsc = ifsc;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public BankAccount(String accountNo, String ifsc, double balance, String branch) {
		super();
		this.accountNo = accountNo;
		this.ifsc = ifsc;
		this.balance = balance;
		this.branch = branch;
	}
	
	public BankAccount()
	{
		setAccountNo("8005152030");
		setIfsc("ICICI@83");
		setBalance(95000.0);
		setBranch("Deccan");
	}
	

}
