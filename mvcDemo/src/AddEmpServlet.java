import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.dao.EmployeeDAO;
import com.pds.dto.Employee;

import org.apache.commons.beanutils.BeanUtils;


@WebServlet("/add")
public class AddEmpServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Employee e=new Employee();
		try {
			BeanUtils.populate(e,request.getParameterMap());
			
			EmployeeDAO ed=new EmployeeDAO();
			if(ed.getById(e.getEmpId())!=null){
				request.setAttribute("errMsg", "This id exists! Please try for another");
				request.setAttribute("e", e);
				RequestDispatcher rd=request.getRequestDispatcher("emp.jsp");
				rd.forward(request, response);
			}else if(ed.add(e)!=0)
			{
				response.sendRedirect("addSuccess.jsp");
				
			}else{
				request.setAttribute("errMsg", "Error in Insertion");
				request.setAttribute("e", e);
				RequestDispatcher rd=request.getRequestDispatcher("emp.jsp");
				rd.forward(request, response);
			}
		} catch (IllegalAccessException e1) {		
			e1.printStackTrace();
		} catch (InvocationTargetException e1) {			
			e1.printStackTrace();
		}
		
		
	}

}
