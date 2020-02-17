package action;

import javax.servlet.http.*;

import vo.ActionForward;

public interface Action { //상속은 아니지만 상속처럼 역할하는 인터페이스 . Action 패키지 내에서는 모두 implements 를 한다.
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception;
}
