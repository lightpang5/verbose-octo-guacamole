package Controller;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import Model.SangpumDto;
import Model.SangpumModel;


public class SangpumInsert implements CommandInter{
	static SangpumInsert impl = new SangpumInsert();
	public static SangpumInsert instance() { //instance �޼ҵ尡 �� ��ü�� �����ϴ� �� �̰��� �̱��� ���� !  static �� �پ������Ƿ� �ѹ� ����� ������ ����ؼ� �� �� �����Ƿ� �ߺ��� �ȵ����� 
		return impl;
}
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		SangpumDto sangpum = null;
		System.out.println("show ��");
		System.out.println(request.getParameter("GB_ID"));
		sangpum = new SangpumDto();
		sangpum.setGB_ID(request.getParameter("GB_ID"));
		sangpum.setGB_SUBJECT(request.getParameter("GB_SUBJECT"));
		sangpum.setGB_CONTENTS(request.getParameter("GB_CONTENTS"));
		sangpum.setGB_FILE(request.getParameter("GB_FILE"));
		
		SangpumModel model = SangpumModel.instance();
		model.insertSangpum(sangpum);
		
		return "index.html";
		
	}
}
