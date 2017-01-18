package util;


import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CreateCode extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CreateCode() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	 //随机生成数字     
    
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int width=50;
        int height=20;
        //禁止浏览器缓存图片
        response.setDateHeader("Expires", -1);
        response.setHeader("cache-Control", "no-cache");
        response.setHeader("Pragma","no-cache");
        //通知客户端以图片的方式打开发送过去的数据
        response.setHeader("Content-Type", "image/jpeg");
        //在内存中创建一副图片
        BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_BGR);
        //向图片中写数据
        Graphics g = image.getGraphics();
        //设置背景色
        g.setColor(Color.blue);
        g.fillRect(0, 0, width, height);
        //设置写入的数据颜色和字体
        g.setColor(Color.white);
        g.setFont(new Font(null,Font.BOLD,20));
        //向图片上写数据
        String str =getNum();
        //把随机数生成的数值保存到session
        request.getSession().setAttribute("checkCode", str);
        g.drawString(str, 2, 18);  
        //把写好的数据输出给浏览器
        ImageIO.write(image, "jpg", response.getOutputStream());
	}
	public String getNum(){
        String str = null;
        Random r = new Random();
        //生成4位
        String num = r.nextInt(9999)+"";
        //如果不够4位，就前面补零
        StringBuffer sb = new StringBuffer();
        for(int i=0;i<4-num.length();i++){
            sb.append("0");
        }
        str =sb.toString()+ num;
        return str;
    } 
	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
		response.setContentType("text/html");
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
