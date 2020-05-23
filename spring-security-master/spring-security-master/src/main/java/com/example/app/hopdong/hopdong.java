package com.example.app.hopdong;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class hopdong   {
	private Long mahopdong;
	private int masinhvien;
	private int  manhanvien;
	private int sophong;
	private String khunha;
	private Date ngaylap;
	private Date ngaybatdau;
	private Date ngayketthuc;
	
	public hopdong(){
		super();
	}

	public hopdong(Long mahopdong,int masinhvien, int manhanvien, int sophong, String khunha, Date ngaylap, Date ngaybatdau,
			Date ngayketthuc) {
		super();
		this.mahopdong = mahopdong;
		this.masinhvien=masinhvien;
		this.manhanvien = manhanvien;
		this.sophong = sophong;
		this.khunha = khunha;
		this.ngaylap = ngaylap;
		this.ngaybatdau = ngaybatdau;
		this.ngayketthuc = ngayketthuc;
	}

	/**
	 * @return the mahopdong
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Long getMahopdong() {
		return mahopdong;
	}

	/**
	 * @param mahopdong the mahopdong to set
	 */
	public void setMahopdong(Long mahopdong) {
		this.mahopdong = mahopdong;
	}
	

	/**
	 * @return the masinhvien
	 */
	public int getMasinhvien() {
		return masinhvien;
	}

	/**
	 * @param masinhvien the masinhvien to set
	 */
	public void setMasinhvien(int masinhvien) {
		this.masinhvien = masinhvien;
	}

	/**
	 * @return the manhanvien
	 */
	public int getManhanvien() {
		return manhanvien;
	}

	/**
	 * @param manhanvien the manhanvien to set
	 */
	public void setManhanvien(int manhanvien) {
		this.manhanvien = manhanvien;
	}

	/**
	 * @return the sophong
	 */
	public int getSophong() {
		return sophong;
	}

	/**
	 * @param sophong the sophong to set
	 */
	public void setSophong(int sophong) {
		this.sophong = sophong;
	}

	/**
	 * @return the khunha
	 */
	public String getKhunha() {
		return khunha;
	}

	/**
	 * @param khunha the khunha to set
	 */
	public void setKhunha(String khunha) {
		this.khunha = khunha;
	}

	/**
	 * @return the ngaylap
	 */
	public Date getNgaylap() {
		return ngaylap;
	}

	/**
	 * @param ngaylap the ngaylap to set
	 */
	public void setNgaylap(Date ngaylap) {
		this.ngaylap = ngaylap;
	}

	/**
	 * @return the ngaybatdau
	 */
	public Date getNgaybatdau() {
		return ngaybatdau;
	}

	/**
	 * @param ngaybatdau the ngaybatdau to set
	 */
	public void setNgaybatdau(Date ngaybatdau) {
		this.ngaybatdau = ngaybatdau;
	}

	/**
	 * @return the ngaykethuc
	 */
	public Date getNgayketthuc() {
		return ngayketthuc;
	}

	/**
	 * @param ngaykethuc the ngaykethuc to set
	 */
	public void setNgayketthuc(Date ngayketthuc) {
		this.ngayketthuc = ngayketthuc;
	}
	
	
}
