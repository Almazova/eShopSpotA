/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package comand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import model.dao.DaoImpl;
import model.entity.OrderStatus;
import model.entity.Orders;
import model.factory.Factory;
import org.apache.log4j.Logger;
import org.hibernate.HibernateException;

/**
 *
 * @author asus
 */
public class ConfirmeDeliveryOrderCommand implements ActionCommand {

    private static final Logger log = Logger.getLogger(ConfirmeDeliveryOrderCommand.class);
    
    @Override
    public String execute(HttpServletRequest request) {
        try{
        Orders order = new Orders();
        OrderStatus orderStatus = new OrderStatus();
        String orderId = request.getParameter("orderId");
        DaoImpl daoImpl = Factory.getInstance().getDAO(order);
        Orders confirmOrder = (Orders) daoImpl.readById(Long.parseLong(orderId));
        daoImpl = Factory.getInstance().getDAO(orderStatus);
        orderStatus = (OrderStatus) daoImpl.readByNameStatus("Доставлен");
        confirmOrder.setOrderStatus(orderStatus);
        daoImpl = Factory.getInstance().getDAO(order);
        daoImpl.update(confirmOrder);
        HttpSession session = request.getSession();
        session.setAttribute("location", "admin");
        
        } catch (NullPointerException ex) {
            log.error("Exception: " + ex.toString());
        } catch (IndexOutOfBoundsException ex) {
            log.error("Exception: " + ex.toString() + ":don't fill in the required fields ");
        } catch (HibernateException ex) {
            log.error("Exception: " + ex.toString());
        } catch (NumberFormatException ex) {
            log.error("Exception: " + ex.toString());
        }
        return "ServletPage?command=go_to_executes_orders";
    }

}
