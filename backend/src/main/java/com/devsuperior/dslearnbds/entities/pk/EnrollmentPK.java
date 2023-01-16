package com.devsuperior.dslearnbds.entities.pk;

import java.io.Serializable;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.devsuperior.dslearnbds.entities.Offer;
import com.devsuperior.dslearnbds.entities.User;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@EqualsAndHashCode
public class EnrollmentPK implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@ManyToOne
	@JoinColumn (name = "user_id")
	private User user;
	
	@ManyToOne
	@JoinColumn (name ="offer_id")
	private Offer offer;
	


}
