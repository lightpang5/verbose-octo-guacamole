package action;

import javax.servlet.http.*;

import vo.ActionForward;

public interface Action { //����� �ƴ����� ���ó�� �����ϴ� �������̽� . Action ��Ű�� �������� ��� implements �� �Ѵ�.
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception;
}
