public with sharing class ctr_GiftAidXML 
{
	public String					xmlToSend 	{ public get; private set; }
	public String 					xmlResult	{ public get; private set; }
	
	public Map<Id, OpportunityLineItem> 		oliMap		{ public get; private set; }
	public Map<Id, s360a__GiftAidSchedule__c>	gasMap		{ public get; private set; }
	
	public List<Gift>				giftList	{ public get; public set; }
	
	public ctr_GiftAidXML () 
	{
		buildOliMap();
	} 
	
	public void doSendTestDoc () 
	{
		/* HttpRequest req = new HttpRequest();
        	req.setEndpoint('https://secure.dev.gateway.gov.uk/submission');
        	req.setMethod('POST');
        	req.setHeader('Content-Length', String.valueOf(this.textToSend.length()));
        	req.setBody(this.textToSend);
        	Http h = new Http();
        	HttpResponse res = h.send(req);
        	this.result = String.valueOf(res.getBody()); */
        
		HttpResponse response = submitRequest();
		
		xmlResult = String.valueOf(response.getBody());
	} 
	
	public HttpResponse submitRequest ()
	{
		String xmlStr = compileRequest();
		
		
		
		return null;
	}
	
	public HttpResponse submitPoll ()
	{
		return null;
	}
	
	public HttpResponse deleteRequest ()
	{
		return null;
	}
	
	public HttpResponse dataRequest ()
	{
		return null;
	}
	
	private String compileRequest ()
	{
		util_XMLBuilder.GateWay_SubmissionRequest xml = new util_XMLBuilder.GateWay_SubmissionRequest();
		
		String xmlStr = xml.SubmissionRequest_Core;
		
		return xmlStr;
	}
	
	private void buildoliMap ()
	{
		oliMap = new Map<Id, OpportunityLineItem>();
		
		for (OpportunityLineItem oli :[
							SELECT
								Id,
								s360a__GiftAidValue__c,
								OpportunityId,
								Opportunity.CloseDate,
								Opportunity.s360a__RelatedContact__r.FirstName,
								Opportunity.s360a__RelatedContact__r.LastName,
								Opportunity.s360a__RelatedContact__r.s360a__AddressPrimaryStreet__c,
								Opportunity.s360a__RelatedContact__r.s360a__AddressPrimaryPostalCode__c
							FROM
								OpportunityLineItem	])
		{
			oliMap.put(oli.Id, oli);
		}
	} 
	
	public class Gift 
	{
		public String	foreName;
		public String	lastName;
		public String	postCode;
		public Date	giftDate;
		public Decimal	amount;
		
		public Id	lineItemId;
		public Id	contactId;
		
		public Gift (String foreName, String lastName, String postCode, Date giftDate, Decimal amount)
		{
			this.foreName = foreName;	
			this.lastName = lastName;
			this.postCode = postCode;
			this.giftDate = giftDate;
			this.amount = amount;	
		}
	}
}