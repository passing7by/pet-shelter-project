package com.shelter.app.donation;

import java.time.LocalDate;

import com.shelter.app.member.MemberVO;
import com.shelter.app.pet.PetVO;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class DonationVO {

	private Long donationId;
	private LocalDate donationDate;
	private Long donationPrice;

	private MemberVO memberVO;
	private PetVO petVO;

	private Long memberId;
	private Long petId;	
	
	private String orderId;
	private String paymentKey;
	private String status;

}
