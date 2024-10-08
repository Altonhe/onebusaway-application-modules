<%--

    Copyright (C) 2011 Brian Ferris <bdferris@onebusaway.org>

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

            http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns:jsp="http://java.sun.com/JSP/Page"
	  xmlns:c="http://java.sun.com/jsp/jstl/core">
<jsp:directive.page contentType="text/html" />
<head>
	<title>Stops For Agency</title>
</head>
<body>
<c:forEach var="stop" items="${stops}">
	<value>${stop.name}</value>
</c:forEach>
</body>
</html>
