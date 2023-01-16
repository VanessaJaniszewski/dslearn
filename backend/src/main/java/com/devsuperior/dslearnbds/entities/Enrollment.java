package com.devsuperior.dslearnbds.entities;

import java.time.Instant;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.devsuperior.dslearnbds.entities.pk.EnrollmentPK;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Embeddable
@Table (name = "tb_enrollment")
public class Enrollment {
	
	@EmbeddedId
	private EnrollmentPK id = new EnrollmentPK();
	@Column (columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
	private Instant enrollMoment;
	@Column (columnDefinition = "TIMESTAMP WITHOUT TIME ZONE")
	private Instant refundMoment;
	private boolean available;
	private boolean onlyUpdate;
	
	public Enrollment (User user, Offer offer, Instant enrollMoment, Instant refundMoment, boolean available, boolean onlyUpdate) {
		id.setUser(user);
		id.setOffer(offer);
		this.enrollMoment = enrollMoment;
		this.refundMoment = refundMoment;
		this.available = available;
		this.onlyUpdate = onlyUpdate;
	}
	
	public User getStudent() {
		return id.getUser();
	}
	
	public void setStudent(User user) {
		id.setUser(user);
	}
	
	public Offer getOffer() {
		return id.getOffer();
	}
	public void setOffer(Offer offer) {
		id.setOffer(offer);
	}

}
