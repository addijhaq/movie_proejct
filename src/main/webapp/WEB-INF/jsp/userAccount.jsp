<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="/WEB-INF/jsp/common/fullPageHeader.jsp" />

<section>
<h1>Account Info</h1>
    <div class="account-details">
        <p>First Name: ${user.firstName}</p>
        <p>Last Name: ${user.lastName}</p>
        <p>Email: ${user.emailAddress}</p>
    </div>

</section>
<c:import url="/WEB-INF/jsp/common/fullPageFooter.jsp" />
