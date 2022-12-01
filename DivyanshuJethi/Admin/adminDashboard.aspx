<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminDashboard.aspx.cs" Inherits="DivyanshuJethi.Admin.adminDashboard" %>

<title>Admin</title>
<!--#include file="adminInclude/header.aspx"-->
<div class="col-sm-9 mt-5">
    <div class="row mx-5 text-center">
      <div class="col-sm-4 mt-5">
        <div class="card text-white bg-danger mb-3" style="max-width: 18rem;">
          <div class="card-header">Courses</div>
          <div class="card-body">
            <h4 class="card-title">
             <%=Countrow %>
            </h4>
            <a class="btn text-white" href="courses.jsp">View</a>
          </div>
        </div>
      </div>
      <div class="col-sm-4 mt-5">
        <div class="card text-white bg-success mb-3" style="max-width: 18rem;">
          <div class="card-header">Students</div>
          <div class="card-body">
            <h4 class="card-title">
              <%=Countstu %>
            </h4>
            <a class="btn text-white" href="students.jsp">View</a>
          </div>
        </div>
      </div>
      <div class="col-sm-4 mt-5">
        <div class="card text-white bg-info mb-3" style="max-width: 18rem;">
          <div class="card-header">Sold</div>
          <div class="card-body">
            <h4 class="card-title">
             <%=Countord %>
            </h4>
            <a class="btn text-white"  href="adminPaymentStatus.jsp">View</a>
          </div>
        </div>
      </div>
    </div>
    <div class="mx-5 mt-5 text-center">
      <!--Table-->
      <p class=" bg-dark text-white p-2">Course Ordered</p>
      <table class="table">
      <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Student Email</th>
      <th scope="col">Course</th>
      <th scope="col">Payment status</th>
      <th scope="col">Order Date</th>
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
  </div>
  </div>
  </div>
  
  </div>  <!-- div Row close from header -->
 </div>
<!--#include file="adminInclude/footer.html"-->