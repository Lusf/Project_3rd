package kosta.web.security;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class CountManager implements HttpSessionListener {
    public static int count;
    public static int totalCount;

    public static int getCount() {
        return count;
    }
    public static int getTotalCount(){
    	return totalCount;
    }

    public void sessionCreated(HttpSessionEvent event) {
        //������ ������� �� ȣ��
        HttpSession session = event.getSession(); //request���� ��� session�� ������ ��ü
        session.setMaxInactiveInterval(60*20);

        count++;
        totalCount++;
        session.getServletContext().log(session.getId() + " ���ǻ��� " + ", �����ڼ� : " + count);
    }

    public void sessionDestroyed(HttpSessionEvent event) {
        //������ �Ҹ�� �� ȣ��
        count--;
        if(count<0)
            count=0;

        HttpSession session = event.getSession();
        session.getServletContext().log(session.getId() + " ���ǼҸ� " + ", �����ڼ� : " + count);
    }
}