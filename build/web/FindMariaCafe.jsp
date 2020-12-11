
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Find Maria's Cafe</title>
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
        <div class="site-wrapper">
            <jsp:include page="Header.jsp"/>
            <div class="content-wrapper">
                <div class="container">
                    <div class="content-left">
                        <div class="section">
                            <p class="product-name">Find Maria's Cafe</p>
                            <div class="content">
                                <ul>
                                    <li class="item">
                                        <div class="product-tittle">Address and contact:</div>
                                        ${infor.address}
                                        <p><div class="span">Tel:</div><a href="tel:${infor.tel}">${infor.tel}</a></p>
                                        <p><div class="span">Email:</div><a href="mailto:${infor.email}">${infor.email}</a></p>
                                    </li>
                                    <li class="item">
                                        <div class="product-tittle">Opening hours:</div>
                                        ${infor.openingHours}
                                    </li>
                                </ul>
                            </div>
                        </div>
                                    <div class="map">
                                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2249.614535651459!2d12.569813815915001!3d55.67830288053341!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46525311c6572701%3A0x7020203c24f9cb3a!2zR2FtbWVsdG9ydiwgMTQ1NyBLw7hiZW5oYXZuLCDEkGFuIE3huqFjaA!5e0!3m2!1svi!2s!4v1607604471349!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                                    </div>
                    </div>
                    <jsp:include page="ShareBox.jsp"/>
                </div>
            </div>
            <jsp:include page="Footer.jsp"/>
        </div>
    </body>
</html>
