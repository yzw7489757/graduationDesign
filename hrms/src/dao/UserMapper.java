package dao;

import java.util.List;

import model.User;


public interface UserMapper {
	    
	    List<User> adminLogin(User record);
	    List<User> getAllUserForAdmin(User record);
}
