<?xml version="1.0" encoding="UTF-8"?>
<node name='Device' rw='0' type='node' arg='1.1'>
	<node name='DeviceInfo' rw='0' type='node'>
		<node acl='' getc='0' name='Manufacturer' noc='0' nocc='' rw='0' type='string'>ASUSTeK Computer Inc.</node>
		<node acl='' getc='0' name='ManufacturerOUI' noc='0' nocc='' rw='0' type='string' cmd='oui'></node>
		<node acl='' getc='0' name='ModelName' noc='0' nocc='' rw='0' type='string' cmd='nvram' arg='productid'></node>
		<node acl='' getc='0' name='ProductClass' noc='0' nocc='' rw='0' type='string' cmd='nvram' arg='productid'></node>
		<node acl='' getc='0' name='SerialNumber' noc='0' nocc='' rw='0' type='string' cmd='serial'></node>
		<node acl='' getc='0' name='HardwareVersion' noc='0' nocc='' rw='0' type='string'>1.0</node>
		<node acl='' getc='0' name='SoftwareVersion' noc='0' nocc='' rw='0' type='string' cmd='firmver'></node>
		<node acl='' getc='0' name='SpecVersion' noc='0' nocc='' rw='0' type='string'>1.0</node>
		<node acl='' getc='0' name='ProvisioningCode' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='pvgcode'></node>
		<node acl='' getc='0' name='UpTime' noc='0' nocc='' rw='0' type='unsignedInt' cmd='uptime'></node>
		<node acl='' getc='0' name='ProcessorNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'>0</node>
		<node acl='' getc='0' name='VendorConfigFileNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'>0</node>
		<node il='2' name='Processor' nin='1' rw='1' type='node' cmd='deny_object'>
			<node name='template' rw='1' type='node'>
				<node acl='' getc='0' name='Architecture' noc='0' nocc='' rw='0' type='string'></node>
			</node>
		</node>
		<node il='32' name='VendorConfigFile' nin='1' rw='1' type='node'>
			<node name='template' rw='1' type='node'>
				<node acl='' getc='0' name='Name' noc='0' nocc='' rw='0' type='string'></node>
				<node acl='' getc='0' name='Date' noc='0' nocc='' rw='0' type='dateTime'></node>
			</node>
		</node>
		<node name='MemoryStatus' rw='0' type='node'>
			<node acl='' getc='0' name='Total' noc='0' nocc='' rw='0' type='unsignedInt' cmd='totalmemory'></node>
			<node acl='' getc='0' name='Free' noc='0' nocc='' rw='0' type='unsignedInt' cmd='freememory'></node>
		</node>
	</node>
	<node name='Time' rw='0' type='node'>
		<node acl='' getc='0' name='NTPServer1' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='ntp_server0' act='restart_time'></node>
		<node acl='' getc='0' name='CurrentLocalTime' noc='0' nocc='' rw='0' type='dataTime' cmd='currentlocaltime'></node>
		<node acl='' getc='0' name='LocalTimeZone' noc='0' nocc='' rw='1' type='string' cmd='localtimezonename' act='restart_time'></node>
	</node>
	<node name='ManagementServer' rw='0' type='node'>
		<node acl='' getc='0' name='EnableCWMP' noc='0' nocc='' rw='1' type='boolean' cmd='nvram' arg='tr_enable'></node>
		<node acl='' getc='0' name='URL' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='tr_acs_url'></node>
		<node acl='' getc='0' name='Username' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='tr_username'></node>
		<node acl='' getc='1' name='Password' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='tr_passwd'></node>
		<node acl='' getc='0' name='PeriodicInformEnable' noc='0' nocc='' rw='1' type='boolean' cmd='nvram' arg='tr_inform_enable'></node>
		<node acl='' getc='0' name='PeriodicInformInterval' noc='0' nocc='' rw='1' type='unsignedInt' cmd='nvram' arg='tr_inform_interval'></node>
		<node acl='' getc='0' name='PeriodicInformTime' noc='0' nocc='' rw='1' type='dateTime'>0000-00-00T00:00:00</node>
		<node acl='' getc='0' name='ParameterKey' noc='0' nocc='' rw='0' type='string'></node>
		<node acl='' getc='0' name='ConnectionRequestURL' noc='0' nocc='' rw='0' type='string' cmd='conn_url'></node>
		<node acl='' getc='0' name='ConnectionRequestUsername' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='tr_conn_username'></node>
		<node acl='' getc='1' name='ConnectionRequestPassword' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='tr_conn_passwd'></node>
		<node acl='' getc='0' name='UDPConnectionRequestAddress' noc='0' nocc='' rw='0' type='string'></node>
		<node acl='' getc='0' name='UDPConnectionRequestAddressNotificationLimit' noc='0' nocc='' rw='1' type='unsignedInt'></node>
		<node acl='' getc='0' name='STUNEnable' noc='0' nocc='' rw='1' type='boolean'>false</node>
		<node acl='' getc='0' name='STUNServerAddress' noc='0' nocc='' rw='1' type='string'></node>
		<node acl='' getc='0' name='STUNServerPort' noc='0' nocc='' rw='1' type='unsignedInt'></node>
		<node acl='' getc='0' name='STUNUsername' noc='0' nocc='' rw='1' type='string'></node>
		<node acl='' getc='1' name='STUNPassword' noc='0' nocc='' rw='1' type='string'></node>
		<node acl='' getc='0' name='STUNMaximumKeepAlivePeriod' noc='0' nocc='' rw='1' type='int'></node>
		<node acl='' getc='0' name='STUNMinimumKeepAlivePeriod' noc='0' nocc='' rw='1' type='unsignedInt'></node>
		<node acl='' getc='0' name='NATDetected' noc='0' nocc='' rw='0' type='boolean'>false</node>
		<node acl='' getc='0' name='ManageableDeviceNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'></node>
		<node il='32' name='ManageableDevice' nin='1' rw='1' type='node'>
			<node name='template' rw='1' type='node'>
				<node acl='' getc='0' name='ManufacturerOUI' noc='0' nocc='' rw='0' type='string'></node>
				<node acl='' getc='0' name='SerialNumber' noc='0' nocc='' rw='0' type='string'></node>
				<node acl='' getc='0' name='ProductClass' noc='0' nocc='' rw='0' type='string'></node>
			</node>
		</node>
	</node>
	<node name='GatewayInfo' rw='0' type='node'>
		<node acl='' getc='0' name='ManufacturerOUI' noc='0' nocc='' rw='0' type='string'></node>
		<node acl='' getc='0' name='ProductClass' noc='0' nocc='' rw='0' type='string'></node>
		<node acl='' getc='0' name='SerialNumber' noc='0' nocc='' rw='0' type='string'></node>
	</node>
	<node name='UserInterface' rw='0' type='node'>
		<node acl='' getc='0' name='AvailableLanguages' noc='0' nocc='' rw='0' type='string' cmd='availablelanguages'></node>
		<node acl='' getc='0' name='CurrentLanguage' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='preferred_lang'></node>
		<node name='RemoteAccess' rw='0' type='node'>
			<node acl='' getc='0' name='Enable' noc='0' nocc='' rw='1' type='boolean' cmd='nvram' arg='misc_http_x' act='restart_time'></node>
			<node acl='' getc='0' name='Port' noc='0' nocc='' rw='1' type='unsignedInt' cmd='userinterface_port' act='restart_time'></node>
			<node acl='' getc='0' name='SupportedProtocols' noc='0' nocc='' rw='0' type='string' cmd='userinterface_support_protocols'></node>
			<node acl='' getc='0' name='Protocol' noc='0' nocc='' rw='1' type='string' cmd='userinterface_protocol' act='restart_time'></node>
		</node>
	</node>
	<node name='WiFi' rw='1' type='node' cmd='deny_object'>
		<node acl='' getc='0' name='RadioNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'>0</node>
		<node acl='' getc='0' name='SSIDNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'>0</node>
		<node acl='' getc='0' name='AccessPointNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'>0</node>
		<node il='4' name='Radio' nin='1' rw='1' type='node'>
			<node name='template' rw='0' type='node'>
				<node acl='' getc='0' name='Enable' noc='0' nocc='' rw='1' type='boolean' cmd='wifi_radio_enable' act='restart_wireless'></node>
				<node acl='' getc='0' name='Name' noc='0' nocc='' rw='0' type='string' cmd='wifi_radio_name'></node>
				<node acl='' getc='0' name='Upstream' noc='0' nocc='' rw='0' type='boolean'>false</node>
				<node acl='' getc='0' name='SupportedFrequencyBands' noc='0' nocc='' rw='0' type='string' cmd='wifi_radio_frequencybands'></node>
				<node acl='' getc='0' name='SupportedStandards' noc='0' nocc='' rw='0' type='string' cmd='wifi_radio_standards'></node>
				<node acl='' getc='0' name='PossibleChannels' noc='0' nocc='' rw='0' type='string' cmd='wifi_radio_possiblechannels'></node>
				<node acl='' getc='0' name='Channel' noc='0' nocc='' rw='1' type='unsignedInt' cmd='wifi_radio_channel' act='restart_wireless'></node>
				<node acl='' getc='0' name='AutoChannelSupported' noc='0' nocc='' rw='0' type='boolean'>true</node>
				<node acl='' getc='0' name='AutoChannelEnable' noc='0' nocc='' rw='1' type='boolean' cmd='wifi_radio_autochannelenable' act='restart_wireless'></node>
				<node acl='' getc='0' name='OperatingChannelBandwidth' noc='0' nocc='' rw='1' type='string' cmd='wifi_radio_operatingchannelbandwidth' act='restart_wireless'></node>
				<node acl='' getc='0' name='ExtensionChannel' noc='0' nocc='' rw='1' type='string' cmd='wifi_radio_extensionchannel' act='restart_wireless'></node>
				<node name='Stats' rw='0' type='node'>
					<node acl='' getc='0' name='BytesSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='wifi_radio_totalbytessent'></node>
					<node acl='' getc='0' name='BytesReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='wifi_radio_totalbytesreceived'></node>
					<node acl='' getc='0' name='PacketsSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='wifi_radio_totalpacketssent'></node>
					<node acl='' getc='0' name='PacketsReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='wifi_radio_totalpacketsreceived'></node>
					<node acl='' getc='0' name='ErrorsSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='wifi_radio_errorssent'></node>
					<node acl='' getc='0' name='ErrorsReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='wifi_radio_errorsreceived'></node>
					<node acl='' getc='0' name='DiscardPacketsSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='wifi_radio_discardpacketssent'></node>
					<node acl='' getc='0' name='DiscardPacketsReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='wifi_radio_discardpacketsreceived'></node>
				</node>
			</node>
		</node>
		<node il='16' name='SSID' nin='1' rw='1' type='node'>
			<node name='template' rw='0' type='node'>
				<node acl='' getc='0' name='Enable' noc='0' nocc='' rw='1' type='boolean' cmd='wifi_ssid_enable' act='restart_wireless'></node>
				<node acl='' getc='0' name='BSSID' noc='0' nocc='' rw='0' type='string' cmd='wifi_ssid_bssid'></node>
				<node acl='' getc='0' name='SSID' noc='0' nocc='' rw='1' type='string' cmd='wifi_ssid_ssid' act='restart_wireless'></node>
				<node acl='' getc='0' name='LowerLayers' noc='0' nocc='' rw='1' type='string'></node>
				<node name='Stats' rw='0' type='node'>
					<node acl='' getc='0' name='BytesSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='wifi_ssid_totalbytessent'></node>
					<node acl='' getc='0' name='BytesReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='wifi_ssid_totalbytesreceived'></node>
					<node acl='' getc='0' name='PacketsSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='wifi_ssid_totalpacketssent'></node>
					<node acl='' getc='0' name='PacketsReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='wifi_ssid_totalpacketsreceived'></node>
					<node acl='' getc='0' name='ErrorsSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='wifi_ssid_errorssent'></node>
					<node acl='' getc='0' name='ErrorsReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='wifi_ssid_errorsreceived'></node>
					<node acl='' getc='0' name='DiscardPacketsSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='wifi_ssid_discardpacketssent'></node>
					<node acl='' getc='0' name='DiscardPacketsReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='wifi_ssid_discardpacketsreceived'></node>
				</node>
			</node>
		</node>
		<node il='16' name='AccessPoint' nin='1' rw='1' type='node'>
			<node name='template' rw='0' type='node'>
				<node acl='' getc='0' name='SSIDReference' noc='0' nocc='' rw='1' type='string'></node>
				<node acl='' getc='0' name='SSIDAdvertisementEnabled' noc='0' nocc='' rw='1' type='boolean' cmd='wifi_ap_ssidadvertisementenabled' act='restart_wireless'></node>
				<node acl='' getc='0' name='AssociatedDeviceNumberOfEntries' noc='0' nocc='' rw='1' type='unsignedInt' cmd='wifi_ap_associatednum'></node>
				<node name='Security' rw='0' type='node'>
					<node acl='' getc='0' name='ModeEnabled' noc='0' nocc='' rw='1' type='string' cmd='wifi_ap_modeabled' act='restart_wireless'></node>
					<node acl='' getc='1' name='WEPKey' noc='0' nocc='' rw='1' type='string' cmd='wifi_ap_wepkey' act='restart_wireless'></node>
					<node acl='' getc='1' name='PreSharedKey' noc='0' nocc='' rw='1' type='string' cmd='wifi_ap_presharedkey' act='restart_wireless'></node>
					<node acl='' getc='0' name='RekeyingInterval' noc='0' nocc='' rw='1' type='unsignedInt' cmd='wifi_ap_rekeyinginterval' act='restart_wireless'></node>
					<node acl='' getc='0' name='RadiusServerIPAddr' noc='0' nocc='' rw='1' type='string' cmd='wifi_ap_radiusserip' act='restart_wireless'></node>
					<node acl='' getc='0' name='RadiusServerPort' noc='0' nocc='' rw='1' type='unsignedInt' cmd='wifi_ap_radiusserport' act='restart_wireless'></node>
					<node acl='' getc='0' name='RadiusSecret' noc='0' nocc='' rw='1' type='string' cmd='wifi_ap_radiussersecret' act='restart_wireless'></node>
				</node>
				<node name='WPS' rw='0' type='node'>
					<node acl='' getc='0' name='Enable' noc='0' nocc='' rw='1' type='boolean' cmd='wifi_ap_wps_enable' act='restart_wireless'></node>
					<node acl='' getc='0' name='ConfigMethodsEnabled' noc='0' nocc='' rw='1' type='strng' cmd='wifi_ap_wps_configmethodsenabled' act='start_wps_method'></node>
				</node>
				<node il='9' name='AssociatedDevice' nin='1' rw='1' type='node'>
					<node name='template' rw='0' type='node'>
						<node acl='' getc='0' name='MACAddress' noc='0' nocc='' rw='0' type='strng'>00:00:00:00:00:00</node>
					</node>
				</node>
			</node>
		</node>
	</node>
	<node name='DSL' rw='0' type='node'>
		<node acl='' getc='0' name='LineNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'>1</node>
		<node acl='' getc='0' name='ChannelNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'>1</node>
		<node name='Line' rw='0' type='node'>
			<node name='1' rw='0' type='node'>
				<node acl='' getc='0' name='Status' noc='0' nocc='' rw='0' type='string' cmd='dsl_line_config' arg='lineState'>></node>
				<node acl='' getc='0' name='Upstream' noc='0' nocc='' rw='0' type='boolean'>true</node>
				<node acl='' getc='0' name='UpstreamMaxBitRate' noc='0' nocc='' rw='0' type='unsignedInt' cmd='dsl_line_config' arg='AttainUp'></node>
				<node acl='' getc='0' name='DownstreamMaxBitRate' noc='0' nocc='' rw='0' type='unsignedInt' cmd='dsl_line_config' arg='AttainDown'></node>
				<node acl='' getc='0' name='UpstreamNoiseMargin' noc='0' nocc='' rw='0' type='int' cmd='dsl_line_config' arg='SNRMarginUp'></node>
				<node acl='' getc='0' name='DownstreamNoiseMargin' noc='0' nocc='' rw='0' type='int' cmd='dsl_line_config' arg='SNRMarginDown'></node>
				<node acl='' getc='0' name='UpstreamAttenuation' noc='0' nocc='' rw='0' type='int' cmd='dsl_line_config' arg='AttenUp'></node>
				<node acl='' getc='0' name='DownstreamAttenuation' noc='0' nocc='' rw='0' type='int' cmd='dsl_line_config' arg='AttenDown'></node>
				<node acl='' getc='0' name='UpstreamPower' noc='0' nocc='' rw='0' type='int' cmd='dsl_line_config' arg='PowerUp'></node>
				<node acl='' getc='0' name='DownstreamPower' noc='0' nocc='' rw='0' type='int' cmd='dsl_line_config' arg='PowerDown'></node>
				<node name='Stats' rw='0' type='node'>
					<node acl='' getc='0' name='BytesSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='dsl_line_config' arg='outBytes'></node>
					<node acl='' getc='0' name='BytesReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='dsl_line_config' arg='inBytes'></node>
					<node acl='' getc='0' name='PacketsSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='dsl_line_config' arg='outPkts'></node>
					<node acl='' getc='0' name='PacketsReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='dsl_line_config' arg='inPkts'></node>
					<node acl='' getc='0' name='DiscardPacketsSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='dsl_line_config' arg='outDiscards'></node>
					<node acl='' getc='0' name='DiscardPacketsReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='dsl_line_config' arg='inDiscards'></node>
				</node>
			</node>
		</node>
		<node name='Channel' rw='0' type='node'>
			<node name='1' rw='0' type='node'>
				<node acl='' getc='0' name='LowerLayers' noc='0' nocc='' rw='1' type='string'>Device.DSL.Line.1</node>
				<node acl='' getc='0' name='UpstreamCurrRate' noc='0' nocc='' rw='0' type='unsignedInt' cmd='dsl_line_config' arg='DataRateUp'></node>
				<node acl='' getc='0' name='DownstreamCurrRate' noc='0' nocc='' rw='0' type='unsignedInt' cmd='dsl_line_config' arg='DataRateDown'></node>
			</node>
		</node>
	</node>
	<node name='ATM' rw='0' type='node'>
		<node acl='' getc='0' name='LinkNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'>0</node>
		<node il='8' name='Link' nin='1' rw='1' type='node' cmd='atm_link' act='restart_dslwan_if'>
			<node name='template' rw='1' type='node'>
				<node acl='' getc='0' name='Enable' noc='0' nocc='' rw='1' type='boolean' cmd='atm_enable' act='restart_dslwan_if'>false</node>
				<node acl='' getc='0' name='LowerLayers' noc='0' nocc='' rw='1' type='string'>Device.DSL.Channel.1</node>
				<node acl='' getc='0' name='LinkType' noc='0' nocc='' rw='0' type='string' cmd='atm_linktype'>Unconfigured</node>
				<node acl='' getc='0' name='DestinationAddress' noc='0' nocc='' rw='1' type='string' cmd='atm_destaddr' act='restart_dslwan_if'></node>
				<node acl='' getc='0' name='Encapsulation' noc='0' nocc='' rw='1' type='string' cmd='atm_encap' act='restart_dslwan_if'></node>
				<node acl='' getc='0' name='X_ASUS_DSLIndex' noc='0' nocc='' rw='0' type='string'></node>
				<node name='QoS' rw='0' type='node'>
					<node acl='' getc='0' name='QoSClass' noc='0' nocc='' rw='0' type='string' cmd='atm_qos' act='reboot'></node>
					<node acl='' getc='0' name='PeakCellRate' noc='0' nocc='' rw='0' type='unsignedInt' cmd='atm_pcr' act='restart_dslwan_if'>></node>
					<node acl='' getc='0' name='MaximumBurstSize' noc='0' nocc='' rw='0' type='unsignedInt' cmd='atm_mbs' act='restart_dslwan_if'>></node>
					<node acl='' getc='0' name='SustainableCellRate' noc='0' nocc='' rw='0' type='unsignedInt' cmd='atm_scr' act='restart_dslwan_if'>></node>
				</node>
			</node>
		</node>
	</node>
	<node name='PTM' rw='0' type='node'>
		<node acl='' getc='0' name='LinkNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'>0</node>
		<node il='8' name='Link' nin='1' rw='1' type='node' cmd='ptm_link' act='restart_dslwan_if'>
			<node name='template' rw='1' type='node'>
				<node acl='' getc='0' name='Enable' noc='0' nocc='' rw='1' type='boolean' cmd='ptm_enable' act='restart_dslwan_if'>false</node>
				<node acl='' getc='0' name='LowerLayers' noc='0' nocc='' rw='1' type='string'>Device.DSL.Channel.1</node>
				<node acl='' getc='0' name='X_ASUS_EnableDot1q' noc='0' nocc='' rw='1' type='boolean' cmd='ptm_enable_dot1q' act='restart_dslwan_if'></node>
				<node acl='' getc='0' name='X_ASUS_Dot1qVid' noc='0' nocc='' rw='1' type='unsignedInt' cmd='ptm_dot1q_vid' act='restart_dslwan_if'></node>
				<node acl='' getc='0' name='X_ASUS_DSLIndex' noc='0' nocc='' rw='0' type='string'></node>
			</node>
		</node>
	</node>	
	<node name='Ethernet' rw='0' type='node'>
		<node acl='' getc='0' name='InterfaceNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'>0</node>
		<node il='3' name='Interface' nin='1' rw='1' type='node'>
			<node name='template' rw='1' type='node'>
				<node acl='' getc='0' name='Enable' noc='0' nocc='' rw='1' type='boolean' cmd='eth_if_enable' act='restart_wan_if'>false</node>
				<node acl='' getc='0' name='Name' noc='0' nocc='' rw='0' type='string' cmd='eth_if_name'></node>
				<node acl='' getc='0' name='MACAddress' noc='0' nocc='' rw='0' type='string' cmd='eth_if_macaddress'></node>
				<node acl='' getc='0' name='Upstream' noc='0' nocc='' rw='0' type='boolean'>false</node>
			</node>
		</node>
	</node>
	<node name='USB' rw='0' type='node'>
		<node acl='' getc='0' name='InterfaceNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'>1</node>
		<node name='Interface' rw='0' type='node'>
			<node name='1' rw='0' type='node'>
				<node acl='' getc='0' name='Enable' noc='0' nocc='' rw='1' type='boolean' cmd='usb_if_enable' act='restart_wan_if'></node>
				<node acl='' getc='0' name='Name' noc='0' nocc='' rw='0' type='string' cmd='usb_if_name'></node>
				<node acl='' getc='0' name='Upstream' noc='0' nocc='' rw='0' type='boolean'>false</node>
				<node name='Stats' rw='0' type='node'>
					<node acl='' getc='0' name='BytesSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='usb_if_bytessent'></node>
					<node acl='' getc='0' name='BytesReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='usb_if_bytesreceived'></node>
					<node acl='' getc='0' name='PacketsSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='usb_if_packetssent'></node>
					<node acl='' getc='0' name='PacketsReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='usb_if_packetsreceived'></node>
					<node acl='' getc='0' name='ErrorsSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='usb_if_errorssent'></node>
					<node acl='' getc='0' name='ErrorsReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='usb_if_errorsreceived'></node>
					<node acl='' getc='0' name='DiscardPacketsSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='usb_if_discardpacketsSent'></node>
					<node acl='' getc='0' name='DiscardPacketsReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='usb_if_discardpacketsreceived'></node>
				</node>
			</node>
		</node>
	</node>	
	<node name='PPP' rw='0' type='node'>
		<node acl='' getc='0' name='InterfaceNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'>0</node>
		<node il='9' name='Interface' nin='1' rw='1' type='node' cmd='ppp_if' act='restart_wan_if'>
			<node name='template' rw='1' type='node'>
				<node acl='' getc='0' name='Enable' noc='0' nocc='' rw='1' type='boolean' cmd='ppp_if_enable' act='restart_wan_if'></node>
				<node acl='' getc='0' name='ConnectionStatus' noc='0' nocc='' rw='0' type='string' cmd='ppp_if_connectionstatus'></node>
				<node acl='' getc='0' name='Name' noc='0' nocc='' rw='0' type='string' cmd='ppp_if_name'></node>
				<node acl='' getc='0' name='LowerLayers' noc='0' nocc='' rw='1' type='string' cmd='ppp_if_lowerlayers'></node>
				<node acl='' getc='0' name='IdleDisconnectTime' noc='0' nocc='' rw='1' type='unsignedInt' cmd='ppp_if_idledisconnecttime' act='restart_wan_if'></node>
				<node acl='' getc='0' name='Username' noc='0' nocc='' rw='1' type='string' cmd='ppp_if_username' act='restart_wan_if'></node>
				<node acl='' getc='1' name='Password' noc='0' nocc='' rw='1' type='string' cmd='ppp_if_password' act='restart_wan_if'></node>
				<node acl='' getc='0' name='CurrentMRUSize' noc='0' nocc='' rw='0' type='unsignedInt' cmd='ppp_if_mru'></node>
				<node name='PPPoE' rw='0' type='node'>
					<node acl='' getc='0' name='ACName' noc='0' nocc='' rw='1' type='string' cmd='ppp_if_pppoe_acname'  act='restart_wan_if'></node>
					<node acl='' getc='0' name='ServiceName' noc='0' nocc='' rw='1' type='string' cmd='ppp_if_pppoe_servicename'  act='restart_wan_if'></node>
				</node>
				<node name='IPCP' rw='0' type='node'>
					<node acl='' getc='0' name='DNSServers' noc='0' nocc='' rw='0' type='string' cmd='ppp_if_ipcp_dnsservers' ></node>
				</node>
				<node name='Stats' rw='0' type='node'>
					<node acl='' getc='0' name='BytesSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='ppp_if_bytessent'></node>
					<node acl='' getc='0' name='BytesReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='ppp_if_bytesreceived'></node>
					<node acl='' getc='0' name='PacketsSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='ppp_if_packetssent'></node>
					<node acl='' getc='0' name='PacketsReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='ppp_if_packetsreceived'></node>
					<node acl='' getc='0' name='ErrorsSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='ppp_if_errorssent'></node>
					<node acl='' getc='0' name='ErrorsReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='ppp_if_errorsreceived'></node>
					<node acl='' getc='0' name='DiscardPacketsSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='ppp_if_discardpacketsSent'></node>
					<node acl='' getc='0' name='DiscardPacketsReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='ppp_if_discardpacketsreceived'></node>
				</node>
			</node>
		</node>
	</node>
	<node name='IP' rw='0' type='node'>
		<node acl='' getc='0' name='InterfaceNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'>0</node>
		<node il='9' name='Interface' nin='1' rw='1' type='node' cmd='ip_if' act='restart_wan_if'>
			<node name='template' rw='1' type='node'>
				<node acl='' getc='0' name='Enable' noc='0' nocc='' rw='1' type='boolean' cmd='ip_if_enable' act='restart_wan_if'></node>
				<node acl='' getc='0' name='Name' noc='0' nocc='' rw='0' type='string' cmd='ip_if_name'></node>
				<node acl='' getc='0' name='LowerLayers' noc='0' nocc='' rw='1' type='string' cmd='ip_if_lowerlayers'></node>
				<node name='IPv4Address' rw='0' type='node'>
					<node name='1' rw='0' type='node'>
						<node acl='' getc='0' name='IPAddress' noc='0' nocc='' rw='1' type='string' cmd='ip_if_ipaddress' act='restart_wan_if'></node>
						<node acl='' getc='0' name='SubnetMask' noc='0' nocc='' rw='1' type='string' cmd='ip_if_subnetmask' act='restart_wan_if'></node>
						<node acl='' getc='0' name='AddressingType' noc='0' nocc='' rw='0' type='string' cmd='ip_if_addressingtype'></node>
					</node>
				</node>
				<node name='IPv6Address' rw='0' type='node'>
					<node name='1' rw='0' type='node'>
						<node acl='' getc='0' name='Enable' noc='0' nocc='' rw='1' type='boolean' cmd='ip_if_ipv6_enable'  act='restart_allnet'></node>
						<node acl='' getc='0' name='IPAddress' noc='0' nocc='' rw='1' type='string' cmd='ip_if_ipv6_ipaddress' act='restart_allnet'></node>
					</node>
				</node>
				<node name='IPv6Prefix' rw='0' type='node'>
					<node name='1' rw='0' type='node'>
						<node acl='' getc='0' name='Prefix' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='ipv6_prefix'></node>
					</node>
				</node>
				<node name='Stats' rw='0' type='node'>
					<node acl='' getc='0' name='BytesSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='ip_if_bytessent'></node>
					<node acl='' getc='0' name='BytesReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='ip_if_bytesreceived'></node>
					<node acl='' getc='0' name='PacketsSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='ip_if_packetssent'></node>
					<node acl='' getc='0' name='PacketsReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='ip_if_packetsreceived'></node>
					<node acl='' getc='0' name='ErrorsSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='ip_if_errorssent'></node>
					<node acl='' getc='0' name='ErrorsReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='ip_if_errorsreceived'></node>
					<node acl='' getc='0' name='DiscardPacketsSent' noc='0' nocc='' rw='0' type='unsignedInt' cmd='ip_if_discardpacketssent'></node>
					<node acl='' getc='0' name='DiscardPacketsReceived' noc='0' nocc='' rw='0' type='unsignedInt' cmd='ip_if_discardpacketsreceived'></node>
				</node>
			</node>
		</node>
		<node name='Diagnostics' rw='0' type='node'>
			<node name='IPPing' rw='0' type='node'>
				<node acl='' getc='0' name='DiagnosticsState' noc='0' nocc='' rw='1' type='string'></node>
				<node acl='' getc='0' name='Interface' noc='0' nocc='' rw='1' type='string'></node>
				<node acl='' getc='0' name='Host' noc='0' nocc='' rw='1' type='string'></node>
				<node acl='' getc='0' name='NumberOfRepetitions' noc='0' nocc='' rw='1' type='unsignedInt'></node>
				<node acl='' getc='0' name='Timeout' noc='0' nocc='' rw='1' type='unsignedInt'></node>
				<node acl='' getc='0' name='DataBlockSize' noc='0' nocc='' rw='1' type='unsignedInt'></node>
				<node acl='' getc='0' name='DSCP' noc='0' nocc='' rw='1' type='unsignedInt'></node>
				<node acl='' getc='0' name='SuccessCount' noc='0' nocc='' rw='0' type='unsignedInt'></node>
				<node acl='' getc='0' name='FailureCount' noc='0' nocc='' rw='0' type='unsignedInt'></node>
				<node acl='' getc='0' name='AverageResponseTime' noc='0' nocc='' rw='0' type='unsignedInt'></node>
				<node acl='' getc='0' name='MinimumResponseTime' noc='0' nocc='' rw='0' type='unsignedInt'></node>
				<node acl='' getc='0' name='MaximumResponseTime' noc='0' nocc='' rw='0' type='unsignedInt'></node>
			</node>
			<node name='TraceRoute' rw='0' type='node'>
				<node acl='' getc='0' name='DiagnosticsState' noc='0' nocc='' rw='1' type='string'></node>
				<node acl='' getc='0' name='Interface' noc='0' nocc='' rw='1' type='string'></node>
				<node acl='' getc='0' name='Host' noc='0' nocc='' rw='1' type='string'></node>
				<node acl='' getc='0' name='NumberOfTries' noc='0' nocc='' rw='1' type='unsignedInt'></node>
				<node acl='' getc='0' name='Timeout' noc='0' nocc='' rw='1' type='unsignedInt'></node>
				<node acl='' getc='0' name='DataBlockSize' noc='0' nocc='' rw='1' type='unsignedInt'></node>
				<node acl='' getc='0' name='DSCP' noc='0' nocc='' rw='1' type='unsignedInt'></node>
				<node acl='' getc='0' name='MaxHopCount' noc='0' nocc='' rw='1' type='unsignedInt'></node>
				<node acl='' getc='0' name='ResponseTime' noc='0' nocc='' rw='0' type='unsignedInt'>0</node>
				<node acl='' getc='0' name='RouteHopsNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'></node>
				<node il='64' name='RouteHops' nin='1' rw='1' type='node'>
					<node name='template' rw='1' type='node'>
						<node acl='' getc='0' name='Host' noc='0' nocc='' rw='0' type='string'></node>
						<node acl='' getc='0' name='HostAddress' noc='0' nocc='' rw='0' type='string'></node>
						<node acl='' getc='0' name='RTTimes' noc='0' nocc='' rw='0' type='string'></node>
					</node>
				</node>
			</node>
			<node name='DownloadDiagnostics' rw='0' type='node'>
				<node acl='' getc='0' name='DiagnosticsState' noc='0' nocc='' rw='1' type='string'></node>
				<node acl='' getc='0' name='Interface' noc='0' nocc='' rw='1' type='string'></node>
				<node acl='' getc='0' name='DownloadURL' noc='0' nocc='' rw='1' type='string'></node>
				<node acl='' getc='0' name='DownloadTransports' noc='0' nocc='' rw='0' type='string'>HTTP</node>
				<node acl='' getc='0' name='DSCP' noc='0' nocc='' rw='1' type='unsignedInt'></node>
				<node acl='' getc='0' name='EthernetPriority' noc='0' nocc='' rw='1' type='unsignedInt'></node>
				<node acl='' getc='0' name='ROMTime' noc='0' nocc='' rw='0' type='dateTime'></node>
				<node acl='' getc='0' name='BOMTime' noc='0' nocc='' rw='0' type='dateTime'></node>
				<node acl='' getc='0' name='EOMTime' noc='0' nocc='' rw='0' type='dateTime'></node>
				<node acl='' getc='0' name='TestBytesReceived' noc='0' nocc='' rw='0' type='unsignedInt'></node>
				<node acl='' getc='0' name='TotalBytesReceived' noc='0' nocc='' rw='0' type='unsignedInt'></node>
				<node acl='' getc='0' name='TCPOpenRequestTime' noc='0' nocc='' rw='0' type='dateTime'></node>
				<node acl='' getc='0' name='TCPOpenResponseTime' noc='0' nocc='' rw='0' type='dateTime'></node>
			</node>
			<node name='UploadDiagnostics' rw='0' type='node'>
				<node acl='' getc='0' name='DiagnosticsState' noc='0' nocc='' rw='1' type='string'></node>
				<node acl='' getc='0' name='Interface' noc='0' nocc='' rw='1' type='string'></node>
				<node acl='' getc='0' name='UploadURL' noc='0' nocc='' rw='1' type='string'></node>
				<node acl='' getc='0' name='UploadTransports' noc='0' nocc='' rw='0' type='string'>HTTP</node>
				<node acl='' getc='0' name='DSCP' noc='0' nocc='' rw='1' type='unsignedInt'></node>
				<node acl='' getc='0' name='EthernetPriority' noc='0' nocc='' rw='1' type='unsignedInt'></node>
				<node acl='' getc='0' name='TestFileLength' noc='0' nocc='' rw='1' type='unsignedInt'></node>
				<node acl='' getc='0' name='ROMTime' noc='0' nocc='' rw='0' type='dateTime'></node>
				<node acl='' getc='0' name='BOMTime' noc='0' nocc='' rw='0' type='dateTime'></node>
				<node acl='' getc='0' name='EOMTime' noc='0' nocc='' rw='0' type='dateTime'></node>
				<node acl='' getc='0' name='TotalBytesSent' noc='0' nocc='' rw='0' type='unsignedInt'></node>
				<node acl='' getc='0' name='TCPOpenRequestTime' noc='0' nocc='' rw='0' type='dateTime'></node>
				<node acl='' getc='0' name='TCPOpenResponseTime' noc='0' nocc='' rw='0' type='dateTime'></node>
			</node>
			<node name='UDPEchoConfig' rw='0' type='node'>
				<node acl='' getc='0' name='Enable' noc='0' nocc='' rw='1' type='boolean'></node>
				<node acl='' getc='0' name='Interface' noc='0' nocc='' rw='1' type='string'></node>
				<node acl='' getc='0' name='SourceIPAddress' noc='0' nocc='' rw='1' type='string'></node>
				<node acl='' getc='0' name='UDPPort' noc='0' nocc='' rw='1' type='unsignedInt'></node>
				<node acl='' getc='0' name='EchoPlusEnabled' noc='0' nocc='' rw='1' type='boolean'></node>
				<node acl='' getc='0' name='EchoPlusSupported' noc='0' nocc='' rw='0' type='boolean'></node>
				<node acl='' getc='0' name='PacketsReceived' noc='0' nocc='' rw='0' type='unsignedInt'></node>
				<node acl='' getc='0' name='PacketsResponded' noc='0' nocc='' rw='0' type='unsignedInt'></node>
				<node acl='' getc='0' name='BytesReceived' noc='0' nocc='' rw='0' type='unsignedInt'></node>
				<node acl='' getc='0' name='BytesResponded' noc='0' nocc='' rw='0' type='unsignedInt'></node>
				<node acl='' getc='0' name='TimeFirstPacketReceived' noc='0' nocc='' rw='0' type='dateTime'></node>
				<node acl='' getc='0' name='TimeLastPacketReceived' noc='0' nocc='' rw='0' type='dateTime'></node>
			</node>
		</node>
	</node>
	<node name='Bridging' rw='0' type='node' cmd='deny_object'>
		<node acl='' getc='0' name='MaxBridgeEntries' noc='0' nocc='' rw='0' type='unsignedInt'>1</node>
		<node acl='' getc='0' name='BridgeNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'>1</node>
		<node name='Bridge' rw='0' type='node'>
			<node name='1' rw='0' type='node'>
				<node acl='' getc='0' name='PortNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'>0</node>
				<node il='10' name='Port' nin='1' rw='1' type='node'>
					<node name='template' rw='1' type='node'>
						<node acl='' getc='0' name='LowerLayers' noc='0' nocc='' rw='1' type='string'></node>
						<node acl='' getc='0' name='ManagementPort' noc='0' nocc='' rw='1' type='boolean'>false</node>
					</node>
				</node>
			</node>
		</node>
	</node>
	<node name='Routing' rw='0' type='node'>
		<node acl='' getc='0' name='RouterNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'>1</node>
		<node name='Router' rw='0' type='node'>
			<node name='1' rw='0' type='node'>
				<node acl='' getc='0' name='IPv4ForwardingNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'></node>
				<node il='32' name='IPv4Forwarding' nin='1' rw='1' type='node' cmd='routing_ipv4forwarding' act='restart_net'>
					<node name='template' rw='1' type='node'>
						<node acl='' getc='0' name='StaticRoute' noc='0' nocc='' rw='0' type='boolean' act='restart_net'>true</node>
						<node acl='' getc='0' name='DestIPAddress' noc='0' nocc='' rw='1' type='string' cmd='routing_fw_destip' act='restart_net'></node>
						<node acl='' getc='0' name='DestSubnetMask' noc='0' nocc='' rw='1' type='string' cmd='routing_fw_destnetmask' act='restart_net'></node>
						<node acl='' getc='0' name='GatewayIPAddress' noc='0' nocc='' rw='1' type='string' cmd='routing_fw_gatewayip' act='restart_net'></node>
						<node acl='' getc='0' name='Interface' noc='0' nocc='' rw='1' type='string' cmd='routing_fw_iface' act='restart_net'></node>
						<node acl='' getc='0' name='ForwardingMetric' noc='0' nocc='' rw='1' type='int' cmd='routing_fw_metric' act='restart_net'>-1</node>
					</node>
				</node>
			</node>
		</node>
	</node>
	<node name='RouterAdvertisement' rw='0' type='node'>
		<node acl='' getc='0' name='Enable' noc='0' nocc='' rw='1' type='boolean' cmd='nvram' arg='ipv6_radvd' act='restart_allnet'></node>
	</node>
	<node name='IPv6rd' rw='0' type='node'>
		<node acl='' getc='0' name='Enable' noc='0' nocc='' rw='1' type='boolean' cmd='ipv6rd_enable' act='restart_allnet'></node>
		<node il='2' name='InterfaceSetting' nin='1' rw='1' type='node'>
			<node name='template' rw='1' type='node'>
				<node acl='' getc='0' name='SPIPv6Prefix' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='ipv6_6rd_prefix' act='restart_allnet'></node>
				<node acl='' getc='0' name='IPv4MaskLength' noc='0' nocc='' rw='1' type='unsignedInt' cmd='nvram' arg='ipv6_6rd_ip4size' act='restart_allnet'></node>
			</node>
		</node>
	</node>
	<node name='Hosts' rw='0' type='node'>
		<node acl='' getc='0' name='HostNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'>1</node>
		<node il='32' name='Host' nin='1' rw='1' type='node'>
			<node name='template' rw='0' type='node'>
				<node acl='' getc='0' name='IPAddress' noc='0' nocc='' rw='0' type='string'></node>
				<node acl='' getc='0' name='HostName' noc='0' nocc='' rw='0' type='string'></node>
				<node acl='' getc='0' name='IPv6AddressNumberOfEntries' noc='0' nocc='' rw='0' type='string'>0</node>
				<node il='9' name='IPv6Address' nin='1' rw='1' type='node'>
					<node name='template' rw='0' type='node'>
						<node acl='' getc='0' name='IPAddress' noc='0' nocc='' rw='0' type='string'></node>
					</node>
				</node>	
			</node>
		</node>
	</node>
	<node name='NAT' rw='0' type='node'>
		<node acl='' getc='0' name='PortMappingNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'>0</node>
		<node il='32' name='PortMapping' nin='1' rw='1' type='node' cmd='nat_portmapping' act='restart_firewall'>
			<node name='template' rw='1' type='node'>
				<node acl='' getc='0' name='Description' noc='0' nocc='' rw='1' type='string' cmd='nat_pm_description' act='restart_firewall'></node>
				<node acl='' getc='0' name='ExternalPort' noc='0' nocc='' rw='1' type='unsignedInt' cmd='nat_pm_externalport' act='restart_firewall'></node>
				<node acl='' getc='0' name='ExternalPortEndRange' noc='0' nocc='' rw='1' type='unsignedInt' cmd='nat_pm_externalportendrange' act='restart_firewall'></node>
				<node acl='' getc='0' name='InternalPort' noc='0' nocc='' rw='1' type='unsignedInt' cmd='nat_pm_internalport' act='restart_firewall'></node>
				<node acl='' getc='0' name='Protocol' noc='0' nocc='' rw='1' type='string' cmd='nat_pm_protocol' act='restart_firewall'></node>
				<node acl='' getc='0' name='InternalClient' noc='0' nocc='' rw='1' type='string' cmd='nat_pm_internalclient' act='restart_firewall'></node>
				<node acl='' getc='0' name='RemoteHost' noc='0' nocc='' rw='1' type='string' cmd='nat_pm_remotehost' act='restart_firewall'></node>
			</node>
		</node>
	</node>
	<node name='DHCPv4' rw='0' type='node'>
		<node acl='' getc='0' name='ClientNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'>0</node>
		<node il='3' name='Client' nin='1' rw='1' type='node'>
			<node name='template' rw='1' type='node'>
				<node acl='' getc='0' name='Enable' noc='0' nocc='' rw='1' type='boolean' cmd='dhcpv4_client_enable' act='restart_wan_if'></node>
				<node acl='' gect='0' name='Status' noc='0' nocc='' rw='0' type='string' cmd='dhcpv4_client_status'></node>
				<node acl='' getc='0' name='Interface' noc='0' nocc='' rw='1' type='string' cmd='dhcpv4_client_interface'></node>
				<node acl='' gect='0' name='IPAddress' noc='0' nocc='' rw='0' type='string' cmd='dhcpv4_client_ipaddr'></node>
				<node acl='' gect='0' name='SubnetMask' noc='0' nocc='' rw='0' type='string' cmd='dhcpv4_client_subnetmask'></node>
				<node acl='' gect='0' name='IPRouters' noc='0' nocc='' rw='0' type='string' cmd='dhcpv4_client_iprouters'></node>
				<node acl='' gect='0' name='DNSServers' noc='0' nocc='' rw='0' type='string' cmd='dhcpv4_client_dnsservers'></node>
				<node acl='' gect='0' name='LeaseTimeRemaining' noc='0' nocc='' rw='0' type='string' cmd='dhcpv4_client_remaintime'></node>
			</node>
		</node>
		<node name='Server' rw='0' type='node'>
			<node name='Pool' rw='0' type='node'>
				<node name='1' rw='0' type='node'>
					<node acl='' getc='0' name='MinAddress' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='dhcp_start' act='restart_net_and_phy'></node>
					<node acl='' getc='0' name='MaxAddress' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='dhcp_end' act='restart_net_and_phy'></node>
					<node acl='' getc='0' name='SubnetMask' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='lan_netmask' act='restart_net_and_phy'></node>
					<node acl='' getc='0' name='DNSServers' noc='0' nocc='' rw='1' type='string' cmd='dhcpv4_server_dnsservers' act='restart_net_and_phy'></node>
					<node acl='' getc='0' name='DomainName' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='lan_domain' act='restart_net_and_phy'></node>
					<node acl='' getc='0' name='IPRouters' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='dhcp_gateway_x' act='restart_net_and_phy'></node>
					<node acl='' getc='0' name='LeaseTime' noc='0' nocc='' rw='1' type='int' cmd='nvram' arg='dhcp_lease' act='restart_net_and_phy'></node>
					<node acl='' getc='0' name='StaticAddressNumberOfEntries' noc='0' nocc='' rw='0'>0</node>
					<node il='32' name='StaticAddress' nin='1' rw='1' type='node' cmd='lanhost_dhcpstatic' act='restart_net_and_phy'>
						<node name='template' rw='1' type='node'>
							<node acl='' getc='0' name='Chaddr' noc='0' nocc='' rw='1' type='string' cmd='lanhost_mac' act='restart_net_and_phy'></node>
							<node acl='' getc='0' name='Yiaddr' noc='0' nocc='' rw='1' type='string' cmd='lanhost_ip' act='restart_net_and_phy'></node>
						</node>
					</node>
				</node>
			</node>
		</node>
	</node>
	<node name='Users' rw='0' type='node'>
		<node acl='' getc='0' name='UserNumberOfEntries' noc='0' nocc='' rw='0' type='unsignedInt'>1</node>
		<node name='User' rw='0' type='node'>
			<node name='1' rw='0' type='node'>
				<node acl='' getc='0' name='Username' noc='0' nocc='' rw='1' type='string' cmd='user_name' act='restart_user'></node>
				<node acl='' getc='1' name='Password' noc='0' nocc='' rw='1' type='string' cmd='user_passwd' act='restart_user'></node>
			</node>
		</node>
	</node>
	<node name='UPnP' rw='0' type='node'>
		<node name='Device' rw='0' type='node'>
			<node acl='' getc='0' name='Enable' noc='0' nocc='' rw='1' type='boolean' cmd='upnp_enable' act='restart_wan_if'></node>
		</node>
	</node>
	<node name='Firewall' rw='0' type='node'>
		<node acl='' getc='0' name='Enable' noc='0' nocc='' rw='1' type='boolean' cmd='nvram' arg='fw_enable_x' act='restart_firewall'></node>
	</node>
	<node name='X_ASUS_Specific' rw='0' type='node'>
		<node acl='' getc='0' name='X_ASUS_CPUUsage' noc='0' nocc='' rw='0' type='unsignedInt' cmd='cpuusage'></node>
		<node name='X_ASUS_MemoryStatus' rw='0' type='node'>
			<node acl='' getc='0' name='X_ASUS_Total' noc='0' nocc='' rw='0' type='unsignedInt' cmd='totalmemory'></node>
			<node acl='' getc='0' name='X_ASUS_Free' noc='0' nocc='' rw='0' type='unsignedInt' cmd='freememory'></node>
		</node>
		<node name='X_ASUS_Wan' rw='0' type='node'>
			<node name='X_ASUS_Internet' rw='0' type='node'>
				<node name='X_ASUS_DslType' rw='0' type='node'>
					<node acl='' getc='0' name='X_ASUS_TransMode' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='dslx_transmode' act='reboot'></node>
				</node>
				<node name='X_ASUS_LanType' rw='0' type='node'>
					<node acl='' getc='0' name='X_ASUS_Wan_ConnectionType' noc='0' nocc='' rw='1' type='string' cmd='wan_connectiontype' act='restart_wan_if'></node>
					<node acl='' getc='0' name='X_ASUS_Wan_DhcpEnable' noc='0' nocc='' rw='1' type='boolean' cmd='wan_dhcpenable' act='restart_wan_if'></node>
					<node acl='' getc='0' name='X_ASUS_Wan_Ip' noc='0' nocc='' rw='1' type='string' cmd='wan_ip' act='restart_wan_if'></node>
					<node acl='' getc='0' name='X_ASUS_Wan_Netmask' noc='0' nocc='' rw='1' type='string' cmd='wan_netmask' act='restart_wan_if'></node>
					<node acl='' getc='0' name='X_ASUS_Wan_Gateway' noc='0' nocc='' rw='1' type='string' cmd='wan_gateway' act='restart_wan_if'></node>
					<node acl='' getc='0' name='X_ASUS_Wan_DnsEnable' noc='0' nocc='' rw='1' type='boolean' cmd='wan_dnsenable' act='restart_wan_if'></node>
					<node acl='' getc='0' name='X_ASUS_Wan_Dns1' noc='0' nocc='' rw='1' type='string' cmd='wan_dns1' act='restart_wan_if'></node>
					<node acl='' getc='0' name='X_ASUS_Wan_Dns2' noc='0' nocc='' rw='1' type='string' cmd='wan_dns2' act='restart_wan_if'></node>
					<node acl='' getc='0' name='X_ASUS_Wan_Username' noc='0' nocc='' rw='1' type='string' cmd='wan_username' act='restart_wan_if'></node>
					<node acl='' getc='0' name='X_ASUS_Wan_Password' noc='0' nocc='' rw='1' type='string' cmd='wan_password' act='restart_wan_if'></node>
					<node acl='' getc='0' name='X_ASUS_Wan_VpnServer' noc='0' nocc='' rw='1' type='string' cmd='wan_vpnserver' act='restart_wan_if'></node>
					<node acl='' getc='0' name='X_ASUS_Wan_Hostname' noc='0' nocc='' rw='1' type='string' cmd='wan_hostname' act='restart_wan_if'></node>
				</node>
				<node name='X_ASUS_UsbType' rw='0' type='node'>
					<node acl='' getc='0' name='X_ASUS_UsbModem_Enable' noc='0' nocc='' rw='1' type='boolean' cmd='nvram' arg='modem_enable' act='reboot'></node>
					<node acl='' getc='0' name='X_ASUS_UsbModem_Country' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='modem_country' act='reboot'></node>
					<node acl='' getc='0' name='X_ASUS_UsbModem_Isp' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='modem_isp' act='reboot'></node>
					<node acl='' getc='0' name='X_ASUS_UsbModem_Mode' noc='0' nocc='' rw='1' type='unsignedInt' cmd='nvram' arg='modem_mode' act='reboot'></node>
					<node acl='' getc='0' name='X_ASUS_UsbModem_Apn' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='modem_apn' act='reboot'></node>
					<node acl='' getc='0' name='X_ASUS_UsbModem_DialNumber' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='modem_dialnum' act='reboot'></node>
					<node acl='' getc='0' name='X_ASUS_UsbModem_PinCode' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='modem_pincode' act='reboot'></node>
					<node acl='' getc='0' name='X_ASUS_UsbModem_UserName' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='modem_user' act='reboot'></node>
					<node acl='' getc='0' name='X_ASUS_UsbModem_Password' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='modem_pass' act='reboot'></node>
					<node acl='' getc='0' name='X_ASUS_UsbModem_Type' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='Dev3G' act='reboot'></node>
				</node>
			</node>
			<node name='X_ASUS_DualWan' rw='0' type='node'>
				<node acl='' getc='0' name='X_ASUS_PrimaryWan' noc='0' nocc='' rw='1' type='string' cmd='primarywan' act='reboot'></node>
				<node acl='' getc='0' name='X_ASUS_SecondaryWan' noc='0' nocc='' rw='1' type='string' cmd='secondarywan' act='reboot'></node>
				<node acl='' getc='0' name='X_ASUS_LanPort' noc='0' nocc='' rw='1' type='unsignedInt' cmd='nvram' arg='wans_lanport' act='reboot'></node>
				<node acl='' getc='0' name='X_ASUS_DualWanMode' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='wans_mode' act='reboot'></node>
				<node acl='' getc='0' name='X_ASUS_LoadBalance_Ratio' noc='0' nocc='' rw='1' type='string' cmd='nvram' arg='wans_lb_ratio' act='reboot'></node>
				<node acl='' getc='0' name='X_ASUS_Wandog_Interval' noc='0' nocc='' rw='1' type='unsignedInt' cmd='nvram' arg='wandog_interval' act='reboot'></node>
				<node acl='' getc='0' name='X_ASUS_Wandog_Delay' noc='0' nocc='' rw='1' type='unsignedInt' cmd='nvram' arg='wandog_delay' act='reboot'></node>
				<node acl='' getc='0' name='X_ASUS_Wandog_MaxFail' noc='0' nocc='' rw='1' type='unsignedInt' cmd='nvram' arg='wandog_maxfail' act='reboot'></node>
				<node acl='' getc='0' name='X_ASUS_Wandog_Failback_Count' noc='0' nocc='' rw='1' type='unsignedInt' cmd='nvram' arg='wandog_fb_count' act='reboot'></node>
				<node acl='' getc='0' name='X_ASUS_Wandog_Enable' noc='0' nocc='' rw='1' type='boolean' cmd='nvram' arg='wandog_enable' act='reboot'></node>
			</node>
		</node>
	</node>
	<node acl='' getc='0' name='X_ASUS_CompleteXML' noc='0' nocc='' rw='0' type='boolean'>true</node>
</node>
