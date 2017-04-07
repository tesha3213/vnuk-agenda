<%@ page import="java.util.*,
	vn.edu.vnuk.agenda.dao.*,
	vn.edu.vnuk.agenda.model.*" 
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>

<html>

    <body>
        <c:import url="header.jsp" />
        <jsp:useBean id="dao" class="vn.edu.vnuk.agenda.dao.ContactDao" />
            
        <table>
            
            <c:forEach var="contact" items="${dao.read()}">
                <tr>
                    <td>${contact.id}</td>
                    <td>${contact.name}</td>
                    <td>
                        <c:choose>
                            <c:when test="${not empty contact.email}">
                                <a href="mailto:${contact.email}">${contact.email}</a>
                            </c:when>
                            <c:otherwise>
                                <i>No E-Mail has been given</i>
                            </c:otherwise>
                        </c:choose>
                        <c:if test="${not empty contact.email}">
                            <a href="mailto:${contact.email}">${contact.email}</a>
                        </c:if>
                     
                      
                    </td>
                    <td>${contact.address}</td>
                    <td>
                <f:formatDate value="${contact.dateOfBirth.time}" pattern="dd/MM/yyyy" />
                        
                    </td>
                </tr>
            </c:forEach>
          
        </table>
        <c:import url="footer.jsp"/>
    </body>

</html>
