package com.shelter.app.interceptor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {
	@Autowired
	private LogingInterceptor logingInterceptor;
	@Autowired
	private AdminPageInterceptor adminPageInterceptor;
	
	// 인터셉터들을 registry에 추가하는 메서드
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(logingInterceptor).addPathPatterns("/", "/member/**", "/pet/**", "/donation/**", "/ask/**");
		registry.addInterceptor(adminPageInterceptor).addPathPatterns("/pet/add", "/pet/update", "/donation/sum");
	}
}
