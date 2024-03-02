package com.photoframe.service;

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
		account.setEmail("");
		return accountRepository.save(account);
	}

	public Boolean checkUsernameExits(String username) {
		List<Account> listAccounts = findAllAccount();
		for(Account a:listAccounts) {
			if(a.getUserName().equals(username)) {
				return false;
			}
		}
		return true;
	}

}