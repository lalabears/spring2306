package com.java.controller;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.java.dto.KakaoProfile;
import com.java.dto.OAuthToken;

@Controller
public class KakaoController {

	@RequestMapping("/kakao/oauth")
	@ResponseBody
	public String oauth(String code) {
		System.out.println("카카오 code : "+code);
		String grant_type = "authorization_code";
		String client_id = "7980f70fd5da76a168557ced9cb2c60e";
		String redirect_uri = "http://localhost:8000/kakao/oauth";
		
		//---- token 요청 --------------
		// 공공데이터에서 사용 : HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		//token키 요청 - post방식으로 전송
		RestTemplate rt =new RestTemplate();
		
		//HttpHeaders 오브젝트 생성
		HttpHeaders headers = new HttpHeaders(); 
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		//HttpBody MultiValueMap 오브젝트 생성
		MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
		params.add("grant_type", grant_type);
		params.add("client_id", client_id);
		params.add("redirect_uri", redirect_uri);
		params.add("code", code);
		
		//HttpHeaders와 HttpBody 1개 오브젝트 담기 
		HttpEntity<MultiValueMap<String, String>> kakaoTokenRequest = 
				new HttpEntity<>(params,headers);
		
		//Http요청 : post방식, 응답은 response으로 받음
		String oauthUrl = "https://kauth.kakao.com/oauth/token";
		ResponseEntity<String> response = rt.exchange(
		    oauthUrl,HttpMethod.POST,kakaoTokenRequest,String.class
				
		);
		
		//---- token 응답--------------
		// json데이터를 java오브젝트로 변환 : Gson, Json Simple, ObjectMapper
		ObjectMapper objectMapper = new ObjectMapper();
		OAuthToken oauthToken = null;
		try {
			oauthToken = objectMapper.readValue(response.getBody(), OAuthToken.class);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println("카카오 토큰 요청 응답 : "+response);
		System.out.println("카카오 엑세스 토큰body : "+oauthToken);
		System.out.println("카카오 엑세스 토큰 : "+oauthToken.getAccess_token());
		
		
		
		
		//---- kakaoprofile 요청 : header만 존재 --------------
		RestTemplate rt_p =new RestTemplate();
		
		//HttpHeaders 오브젝트 생성
		HttpHeaders headers_p = new HttpHeaders(); 
		headers_p.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		headers_p.add("Authorization", "Bearer "+oauthToken.getAccess_token());
		
		//HttpHeaders와 HttpBody 1개 오브젝트 담기 
		HttpEntity<MultiValueMap<String, String>> kakaoTokenRequest_p = 
				new HttpEntity<>(headers_p);
		
		//Http요청 : post방식, 응답은 response으로 받음
		String oauthUrl_p = "https://kapi.kakao.com/v2/user/me";
		ResponseEntity<String> response_p = rt.exchange(
		    oauthUrl_p,HttpMethod.POST,kakaoTokenRequest_p,String.class
		);
		
		ObjectMapper objectMapper2 = new ObjectMapper();
		KakaoProfile kakaoProfile = new KakaoProfile();
		try {
			kakaoProfile = objectMapper2.readValue(response_p.getBody(), KakaoProfile.class);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// User 오브젝트 : username, password, email
		System.out.println("getBody : "+response_p.getBody());
		System.out.println("카카오 아이디(번호) : "+kakaoProfile.getId());
		System.out.println("카카오 이메일 : "+kakaoProfile.getKakao_account().getEmail());
		
		System.out.println("블로그서버 유저네임 : "+kakaoProfile.getKakao_account().getEmail()+"_"+kakaoProfile.getId());
		System.out.println("블로그서버 이메일 : "+kakaoProfile.getKakao_account().getEmail());
		// UUID란 -> 중복되지 않는 어떤 특정 값을 만들어내는 알고리즘
		System.out.println("블로그서버 패스워드 : "+"1111");
		
		
		return "카카오 Property : "+response_p;
	}
	
	
	
}//class