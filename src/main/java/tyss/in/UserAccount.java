package tyss.in;

public class UserAccount {
	
	private String userName;
	private String password;
	private long phone;
	
	//OTP
	private static int otp;
	
	public static int generateOTO()
	{
		int max=10000;
		int min=1;
		return UserAccount.otp=(int)(Math.random()*(max-min)+1)+max;
	}
	
	public static int getOTP()
	{
		return UserAccount.otp;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public static int getOtp() {
		return otp;
	}

	public static void setOtp(int otp) {
		UserAccount.otp = otp;
	}

	public UserAccount(String userName, String password, long phone) {
		super();
		this.userName = userName;
		this.password = password;
		this.phone = phone;
	}
	
	
	public UserAccount()
	{
		
	}
}
