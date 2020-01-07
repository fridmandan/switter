<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<%@include file="header.jsp" %>
<body>

<jsp:include page="navbar.jsp">
    <jsp:param name="currentPage" value="swits"/>
</jsp:include>
<div class="container">
    <%--@elvariable id="swit" type="lv.helloit.switter.swit.Swit"--%>
    <c:if test="${swits == null || swits.isEmpty()}">
        Sorry, nothing !!!
    </c:if>

    <div class="container-fluid">
        <div class="row">
            <c:forEach items="${swits}" var="swit">
                <div class="card text-center" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">${swit.author}</h5>
                        <p class="card-text">${swit.content}</p>
                        <a href="/swit/${swit.id}" class="btn btn-primary">Edit</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>


</body>
</html>