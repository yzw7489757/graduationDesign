package dao;

import java.util.List;

import model.Dept;
import model.Notice;


public interface NoticeMapper {
	    
	    List<Notice> getAll(Notice record);
}
