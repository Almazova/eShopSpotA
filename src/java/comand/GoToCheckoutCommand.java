/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package comand;

import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author asus
 */
public class GoToCheckoutCommand implements ActionCommand{

    @Override
    public String execute(HttpServletRequest request) {
         return "/WEB-INF/view/checkout.jsp";
    }
    
}
