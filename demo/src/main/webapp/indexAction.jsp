<%@ page import ="java.sql.*"%>
        <%
        String name = request.getParameter("name");
        String dept = request.getParameter("dept");
        String rollNo = request.getParameter("rollNo");
        String toadd = request.getParameter("toadd");
        String reason = request.getParameter("reason");
        String fdate = request.getParameter("fdate");
        String tdate = request.getParameter("tdate");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3304/test", "root", "Sharmi#08");
            PreparedStatement ps = conn.prepareStatement("insert into details(name,dept,rollNo,toadd,reason,fdate,tdate)values('"+ name +"','"+ dept +"','"+ rollNo +"','"+ toadd +"','"+ reason +"','"+ fdate +"','"+ tdate +"');");
            int x = ps.executeUpdate();
            if (x > 0) {
                out.println("Registration done successfully...");
            } else {
                out.println("Registration failed...");
            }
        } catch (Exception e) {
            out.println(e);
        }
%>