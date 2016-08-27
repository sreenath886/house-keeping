package com.houseservice.model;

//import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "services")
public class Services {
	@Id
//	@GeneratedValue(strategy = GenerationType.AUTO)
	Integer SRV_ID;
	String SR_DESCRIPTION;

	public Services() { }

	public Services(Integer SRV_ID, String SR_DESCRIPTION) {
		this.SRV_ID = SRV_ID;
		this.SR_DESCRIPTION = SR_DESCRIPTION;
	}

	public Integer getSRV_ID() {
		return SRV_ID;
	}

	public void setSRV_ID(Integer srv_id) {
		SRV_ID = srv_id;
	}

	public String getSR_DESCRIPTION() {
		return SR_DESCRIPTION;
	}

	public void setSR_DESCRIPTION(String sr_description) {
		SR_DESCRIPTION = sr_description;
	}



}