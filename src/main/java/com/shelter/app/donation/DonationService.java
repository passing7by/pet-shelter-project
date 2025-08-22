package com.shelter.app.donation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DonationService {
	
	@Autowired
	private DonationDAO donationDAO;
	
	public int createDonation(DonationVO donationVO) throws Exception {
		return donationDAO.createDonation(donationVO);		
	}
	
	public DonationVO findDonation(String orderId) throws Exception {
		return donationDAO.findDonation(orderId);		
	}
	
	public int completeDonation(DonationVO donationVO) throws Exception {
		return donationDAO.completeDonation(donationVO);		
	}
	
	public Integer sumDonation(DonationVO donationVO) throws Exception {
		return donationDAO.sumDonation(donationVO);
	}

}
