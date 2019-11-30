package br.usjt.arqsw.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
public class Represa {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@NotNull
	@Column(name="nome")
	private String nome;
	
	//@NotNull
	@Column(name="sistema")
	private String sistema;

	@NotNull
	@Column(name="volumeUtil")
	private double volumeUtil;
	
	@NotNull
	@Column(name="volumeReservaTecnica")
	private double volumeReservaTecnica;
	
	@Column(name="volumeTotal")
	private Double volumeTotal;
	
	@NotNull
	@Column(name="volumeArmazenado")
	private double volumeArmazenado;
	
	@NotNull
	@Column(name="pluviometria")
	private double pluviometria;
	
	@Column(name="calcIndice1")
	private Double calcIndice1;
	
	@Column(name="calcIndice2")
	private Double calcIndice2;
	
	@Column(name="calcIndice3")
	private Double calcIndice3;
	
	//@NotNull
	@Column(name="data")
	@JsonFormat(pattern="dd-MM-yyyy")
	private Date data;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSistema() {
		return sistema;
	}

	public void setSistema(String sistema) {
		this.sistema = sistema;
	}

	public double getVolumeUtil() {
		return volumeUtil;
	}

	public void setVolumeUtil(double volumeUtil) {
		this.volumeUtil = volumeUtil;
	}

	public double getVolumeReservaTecnica() {
		return volumeReservaTecnica;
	}

	public void setVolumeReservaTecnica(double volumeReservaTecnica) {
		this.volumeReservaTecnica = volumeReservaTecnica;
	}
	
	public double getVolumeArmazenado() {
		return volumeArmazenado;
	}

	public void setVolumeArmazenado(double volumeArmazenado) {
		this.volumeArmazenado = volumeArmazenado;
	}

	public double getPluviometria() {
		return pluviometria;
	}

	public void setPluviometria(double pluviometria) {
		this.pluviometria = pluviometria;
	}

	public Double getCalcIndice1() {
		return calcIndice1;
	}

	public void setCalcIndice1(Double calcIndice1) {
		this.calcIndice1 = calcIndice1;
	}

	public Double getCalcIndice2() {
		return calcIndice2;
	}

	public void setCalcIndice2(Double calcIndice2) {
		this.calcIndice2 = calcIndice2;
	}

	public Double getCalcIndice3() {
		return calcIndice3;
	}

	public void setCalcIndice3(Double calcIndice3) {
		this.calcIndice3 = calcIndice3;
	}

	public Double getVolumeTotal() {
		return volumeTotal;
	}

	public void setVolumeTotal(Double volumeTotal) {
		this.volumeTotal = volumeTotal;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "Represa [id=" + id + ", nome=" + nome + ", sistema=" + sistema + ", volumeUtil=" + volumeUtil
				+ ", volumeReservaTecnica=" + volumeReservaTecnica + "]";
	}

}
