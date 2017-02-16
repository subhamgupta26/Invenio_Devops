package com.invenio.bean;

public class Credit {

	 private long creditId,uniqueId,accountNo,balance;
	 private String bankName;
	public long getCreditId() {
		return creditId;
	}
	public void setCreditId(long creditId) {
		this.creditId = creditId;
	}
	public long getUniqueId() {
		return uniqueId;
	}
	public void setUniqueId(long uniqueId) {
		this.uniqueId = uniqueId;
	}
	public long getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(long accountNo) {
		this.accountNo = accountNo;
	}
	public long getBalance() {
		return balance;
	}
	public void setBalance(long balance) {
		this.balance = balance;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public Credit(long creditId, long uniqueId, long accountNo, long balance,
			String bankName) {
		super();
		this.creditId = creditId;
		this.uniqueId = uniqueId;
		this.accountNo = accountNo;
		this.balance = balance;
		this.bankName = bankName;
	}
	public Credit() {
		super();
	}
	@Override
	public String toString() {
		return "Credit [creditId=" + creditId + ", uniqueId=" + uniqueId
				+ ", accountNo=" + accountNo + ", balance=" + balance
				+ ", bankName=" + bankName + "]";
	}
	 
	
}
