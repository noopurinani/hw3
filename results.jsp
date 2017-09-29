<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
        <link rel="stylesheet" type="text/css" href="newcss1.css">
        
    </head>
    <%
        int hoursWorked = Integer.parseInt(request.getParameter("hours"));
        int hourlyPay = Integer.parseInt(request.getParameter("hourpay"));
        int pretax = Integer.parseInt(request.getParameter("pretax"));
        double postTaxDeduct= Integer.parseInt(request.getParameter("posttax"));
        double overtime= hoursWorked - 40; 
double overtimepayrate= hourlyPay *1.5;
double overtimepay=overtimepayrate*overtime;
double regularhours=40;
double regularpay= regularhours*hourlyPay;
double grosspay= regularpay+overtimepay;
double taxablepay= grosspay-pretax;
double taxAmount=0;
if(grosspay<500){
         taxAmount=taxablepay*.18;
}
else{
         taxAmount=taxablepay*.22;
}
double postTaxPay= taxablepay-taxAmount;
double netPay= postTaxPay - postTaxDeduct;


    
    %>
    
        
    <body>
        <h1>Salary Info</h1>
        <hr>
        
        <table border=bold>
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hoursWorked%></td>
                   
                </tr>
                <tr>
                     <td>Hourly Rate:</td>
                     <td><%= hourlyPay%></td>
                     
                </tr>
                <tr>
                  <td> Hours Overtime:</td>  
                  <td><%=overtime%>
                  </td>
                </tr>
                <tr>
                       <td>Overtime Hourly Rate:</td>
                       <td><%=overtimepay%>
                           
                       </td>
                </tr>
                <tr>
                    <td>Gross Pay:</td>
                    <td><%=grosspay%>
                    
                    </td>
                </tr>
                <tr>
                         <td>Pre-tax Deduct:</td>
                         <td><%= pretax%></td>
                </tr>
                <tr>
                          <td>Pre-tax Pay:</td>
                          <td><%=grosspay%></td>
                        
                </tr>
                <tr> 
                    <td>Tax Amount:</td>
                    <td><%= taxAmount%></td>
                </tr>
                
                <tr> 
                    <td>Post-tax Pay:</td>           
                    </td><% out.println(postTaxPay);%></td>
                    
                </tr>
                <tr>
                             <td>Post-tax Deduct:</td>
                             <td><%=postTaxDeduct%></td>
                </tr>
                <tr>
                              <td>Net Pay:</td>
                              <td><% double netpay=postTaxPay-postTaxDeduct; out.println(netpay);%></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
