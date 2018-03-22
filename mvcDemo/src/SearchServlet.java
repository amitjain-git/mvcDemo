import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.dao.EmployeeDAO;
import com.pds.dto.Employee;

@WebServlet("/search")
public class SearchServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	doPost(request, response);
					}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try{
		int id=Integer.parseInt(request.getParameter("empId"));

		EmployeeDAO ed=new EmployeeDAO();
		Employee e=ed.getById(id);
		request.setAttribute("e",e)	;
		RequestDispatcher rd=request.getRequestDispatcher("showEmp.jsp");
		rd.forward(request,response);
		}catch(NumberFormatException ex){
			request.setAttribute("errMsg", "Invalid Data Entered");
			RequestDispatcher rd=request.getRequestDispatcher("search.jsp");
			rd.forward(request,response);

		}
		
	
	}

}
