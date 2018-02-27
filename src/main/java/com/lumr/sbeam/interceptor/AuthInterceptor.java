package com.lumr.sbeam.interceptor;

import com.lumr.sbeam.utils.JsonUtil;
import com.lumr.sbeam.vo.ResponseCode;
import com.lumr.sbeam.vo.User;
import com.lumr.sbeam.vo.resp.BaseResp;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 权限拦截器
 * Created by work on 2018/2/24.
 *
 * @author lumr
 */
public class AuthInterceptor extends HandlerInterceptorAdapter{

    private final BaseResp NO_LOGIN;

    public AuthInterceptor() {
        NO_LOGIN = new BaseResp();
        NO_LOGIN.setCode(ResponseCode.NOTLOGIN);
        NO_LOGIN.setMessage("尚未登录");
    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            request.setAttribute("message","尚未登录");
            request.getRequestDispatcher("/user/login").forward(request,response);
            return false;
        }
        return true;
    }


    private void responseErr(HttpServletResponse response) throws IOException {
        response.setStatus(HttpServletResponse.SC_OK);
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter writer = response.getWriter();
        writer.write(JsonUtil.toJson(NO_LOGIN));
        writer.close();
    }

}
