package com.photoframe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.photoframe.model.Icon;
import com.photoframe.repository.IconRepository;

@Service
public class IconService {
	@Autowired
	private IconRepository iconRepository;

	public Icon createNewIcon(Icon icon) {
		return iconRepository.save(icon);
	}

	public List<Icon> getAllIcon() {
		return iconRepository.findAll();
	}

	public Icon getIconbyID(String id) {
		List<Icon> list = getAllIcon();
		for (Icon i : list) {
			if (i.getIconID().equals(Long.parseLong(id))) {
				return i;
			}
		}
		return null;
	}

}
