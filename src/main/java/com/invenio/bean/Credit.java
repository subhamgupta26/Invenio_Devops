package com.invenio.bean;

public class Credit {

	 private int creditId,uniqueId,accountNo,balance;
	 private String bankName;
	public int getCreditId() {
		return creditId;
	}
	public void setCreditId(int creditId) {
		this.creditId = creditId;
	}
	public int getUniqueId() {
		return uniqueId;
	}
	public void setUniqueId(int uniqueId) {
		this.uniqueId = uniqueId;
	}
	public int getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(int accountNo) {
		this.accountNo = accountNo;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public Credit(int creditId, int uniqueId, int accountNo, int balance,
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
