package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.TeamDto;
import model.TeamList_Action;

public class TeamListView_Service implements Cominterface {
	static TeamListView_Service impl = new TeamListView_Service();

	public static TeamListView_Service instance() {
		return impl;

	}

	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("TeamListView_Service.java Á¢±Ù");
		request.setCharacterEncoding("UTF-8");

		TeamList_Action teamlistmodel = TeamList_Action.instance();
		
		ArrayList<TeamDto> TeamList = (ArrayList<TeamDto>) teamlistmodel.getTeamList();
		
		request.setAttribute("TeamList", TeamList);
		return "team_list.jsp";

	}
}
