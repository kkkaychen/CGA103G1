package com.emp.model;

import java.util.List;

import com.mem.model.MemVO;

public interface I_EmpDAO {

	public void insert(EmpVO empVO); // 新增

	public void update(EmpVO empVO); // 修改

	public EmpVO getOne(Integer emp_no); // 查詢一筆
	
	public List<EmpVO> getAll(); // 查詢全部
	
	public void updateStatus(EmpVO emp_no);

	public EmpVO login(String emp_acc, String emp_pwd); // 登入驗證
}
