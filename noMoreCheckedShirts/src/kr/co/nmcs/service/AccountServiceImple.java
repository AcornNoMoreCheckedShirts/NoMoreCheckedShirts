package kr.co.nmcs.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.nmcs.dao.AccountDao;
import kr.co.nmcs.dto.AccountDTO;

@Service("accountService")
public class AccountServiceImple implements AccountService {

	@Resource(name = "AccountDAO")
	AccountDao daoA;

	public void setDaoA(AccountDao daoA) {
		this.daoA = daoA;
	}

	@Override
	public void register(AccountDTO adto) {
		// TODO Auto-generated method stub
		daoA.register(adto);
	}

	@Override
	public void modifyAccount() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void withdrawal() {
		// TODO Auto-generated method stub

	}

	@Override
	public List<AccountDTO> accountAll() {
		// TODO Auto-generated method stub
		return daoA.accountAll();
	}

}