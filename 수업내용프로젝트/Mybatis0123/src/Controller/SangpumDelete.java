package Controller;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.SangpumDto;
import Model.SangpumModel;

public class SangpumDelete implements CommandInter{
	static SangpumDelete impl = new SangpumDelete();
	public static SangpumDelete instance() { //instance �޼ҵ尡 �� ��ü�� �����ϴ� �� �̰��� �̱��� ���� !  static �� �پ������Ƿ� �ѹ� ����� ������ ����ؼ� �� �� �����Ƿ� �ߺ��� �ȵ����� 
		return impl;
}
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		SangpumDto sangpum = null;
		System.out.println("show ��");
		System.out.println(request.getParameter("GB_ID"));
		sangpum = new SangpumDto();
		sangpum.setGB_ID(request.getParameter("GB_ID"));	
		SangpumModel model = SangpumModel.instance();
		model.deleteSangpum(sangpum);
		
		return "index.html";
	}
}
