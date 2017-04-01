<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:import url="/WEB-INF/jsp/common/fullPageHeader.jsp" />
<c:url value="/userRegistration" var="formAction" />

<section>
    <form method='post'action="">
        <input type="text" name="userName" id="userName" class="form-userName" />




    </form>

</section>
<c:import url="/WEB-INF/jsp/common/fullPageFooter.jsp" />