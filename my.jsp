  <%@page import ="java.sql.*"%>
  <%
  String Name=request.getParameter("name1");

  String Email=request.getParameter("email2");
  
  String Text=request.getParameter("text3");


  try{
    class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata",root","chandan!@#$");

        PreparedStatement ps=con.prepareStatement("insert into rest (Name,Email,Text) values(?,?,?)");
         
          ps.setString(1,Name);
          ps.setString(2,Email);
          ps.setString(3,Text);

          ps.executeUpdate();
  }
  catch(Exception e1)
  {
    out.println(e1);
  }
  %>