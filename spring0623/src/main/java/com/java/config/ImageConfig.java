package com.java.config;

import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;

public class ImageConfig {

	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/images/**")
		.addResourceLocations("file:///c:/upload/");
		
	}
}
