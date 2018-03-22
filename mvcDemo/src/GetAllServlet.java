import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.dao.EmployeeDAO;
import com.pds.dto.Employee;

@WebServlet("/getAll")
public class GetAllServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			EmployeeDAO ed=new EmployeeDAO();
			List<Employee>l=ed.getAll();
			request.setAttribute("elist",l);
			RequestDispatcher rd=request.getRequestDispatcher("showAll.jsp");
			rd.forward(request,response);

	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
doGet(request,response);
	}

}
