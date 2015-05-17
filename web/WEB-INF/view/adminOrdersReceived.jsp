<%-- 
    Document   : adminOrdersReceived
    Created on : 15.05.2015, 12:33:40
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Администратор: интернет магазин спортивной атрибутики</title>
        <link rel="stylesheet" type="text/css" href="css/admin.css">
    </head>
    <body>
        <div id="container">
            <ul id="nav-bar">
                <li><a href="ServletPage?command=go_to_admin_main_page" >Главная</a></li>
                <li><a href="ServletPage?command=go_to_admin_orders_received"class="active" >Поступившие заказы</a></li>
                <li><a href="ServletPage?command=go_to_executes_orders">Выполняющиеся заказы</a></li>
                <li><a href="#">Доавить товар</a></li>
                <li><a href="ServletPage?command=go_to_admin_delete_edit_goods">Удалить/Редактировать товар</a></li>
            </ul>

            <div class="box">
                <table class="table-orders" align="center"> 
                    <thead> 
                        <tr> 
                            <td width="10%">Дата заказа</td> 
                            <td width="15%">Клиент</td> 
                            <td width="15%">Товар</td> 
                            <td width="15%">Сумма</td>
                            <td width="15%">Способ доставки</td>
                            <td width="15%">Способ оплаты</td>
                            <td width="5%">Подтвер- дить</td>
                            <td width="5%">Откло- нить</td>
                            <td width="5%">Редакти- ровать</td>             

                        </tr> 
                    </thead> 

                    <tbody> 

                        <c:if test="${data[0] != null}">
                        <c:forEach var="orderedGoods" items="${data}">  
                            <tr>
                                <td>${orderedGoods.order.dateOrder}</td>
                                <td>
                                    <select name="client" style="width: 100%">                                        
                                        <option id="nameClient" >${orderedGoods.order.client.nameClient}</option>  
                                        <option id="surnameClient" >${orderedGoods.order.client.surnameClient}</option>
                                        <c:if test="${!empty orderedGoods.order.client.emailClient}"><option id="emailClient" >
                                                ${orderedGoods.order.client.emailClient}</option> </c:if>
                                        <option id="phoneClient" >${orderedGoods.order.client.phoneClient}</option> 
                                        <c:if test="${!empty orderedGoods.order.client.addressClient}">
                                            <option id="addressClient" >${orderedGoods.order.client.addressClient}</option> </c:if>
                                        <option id="clientId" value="${orderedGoods.order.client.clientId}" hidden="true"></option>
                                    </select>
                                </td>
                                <td>
                                    <c:set var="i" value="0"/>
                                    <c:forEach  varStatus="numb" var="goods" items="${orderedGoods.goods}"> 

                                        <select name="goods" style="width: 100%">                                        
                                            <option id="nameGoods" >${goods.nameGoods}</option>  
                                            <option id="priceGoods" >${orderedGoods.price[i]} бел.руб.</option>
                                            <option id="club" >${goods.club.nameClub}</option> 
                                            <option id="information" >${goods.information}</option>    
                                            <option id="information" >Количество: ${orderedGoods.amount[numb.index]}</option>
                                            <option id="goodsId" value="${goods.goodsId}" hidden="true"></option>
                                        </select>
                                        <c:set var="i" value="${i+1}"/>
                                    </c:forEach>
                                </td>

                                <td>${orderedGoods.summa}, бел.руб</td>
                                <td>${orderedGoods.order.deliveryMethod.nameDm}</td>
                                <td>${orderedGoods.order.paymentMethod.namePm}</td>
                                <td>
                                    <form action="ServletPage" method="post">
                                        <input type="hidden" name="orderId" value="${orderedGoods.order.ordersId}">                                       
                                        <button type="submit" name="command" value="confirmation_of_order" class="button">      
                                            <img src="${pageContext.request.contextPath}/img/icon/confirmation.png"
                                                 title="отправить заказ на выполнение"/>
                                        </button>                                           
                                    </form>
                                </td>
                                <td>
                                    <form action="ServletPage" method="post">
                                        <input type="hidden" name="orderId" value="${orderedGoods.order.ordersId}">
                                        <button type="submit" name="command" value="rejection_the_order" class="button">      
                                            <img src="${pageContext.request.contextPath}/img/icon/rejection.png"
                                                 title="удалить заказ"/>
                                        </button>                                         
                                    </form>
                                </td>
                                <td>
                                    <form action="ServletPage" method="post">
                                        <input type="hidden" name="orderId" value="${orderedGoods.order.ordersId}">
                                        <button type="submit" name="command" value="edit_order_by_admin" class="button">      
                                           <img src="${pageContext.request.contextPath}/img/icon/editing.png"
                                                         title="редактировать параметры заказа"/>
                                        </button>       
                                       
                                    </form>
                                </td>
                                </form>
                            </tr> 


                        </c:forEach>
                       </c:if>
                        <c:if test="${data[0] == null}">
                            <tr><td colspan="9"><h2><center>Зказов пока нет...</center><h2></td></tr>
                        </c:if>
                    </tbody> 
                </table>

            </div>
        </div>
    </body>
</html>