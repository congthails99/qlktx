package com.example.app.hopdong;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
@Transactional
public class HopdongService {
	@Autowired
	private HopdongRepository repo;
	public List<hopdong> listAll(){
		return repo.findAll();
	}
	public void save(hopdong hopdong) {
		repo.save(hopdong);
	}
	public hopdong get(long mahopdong) {
		return repo.findById(mahopdong).get();
	}
	public void delete(long mahopdong) {
		repo.deleteById(mahopdong);
	}
}

