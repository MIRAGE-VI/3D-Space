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
	 //�����������     
    
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int width=50;
        int height=20;
        //��ֹ���������ͼƬ
        response.setDateHeader("Expires", -1);
        response.setHeader("cache-Control", "no-cache");
        response.setHeader("Pragma","no-cache");
        //֪ͨ�ͻ�����ͼƬ�ķ�ʽ�򿪷��͹�ȥ������
        response.setHeader("Content-Type", "image/jpeg");
        //���ڴ��д���һ��ͼƬ
        BufferedImage image = new BufferedImage(width,height,BufferedImage.TYPE_INT_BGR);
        //��ͼƬ��д����
        Graphics g = image.getGraphics();
        //���ñ���ɫ
        g.setColor(Color.blue);
        g.fillRect(0, 0, width, height);
        //����д���������ɫ������
        g.setColor(Color.white);
        g.setFont(new Font(null,Font.BOLD,20));
        //��ͼƬ��д����
        String str =getNum();
        //����������ɵ���ֵ���浽session
        request.getSession().setAttribute("checkCode", str);
        g.drawString(str, 2, 18);  
        //��д�õ���������������
        ImageIO.write(image, "jpg", response.getOutputStream());
	}
	public String getNum(){
        String str = null;
        Random r = new Random();
        //����4λ
        String num = r.nextInt(9999)+"";
        //�������4λ����ǰ�油��
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
