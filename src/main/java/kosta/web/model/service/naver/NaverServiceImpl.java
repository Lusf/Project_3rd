package kosta.web.model.service.naver;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

import kosta.web.model.vo.NaverVo;

@Service
public class NaverServiceImpl {
	private static String clientID = "sBrujMHXUf0VY_C0b6O0";
	private static String clientSecret = "O3_GAquYdR";

	// display ==> 몇개 출력
	// start==>몇번쨰부터 (item)
	public List<NaverVo> searchBook(String keyword, int display, int start) {
		List<NaverVo> list = null;
		try {
			URL url;
			url = new URL(
					"https://openapi.naver.com/v1/search/" + "blog.xml?query=" + URLEncoder.encode(keyword, "UTF-8")
							+ (display != 0 ? "&display=" + display : "") + (start != 0 ? "&start=" + start : ""));

			URLConnection urlConn = url.openConnection();
			urlConn.setRequestProperty("X-Naver-Client-Id", clientID);
			urlConn.setRequestProperty("X-Naver-Client-Secret", clientSecret);

			XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
			XmlPullParser parser = factory.newPullParser();
			parser.setInput(new InputStreamReader(urlConn.getInputStream(), "UTF-8"));

			// Test에서 했던 방식은 DOM방식이기때문에?
			// 그래서 이렇게 해도 된다?!??!??!?

			int eventType = parser.getEventType();
			NaverVo b = null;
			while (eventType != XmlPullParser.END_DOCUMENT) {
				switch (eventType) {
				case XmlPullParser.END_DOCUMENT: // 문서의 끝
					break;
				case XmlPullParser.START_DOCUMENT:
					list = new ArrayList<NaverVo>();
					break;
				case XmlPullParser.END_TAG: {
					String tag = parser.getName();
					if (tag.equals("item")) {
						list.add(b);
						b = null;
					}
				}
				case XmlPullParser.START_TAG: {
					String tag = parser.getName();
					switch (tag) {
					case "item":
						b = new NaverVo();
						break;
					case "title":
						if (b != null)
							b.setTitle(parser.nextText());
						break;
					case "link":
						if (b != null)
							b.setLink(parser.nextText());
						break;
					case "description":
						if (b != null)
							b.setDescription(parser.nextText());
						break;
					case "bloggername":
						if (b != null)
							b.setBloggername(parser.nextText());
						break;
					case "bloggerlink":
						if (b != null)
							b.setBloggerlink(parser.nextText());
						break;
					case "postdate":
						if (b != null)
							b.setPostdate(parser.nextText());
					}

				}
				}
				eventType = parser.next();
			}

		} catch (MalformedURLException e) {
			
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		} catch (XmlPullParserException e) {
			
			e.printStackTrace();
		}
		return list;
	}
}
