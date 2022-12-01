<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="courses.aspx.cs" Inherits="DivyanshuJethi.Admin.courses" %>

<title>Admin</title>
<!--#include file="adminInclude/header.aspx"-->
<div class="col-sm-9 mt-5">
    <!--Table-->
    <p class=" bg-dark text-white p-2">List of Courses</p>
    <table class="table">
       <thead>
        <tr>
         <th scope="col">Course ID</th>
         <th scope="col">Name</th>
         <th scope="col">Eligibility</th>
         <th scope="col">Price</th>
         <th scope="col">Years</th>
        </tr>
       </thead>
       <tbody>
        <%while (READERS.Read())
        {
            %> 
                <tr>
            	<td><%=READERS[0].ToString() %></td>
            	<td><%=READERS[1].ToString() %></td>
            	<td><%=READERS[2].ToString() %></td>
            	<td><%=READERS[3].ToString() %></td>
                <td><%=READERS[4].ToString() %></td>

            	</tr>
        <%
        }
        con.Close();
                
            %>
       
       </tbody>
        </table>

  </div>
 </div>  <!-- div Row close from header -->
</div>
<!--#include file="adminInclude/footer.html"-->
