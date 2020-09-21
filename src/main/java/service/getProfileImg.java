package service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

@Service
public class getProfileImg {
     public String[] getProfile (String acess_token) throws UnsupportedEncodingException {
           
           String reqURL = "https://kapi.kakao.com/v1/api/talk/profile";
          String result = "";
          String[] userInfo = new String[3];
           try {
               URL url = new URL(reqURL);
               HttpURLConnection conn = (HttpURLConnection) url.openConnection();
               conn.setRequestMethod("GET");
               conn.setRequestProperty("Authorization", "Bearer "+acess_token);
               
               int responseCode = conn.getResponseCode();
               System.out.println("responseCode : " + responseCode);
               BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(),"UTF-8"));
               String line = "";
               while ((line = br.readLine()) != null){
                   result += line;
               }
               System.out.println("response body : " + result);

              JsonParser parser = new JsonParser(); 
              JsonElement element = parser.parse(result);
      
              String nickName = element.getAsJsonObject().get("nickName").getAsString();
              String profileImageURL = element.getAsJsonObject().get("profileImageURL").getAsString();
              String thumbnailURL = element.getAsJsonObject().get("thumbnailURL").getAsString();
              System.out.println("???"+nickName+profileImageURL+thumbnailURL);
              userInfo[0] = nickName;
              userInfo[1] = profileImageURL;
              userInfo[2] = thumbnailURL;
           } catch (IOException e) {
               e.printStackTrace();
           }

           return userInfo;
       }
}