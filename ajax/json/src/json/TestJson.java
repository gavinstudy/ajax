package json;

import java.util.HashMap;
import java.util.Map;

import com.iotek.po.User;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class TestJson {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
         //testJsonObject();
		 //testJsonArray();
		Map<String,User> map=new HashMap();
		User u1=new User("liayin", "fendou", "�Ϻ�");
		map.put("user", u1);
		JSONArray jarr=new JSONArray();
		jarr.add(map);
		System.out.println(jarr.toString());
	}

	private static void testJsonArray() {
		JSONArray jarr=new JSONArray();
		jarr.add(new User("liayin1", "fendou1", "�Ϻ�"));
		jarr.add(new User("liayin2", "fendou2", "�Ϻ�"));
		jarr.add(new User("liayin3", "fendou3", "�Ϻ�"));
		jarr.add(new User("liayin4", "fendou4", "�Ϻ�"));
		System.out.println(jarr.toString());
	}

	private static void testJsonObject() {
		JSONObject jsonobj=new JSONObject();
         jsonobj.put("name", "�ݶ�");
         jsonobj.put("age", 22);
         jsonobj.put("address", "�Ϻ�");
         System.out.println(jsonobj.toString()); //{"name":"�ݶ�","age":22,"address":"�Ϻ�"}  json��ʽ;
	}

}
