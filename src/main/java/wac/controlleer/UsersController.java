package wac.controlleer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import wac.domain.PageBean;
import wac.domain.User;
import wac.service.UserService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/user")
public class UsersController {
    @Autowired
    private UserService userService;
    @RequestMapping("/findbypage")
    public String findbypage(Model model,User user,String currentPage) throws ServletException, IOException {
        if (currentPage==null){
            currentPage="1";
        }
        PageBean pb = userService.findbypage(user,Integer.parseInt(currentPage));
        model.addAttribute("pb",pb );
        return "list";
    }

    @RequestMapping("/deleteuser")
    public String deleteuser(int id,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        userService.deleteuser(id);
       response.sendRedirect("/user/findbypage");
        return "list";
    }

    @RequestMapping("/findusertoupdate")
    public String findusertoupdate(int id,HttpServletRequest request,HttpServletResponse response,Model model) throws ServletException, IOException {
        User user = userService.findbyid(id);
        model.addAttribute("user",user );
        return "update";
    }

    @RequestMapping("/updateuser")
    public String updateuser(User user,HttpServletRequest request,HttpServletResponse response,Model model) throws ServletException, IOException {
        userService.updateuser(user);
//        response.sendRedirect("/user/findbypage");
        //请求转发返回修改的参数列表
//        return "forward:/user/findbypage";
        //重定向返回完整的参数列表
        return "redirect:/user/findbypage" ;
    }

    @RequestMapping("/insertuser")
    public String insertuser(User user,HttpServletRequest request,HttpServletResponse response,Model model) throws ServletException, IOException {
        userService.insertuser(user);
//        response.sendRedirect("/user/findbypage");
        return "redirect:/user/findbypage" ;
    }

    @RequestMapping("/deleteselect")
    public void deleteselect(HttpServletRequest request,HttpServletResponse response){

    }
}
