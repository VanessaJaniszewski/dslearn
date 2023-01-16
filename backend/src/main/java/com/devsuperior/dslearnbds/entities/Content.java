package com.devsuperior.dslearnbds.entities;

import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table (name ="tb_content")
public class Content extends Lesson{
	private static final long serialVersionUID = 1L;

	private String textContent;
	private String videoUri;
	
	
}
