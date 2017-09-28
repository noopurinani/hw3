<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
    </head>
    <%
        String hoursWorked = request.getParameter("hours");
        
        %>
        
    <body>
        <h1>Salary Info</h1>
        <table border="">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                   
                </tr>
                <tr>
                     <td>Hourly Rate:</td>
                     
                </tr>
                <tr>
                  <td> Hours Overtime:</td>  
                  <td><%=hoursWorked-40%>
                </tr>
                <tr>
                       <td>Overtime Hourly Rate:</td>
                </tr>
                <tr>
                    <td>Gross Pay:</td>
                </tr>
                <tr>
                         <td>Pre-tax Deduct:</td>
                </tr>
                <tr>
                          <td>Pre-tax Pay:</td>
                </tr>
                <tr> 
                    <td>Tax Amount:</td>
                </tr>
                <tr> 
                    <td>Post-tax Pay:</td>
                </tr>
                <tr>
                             <td>Post-tax Deduct:</td>
                </tr>
                <tr>
                              <td>Net Pay:</td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
