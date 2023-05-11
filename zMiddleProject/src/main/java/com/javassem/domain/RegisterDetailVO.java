package com.javassem.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class RegisterDetailVO {
	
	//주류 이미지 멤버변수 선언
	
	private Integer al_num; 	  //주류번호
	private String  img_name;	  //이미지 이름
	private String 	img_realname; //이미지 진짜 이름
	private long    img_size;	  //이미지 사이즈
	
	// Getter and Setter 선언
	
	public String getImg_name() {
		return img_name;
	}

	public void setImg_name(String img_name) {
		this.img_name = img_name;
	}

	public String getImg_realname() {
		return img_realname;
	}

	public void setImg_realname(String img_realname) {
		this.img_realname = img_realname;
	}

	public long getImg_size() {
		return img_size;
	}

	public void setImg_size(long img_size) {
		this.img_size = img_size;
	}
	

	public MultipartFile getFile() {
		return file;
	}
	
	public Integer getAl_num() {
		return al_num;
	}
	public void setAl_num(Integer al_num) {
		this.al_num = al_num;
	}
	
	// 파일 업로드  선언
	MultipartFile file;
	
	public void setFile(MultipartFile file) {
		this.file = file;
		
		//업로드 이미지
		
		if(!file.isEmpty()) {
			this.img_realname = file.getOriginalFilename();
			this.img_size = file.getSize();
	   
	   // 실제로 저장된 이미지파일을 만들기	
			UUID uuid= UUID.randomUUID();
			this.img_name = uuid.toString()+ "_" +img_realname;
			
			File f = new File("D:\\Spring\\web\\zMiddleManagetest\\src\\main\\webapp\\resources\\upload\\"+ img_name);
			
			try {
				file.transferTo(f);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
				
			}
			
		}
	
	// toString 선언
	@Override
	public String toString() {
		return "RegisterDetailVO [al_num=" + al_num + ", img_name=" + img_name + ", img_realname=" + img_realname
				+ ", img_size=" + img_size + ", file=" + file + "]";
	}

	
}
