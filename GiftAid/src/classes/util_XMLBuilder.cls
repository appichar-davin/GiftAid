public with sharing class util_XMLBuilder 
{
	public class GateWay_SubmissionRequest 
	{
		public	String	SubmissionRequest_Core		{ get; set; }
		public	String	SubmissionRequest_GADCell	{ get; set; }
		
		public GateWay_SubmissionRequest ()
		{
			build_SubmissionRequest_Core();
			build_SubmissionRequest_GADCell();			
		}
		
		private void build_SubmissionRequest_Core ()
		{
			SubmissionRequest_Core = '';
			SubmissionRequest_Core += '<GovTalkMessage xmlns="http://www.govtalk.gov.uk/CM/envelope">\n';
			SubmissionRequest_Core += '\t<EnvelopeVersion>2.0</EnvelopeVersion>\n';
			SubmissionRequest_Core += '\t<Header>\n';
			SubmissionRequest_Core += '\t\t<MessageDetails>\n';
			SubmissionRequest_Core += '\t\t\t<Class>HMRC-CHAR-CLM</Class>\n';
			SubmissionRequest_Core += '\t\t\t<Qualifier>{MESSAGE_QUALIFIER}</Qualifier>\n';
			SubmissionRequest_Core += '\t\t\t<Function>{MESSAGE_FUNCTION}</Function>\n';
			SubmissionRequest_Core += '\t\t\t<CorrelationID/>\n';
			SubmissionRequest_Core += '\t\t\t<Transformation>XML</Transformation>\n';
			SubmissionRequest_Core += '\t\t\t<GatewayTest>{MESSAGE_TESTMODE}</GatewayTest>\n';
			SubmissionRequest_Core += '\t\t\t<GatewayTimestamp/>\n';
			SubmissionRequest_Core += '\t\t</MessageDetails>\n';
			SubmissionRequest_Core += '\t\t<SenderDetails>\n';
			SubmissionRequest_Core += '\t\t\t<IDAuthentication>\n';
			SubmissionRequest_Core += '\t\t\t\t<SenderID>{SENDER_ID}</SenderID>\n';
			SubmissionRequest_Core += '\t\t\t\t<Authentication>\n';
			SubmissionRequest_Core += '\t\t\t\t\t<Method>{SENDER_AUTHMETHOD}</Method>\n';
			SubmissionRequest_Core += '\t\t\t\t\t<Role>{SENDER_AUTHROLE}</Role>\n';
			SubmissionRequest_Core += '\t\t\t\t\t<Value>{SENDER_VALUE}</Value>\n';
			SubmissionRequest_Core += '\t\t\t\t</Authentication>\n';
			SubmissionRequest_Core += '\t\t\t</IDAuthentication>\n';
			SubmissionRequest_Core += '\t\t</SenderDetails>\n';
			SubmissionRequest_Core += '\t</Header>\n';
			SubmissionRequest_Core += '\t<GovTalkDetails>\n';
			SubmissionRequest_Core += '\t\t<Keys>\n';
			SubmissionRequest_Core += '\t\t\t<Key Type="CHARID">{DETAILS_KEYCHARID}</Key>\n';
			SubmissionRequest_Core += '\t\t</Keys>\n';
			SubmissionRequest_Core += '\t</GovTalkDetails>\n';
			SubmissionRequest_Core += '\t<Body>\n';
			SubmissionRequest_Core += '\t\t<IRenvelope xmlns="http://www.govtalk.gov.uk/taxation/charities/r68/1">\n';
			SubmissionRequest_Core += '\t\t\t<IRheader>\n';
			SubmissionRequest_Core += '\t\t\t\t<Keys>\n';
			SubmissionRequest_Core += '\t\t\t\t\t<Key Type="CHARID">{IRHEADER_KEYCHARID}</Key>\n';
			SubmissionRequest_Core += '\t\t\t\t</Keys>\n';
			SubmissionRequest_Core += '\t\t\t\t<PeriodEnd>{IRHEADER_PERIODEND}</PeriodEnd>\n';
			SubmissionRequest_Core += '\t\t\t\t<DefaultCurrency>{IRHEADER_CURRENCY}</DefaultCurrency>\n';
			SubmissionRequest_Core += '\t\t\t\t<IRmark Type="generic">{IRHEADER_IRMARK}</IRmark>\n';
			SubmissionRequest_Core += '\t\t\t\t<Sender>{IRHEADER_SENDER}</Sender>\n';
			SubmissionRequest_Core += '\t\t\t</IRheader>\n';
			SubmissionRequest_Core += '\t\t\t<R68>\n';
			SubmissionRequest_Core += '\t\t\t\t<AuthOfficial>\n';
			SubmissionRequest_Core += '\t\t\t\t\t<OffName>\n';
			SubmissionRequest_Core += '\t\t\t\t\t\t<Fore>{R68_AUTHOFFICIALFORENAME}</Fore>\n';
			SubmissionRequest_Core += '\t\t\t\t\t\t<Sur>{R68_AUTHOFFICIALSURNAME}</Sur>\n';
			SubmissionRequest_Core += '\t\t\t\t\t</OffName>\n';
			SubmissionRequest_Core += '\t\t\t\t\t<OffID>\n';
			SubmissionRequest_Core += '\t\t\t\t\t\t<Postcode>{R68_AUTHOFFICIALPOSTCODE}</Postcode>\n';
			SubmissionRequest_Core += '\t\t\t\t\t</OffID>\n';
			SubmissionRequest_Core += '\t\t\t\t\t<Phone>{R68_AUTHOFFICIALPHONE}</Phone>\n';
			SubmissionRequest_Core += '\t\t\t\t</AuthOfficial>\n';
			SubmissionRequest_Core += '\t\t\t\t<Declaration>{R68_DECLARATIONYESNO}</Declaration>\n';
			SubmissionRequest_Core += '\t\t\t\t<Claim>\n';
			SubmissionRequest_Core += '\t\t\t\t\t<OrgName>{CLAIM_ORGNAME}</OrgName>\n';
			SubmissionRequest_Core += '\t\t\t\t\t<HMRCref>{CLAIM_HMRCREF}</HMRCref>\n';
			SubmissionRequest_Core += '\t\t\t\t\t<Regulator>\n';
			SubmissionRequest_Core += '\t\t\t\t\t\t<RegName>{CLAIM_REGNAME}</RegName>\n';
			SubmissionRequest_Core += '\t\t\t\t\t\t<RegNo>{CLAIM_REGNO}</RegNo>\n';
			SubmissionRequest_Core += '\t\t\t\t\t</Regulator>\n';
			SubmissionRequest_Core += '\t\t\t\t\t<Repayment>\n';
			SubmissionRequest_Core += '\t\t\t\t\t\t{GAD_LIST}\n';
			SubmissionRequest_Core += '\t\t\t\t\t\t<EarliestGAdate>{REPAYMENT_EARLIESTGADDATE}</EarliestGAdate>\n';
			SubmissionRequest_Core += '\t\t\t\t\t</Repayment>\n';
			SubmissionRequest_Core += '\t\t\t\t\t<GASDS>\n';
			SubmissionRequest_Core += '\t\t\t\t\t\t<ConnectedCharities>{GASDS_CONNECTED}</ConnectedCharities>\n';
			SubmissionRequest_Core += '\t\t\t\t\t\t<CommBldgs>{GASDS_COMMBLDGS}</CommBldgs>\n';
			SubmissionRequest_Core += '\t\t\t\t\t</GASDS>\n';
			SubmissionRequest_Core += '\t\t\t\t</Claim>\n';
			SubmissionRequest_Core += '\t\t\t</R68>\n';
			SubmissionRequest_Core += '\t\t</IRenvelope>\n';
			SubmissionRequest_Core += '\t</Body>\n';
			SubmissionRequest_Core += '</GovTalkMessage>';
		}
		
		private void build_SubmissionRequest_GADCell ()
		{
			SubmissionRequest_GADCell = '';
			SubmissionRequest_GADCell += '\t\t\t\t\t\t<GAD>\n';
			SubmissionRequest_GADCell += '\t\t\t\t\t\t\t<Donor>\n';
			SubmissionRequest_GADCell += '\t\t\t\t\t\t\t\t<Fore>James</Fore>\n';
			SubmissionRequest_GADCell += '\t\t\t\t\t\t\t\t<Sur>Bacon</Sur>\n';
			SubmissionRequest_GADCell += '\t\t\t\t\t\t\t\t<House>55</House>\n';
			SubmissionRequest_GADCell += '\t\t\t\t\t\t\t\t<Postcode>AB23 4CD</Postcode>\n';
			SubmissionRequest_GADCell += '\t\t\t\t\t\t\t</Donor>\n';
			SubmissionRequest_GADCell += '\t\t\t\t\t\t\t<Date>2012-10-01</Date>\n';
			SubmissionRequest_GADCell += '\t\t\t\t\t\t\t<Total>5.00</Total>\n';
			SubmissionRequest_GADCell += '\t\t\t\t\t\t</GAD>\n';
		}
	}
	
	public class GateWay_SubmissionPoll
	{
		public	String	SubmissionPoll_Core		{ get; set; }	
		
		public GateWay_SubmissionPoll () 
		{
			
		}
	}
	
	public class GateWay_DeleteRequest
	{
		public	String	DeleteRequest_Core		{ get; set; }	
		
		public GateWay_DeleteRequest ()
		{
			
		}	
	}
	
	public class GateWay_DataRequest
	{
		public String	DataRequest_Core		{ get; set; }	
		
		public GateWay_DataRequest ()
		{
			
		}
	}
}