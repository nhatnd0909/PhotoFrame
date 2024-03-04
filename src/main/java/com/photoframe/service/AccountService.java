package com.photoframe.service;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.photoframe.model.Account;
import com.photoframe.repository.AccountRepository;

@Service
public class AccountService {
	@Autowired
	private AccountRepository accountRepository;

	public List<Account> findAllAccount() {
		return accountRepository.findAll();
	}

	public Account createUserAccount(Account account) {
		account.setRole("user");
		return accountRepository.save(account);
	}

	public Boolean checkUsernameExits(String username) {
		List<Account> listAccounts = findAllAccount();
		for (Account a : listAccounts) {
			if (a.getUserName().equals(username)) {
				return false;
			}
		}
		return true;
	}

	public void UpdatePassword(Long accountID, String newPassword) {
		Account account = getAccountByID(accountID);
		account.setPassword(getMd5(newPassword));
		accountRepository.save(account);
	}

	public Account getAccountByID(Long idAccount) {
		List<Account> listAccounts = findAllAccount();
		for (Account a : listAccounts) {
			if (a.getAccountID().equals(idAccount)) {
				return a;
			}
		}
		return null;
	}

	public Account getAccountByUsername(String username) {
		List<Account> listAccounts = findAllAccount();
		for (Account a : listAccounts) {
			if (a.getUserName().equals(username)) {
				return a;
			}
		}
		return null;
	}

	public Boolean checkLogin(String username, String password) {
		Account account = getAccountByUsername(username);
		if (account != null && account.getUserName().equals(username) && account.getPassword().equals(password)) {
			return true;
		}
		return false;
	}

	public String getMd5(String input) {
		try {
			// Static getInstance method is called with hashing MD5
			MessageDigest md = MessageDigest.getInstance("MD5");
			// digest() method is called to calculate message digest
			// of an input digest() return array of byte
			byte[] messageDigest = md.digest(input.getBytes());
			// Convert byte array into signum representation
			BigInteger no = new BigInteger(1, messageDigest);
			// Convert message digest into hex value
			String hashtext = no.toString(16);
			while (hashtext.length() < 32) {
				hashtext = "0" + hashtext;
			}
			return hashtext;
		}
		// For specifying wrong message digest algorithms
		catch (NoSuchAlgorithmException e) {
			throw new RuntimeException(e);
		}
	}
}