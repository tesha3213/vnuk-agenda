<%@ page import="java.util.*,
	vn.edu.vnuk.agenda.dao.*,
	vn.edu.vnuk.agenda.model.*" 
%>


<html>

    <body>

        <table>

            <% 	
                ContactDao dao = new ContactDao();
                List<Contact> contacts = dao.read();
                for (Contact contact : contacts ) {
            %>
                    <tr>
                        <td><%= contact.getId() %></td>
                        <td><%= contact.getName() %></td>
                        <td><%= contact.getEmail() %></td>
                        <td><%= contact.getAddress() %></td>
                        <td><%= contact.getDateOfBirth().getTime() %></td>
                    </tr>
            <% 	
                }
            %>

        </table>

    </body>

</html>
