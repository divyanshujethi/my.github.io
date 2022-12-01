<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="students.aspx.cs" Inherits="DivyanshuJethi.Admin.students" %>

<title>Admin</title>
<!--#include file="adminInclude/header.aspx"-->

<div class="col-sm-9 mt-5">
    <!--Table-->
    <p class=" bg-dark text-white p-2">List of Students</p>
    <table class="table">
       <thead>
        <tr>
         <th scope="col">Student ID</th>
         <th scope="col">Name</th>
         <th scope="col">Email</th>
         <th scope="col">Action</th>
        </tr>
       </thead>
       <tbody>
        <%while (READERS.Read())
        {
            %> 
                <tr>
            	<td><%=READERS[0].ToString() %></td>
            	<td><%=READERS[3].ToString() %></td>
            	<td><%=READERS[1].ToString() %></td>

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