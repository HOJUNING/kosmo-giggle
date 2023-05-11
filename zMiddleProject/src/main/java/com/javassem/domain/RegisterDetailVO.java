package com.javassem.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class RegisterDetailVO {
	private Integer al_num;
	private String  img_name;
	private String 	img_realname;
	private long img_size;
	
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
	
	MultipartFile file;
	
	@Override
	public String toString() {
		return "RegisterDetailVO [al_num=" + al_num + ", img_name=" + img_name + ", img_realname=" + img_realname
				+ ", img_size=" + img_size + ", file=" + file + "]";
	}

	public void setFile(MultipartFile file) {
		this.file = file;
		
		if(!file.isEmpty()) {
			this.img_realname = file.getOriginalFilename();
			this.img_size = file.getSize();
			
			UUID uuid= UUID.randomUUID();
			this.img_name = uuid.toString()+ "_" +img_realname;
			
			File f = new File("D:\\kosmo-giggle\\zMiddleProject\\src\\main\\webapp\\resources\\upload\\"+ img_name);
			
			try {
				file.transferTo(f);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
				
			}
			
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
	
}
