<%@ page import='java.util.Date'%>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Homework 3</title>
        <link rel="stylesheet" type="text/css" href="newcss.css">
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        <hr>
        <form name="Salary Calculator" action="results.jsp" method="post">
            <table>
                <tbody>
                <center>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name='hours' value='' size='50' required></td>
                    </tr>
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name='hourpay' value='' size='50'required></td>
                    </tr>
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name='pretax' value='' size='50'required></td>
                    </tr>
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name='posttax' value='' size='50'required></td>
                    </tr>
                </tbody>
            </table>
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            </center
        </form>
        </body>
</html>
