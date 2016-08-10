package com.niit.util;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Paths;

import org.springframework.web.multipart.MultipartFile;

public class FileUtil {
	 public static void upload(String path,MultipartFile file,String fileName){
 if (!file.isEmpty()){
	 InputStream inputStream = null;
	 OutputStream outputStream = null;
	 if(file.getSize()>0) {
		 try {
			 inputStream = file.getInputStream();
			 outputStream = new FileOutputStream(path+fileName);
			 int readBytes = 0;
			 byte[] buffer = new byte[1024];
			 while ((readBytes = inputStream.read(buffer, 0, 1024))!= -1){
				 outputStream.write(buffer, 0, readBytes);
			 }
				 
			 }catch (IOException e){
				 e.printStackTrace();
			 }
		 finally
		 {
			 try {
				 outputStream.close();
				 inputStream.close();
			 } catch (IOException e){
				 
				 e.printStackTrace();
			 }
		 }
		 }
	 }
	 
	
	 
 }

	public static void deleteimage(String path, String filename) {
		// TODO Auto-generated method stub
		if(Files.exists(Paths.get(path+ filename))){
			try{
				Files.delete(Paths.get(path+ filename));
				
			} catch (Exception e){
				e.printStackTrace();
				throw new RuntimeException("File unable to delete", e);
			}
		}
	}
}
