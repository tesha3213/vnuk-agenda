<%-- 
    Document   : myDateField
    Created on : Apr 7, 2017, 10:35:31 AM
    Author     : Admin
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="id" required="true" %>

<input id="${id}" name="${id}" />

<script>
    $("#${id}").datepicker({dateFormat: 'dd/mm/yy'});
</script>

