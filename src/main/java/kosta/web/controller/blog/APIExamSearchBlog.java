package kosta.web.controller.blog;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class APIExamSearchBlog {

	@RequestMapping("/test")
    public static void main(String[] args) {
        String clientId = "S9TwxVZkkRoxEuvaIgHD";//���ø����̼� Ŭ���̾�Ʈ ���̵�";
        String clientSecret = "ZSgDuulggz";//���ø����̼� Ŭ���̾�Ʈ ��ũ����";
        try {
            String text = URLEncoder.encode("�׸����丮", "UTF-8");
            String apiURL = "https://openapi.naver.com/v1/search/blog?query="+ text; // json ���
            //String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+ text; // xml ���
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // ���� ȣ��
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // ���� �߻�
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            br.close();
            System.out.println(response.toString());
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}