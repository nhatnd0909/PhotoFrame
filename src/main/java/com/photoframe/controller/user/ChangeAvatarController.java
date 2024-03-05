package com.photoframe.controller.user;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.photoframe.service.CustomerServie;
import com.photoframe.service.FileUploadUtil;

import jakarta.servlet.http.HttpSession;

@Controller
public class ChangeAvatarController {
	@Autowired
	private CustomerServie customerServie;

	@PostMapping("/change-avatar")
	public String changeAvater(@RequestParam("avatar") MultipartFile multipartFile, HttpSession session)
			throws IOException {
		String userID = (String) session.getAttribute("userID");
//		long size = multipartFile.getSize();
		String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
		String filecode = FileUploadUtil.saveFile(fileName, multipartFile);
		String urlimage = filecode + "-" + fileName;
		customerServie.updateAvatar(userID, urlimage);
		return "redirect:/profile";
	}
}
