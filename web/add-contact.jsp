<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="vnuk" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Adding contacts</title>
        <link href="css/jquery-ui.css" type="text/css" />
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/jquery-ui.min.js" type="text/javascript"></script>
    </head>

    <body>
        <h1>Add contacts</h1>
        <hr />

        <form action="addContact" method="post">
            Name : <input type="text" name="name" /><br />
            E-mail : <input type="text" name="email" /><br />
            Address : <input type="text" name="address" /><br />
            Date of birth : <vnuk:myDateField id="date_of_birth" /><br />
            <input type="submit" value="Save" />
        </form>

    </body>
</html>