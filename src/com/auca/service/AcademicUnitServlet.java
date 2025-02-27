package com.auca.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.auca.controller.AcademicUnitDao;
import com.auca.domain.AcademicUnit;
import com.auca.domain.Eacademicunit;

public class AcademicUnitServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private AcademicUnitDao academicUnitDao = new AcademicUnitDao();
	
	public void doGet(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException{
		doPost(req, res);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException{
		saveAcademicUnit(req, res);
	}
	
	public void saveAcademicUnit(HttpServletRequest req, HttpServletResponse res) {
		
		try {
		    String acacode = req.getParameter("code");
		    String acaname = req.getParameter("name");
		    String acatype = req.getParameter("type");
		    String acapcode = req.getParameter("parent");
		    AcademicUnit parentAcademicUnit = academicUnitDao.getAcademicUnitByCode(acapcode);

		    // Convert string to enum
		    Eacademicunit academicType = Eacademicunit.valueOf(acatype);

		    AcademicUnit academicUnit = new AcademicUnit();
		    academicUnit.setCode(acacode);
		    academicUnit.setName(acaname);
		    academicUnit.setAcademicType(academicType);
		    academicUnit.setParentAcademic(parentAcademicUnit);

		    academicUnitDao.saveAcademicUnit(academicUnit);

		    req.getRequestDispatcher("adminDashboard.jsp").forward(req, res);
		} catch (Exception e) {
		    e.printStackTrace();
		}

		
	}
	
}
