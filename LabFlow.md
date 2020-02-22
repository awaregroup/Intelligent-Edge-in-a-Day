	- Install stuff on PC and device OS (15 mins)
		○ Download command line Flashing 
		○ Download Ubuntu Server
		○ SSH install
		○ Flash the device
		○ Join to Wireless
		○ Test sensors 
		
	- IoT Central / Plug and Play
		○ Deploy Custom Template - branded 
		○ IoT Plug and Play - 
		○ Device Template 
		○ import the DCM Just sensors
		○ They build the device views 
		○ Device Code
			§ Export DCM
			§ Generate device Code
			§ Compare to one with sensors included
			§ Compile code on the Pi over Remote SSH
		○ Add Device
			§ Device adds itself to IoT Central App
			§ Assigns to right correct template
		○ IoT central views to see data
			§ Rules
		○ Stop the on device app   
	
	- IoT Edge
		○ In IoT Central - 
			§ Create IoT Edge Deployment template
				□ DCM and Manifest
				□ IoT Edge Gateway - with downstream device
				□ Stream Analytics 
			§ Create device - DPS connection details 
		○ Install IoT Edge + modify config.yaml with DPS details
			§ Pulls down the manifest 
			§ Ready to accept downstream
		○ 
		○ Restart application with gateway option
			§ Sends data to IoT Central
			○ Stream Analytics (Offline Edge)
				□ Edge Action Values trigger output color on screen as feedback loop

	- Custom Vision
		○ Creating and using the model
			§ Create model in Custom Vision
			§ Export container zip, and upload to blob 
		○ Deploying the model 
			○ Update new IoT Edge manifest to deploy and CV Containers  
			§ Version the template
			○ Add Custom Vision Interface 
			○ Add a new view
			○ Publish template 
			○ Migrate the device
			○ Check that new CV container is deployed
				□ Restart IoT Edge (Remote SSH)
				□ IoT list to see container installed
				□ IoT Central to see container running 
		○ Using the model
			§ Device Twin with the blog storage URL
See the results in the new view
