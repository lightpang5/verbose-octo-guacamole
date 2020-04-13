package Controller;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import Model.SangpumDto;
import Model.SangpumModel;


public class SangpumInsert implements CommandInter{
	static SangpumInsert impl = new SangpumInsert();
	public static SangpumInsert instance() { //instance 메소드가 늘 객체를 리턴하는 것 이것이 싱글톤 패턴 !  static 이 붙어있으므로 한번 만들어 놓으면 계속해서 쓸 수 있으므로 중복이 안되지만 
		return impl;
}
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		SangpumDto sangpum = null;
		System.out.println("show 입");
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
