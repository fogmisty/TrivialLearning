package scs.ajax.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Catalog
 */
@WebServlet("/Servleta")
public class Servleta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servleta() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=utf-8");
		int judge = 0; //判断情况
		
        PrintWriter out = response.getWriter();
        
        String sid = request.getParameter("sid");
        if(sid != "") {
        	out.write("学号："+ sid + "   ");
        	judge += 2;
        }
        
        String name = request.getParameter("name");
        if(name != "") {
        	out.write("姓名："+ name + "   ");
        	judge -= 1;
        }
        String sex = new String(request.getParameter("sex").getBytes("ISO8859-1"), "UTF-8");
        if(sex.length() == 1) {
        	out.write("性别："+ sex + "   ");
        	judge += 10;
        }
        
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        out.write("<table border=1 cellspacing=\"0\" cellpadding=\"30\" bordercolor=\"D0D0D0\">");
        out.write("<tr><td>学号</td>");
        out.write("<td>姓名</td>");
        out.write("<td>性别</td>");
        out.write("<td>班级</td>");
        out.write("<td>年级</td></tr>");
        try {        
            Class.forName("oracle.jdbc.driver.OracleDriver");//加载驱动
            conn = DriverManager.getConnection("jdbc:oracle:thin:@11.4.54.17:1522:hrdevdb", "hr_spm_test", "spm123test");//创建连接
            stmt = conn.createStatement();//创建statement
            if(judge == 0) {//none
            	rs = stmt.executeQuery("select * from SPMTEST_TEST_GJN_STUDENT"); //得到结果集
            }
            else if(judge == 2)//sid
            {
            	rs = stmt.executeQuery("select * from SPMTEST_TEST_GJN_STUDENT WHERE sid = '" + sid + "'"); //得到结果集
            }
            else if(judge == -1)//name
            {
            	rs = stmt.executeQuery("select * from SPMTEST_TEST_GJN_STUDENT WHERE \"name\" = '" + name + "'"); //得到结果集
            }
            else if(judge == 1)//name/sid
            {
            	rs = stmt.executeQuery("select * from SPMTEST_TEST_GJN_STUDENT WHERE \"name\" = '" + name + "' and sid = '" + sid + "'"); //得到结果集
            }
            else if(judge == 10)//sex
            {
            	rs = stmt.executeQuery("select * from SPMTEST_TEST_GJN_STUDENT WHERE \"sex\" = '" + sex + "'"); //得到结果集
            }
            else if(judge == 12)//sex/sid
            {
            	rs = stmt.executeQuery("select * from SPMTEST_TEST_GJN_STUDENT WHERE \"sex\" = '" + sex + "' and sid = '" + sid + "'"); //得到结果集
            }
            else if(judge == 9)//sex/name
            {
            	rs = stmt.executeQuery("select * from SPMTEST_TEST_GJN_STUDENT WHERE \"name\" = '" + name + "' and \"sex\" = '" + sex + "'"); //得到结果集
            }
            else if(judge == 11)
            {
            	rs = stmt.executeQuery("select * from SPMTEST_TEST_GJN_STUDENT WHERE \"sex\" = '" + sex + "' and sid = '" + sid + "' and \"name\" = '" + name + "'"); //得到结果集
            }
            while(rs.next()){//遍历结果集
                out.write("<tr>");
                out.write("<td>" + rs.getString("SID") + "</td>");
                out.write("<td>" + rs.getString("name") + "</td>");
                out.write("<td>" + rs.getString("sex") + "</td>");
                out.write("<td>" + rs.getString("class") + "</td>");
                out.write("<td>" + rs.getString("grade") + "</td>");
                out.write("</tr>");
            }
            out.write("</table>");
        } 
        catch (ClassNotFoundException e) {
            e.printStackTrace();
        } 
        catch (SQLException e) {
            e.printStackTrace();
        } 
        finally {
            try {
                if(rs != null) {
                    rs.close();
                    rs = null;
                }
                if(stmt != null) {
                    stmt.close();
                    stmt= null;
                }
                if(conn != null) {
                    conn.close();
                    conn = null;
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
	}
}
