package com.service.imp;
import java.security.NoSuchAlgorithmException;
import com.domain.MD5;
import com.service.IMD5Biz;
public class MD5BizImp implements IMD5Biz{
	@Override
	public String md5(String password) {
		String md5password=null;
		try {
			MD5 md5=new MD5();
			md5password=md5.md5crypt(password);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return md5password;
	}
}
