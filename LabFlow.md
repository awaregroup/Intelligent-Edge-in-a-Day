# Lab Steps

These are the rough steps for all labs

---

## Lab 1: Dev PC and IoT Device Setup

Dev PC Setup

- Connect to Lab WiFi
- Install Visual Studio Code

IoT Device Setup

- Download command line Flashing
- Download Ubuntu Server
- SSH install
- Flash the device
- Join to Wireless
- Test sensors

---

## Lab 2: IoT Central / Plug and Play

Deploy Custom IoT Central App Template

- Install using link from the App Gallary Page
- IoT Plug and Play
- Edit Device Capability Model Template
- Import the DCM into IoT Central
- Just sensors

Device Code

- Export DCM
- Generate device Code
- Compare to one with sensors included
- Compile code on the Pi over Remote SSH

Add Device

- Device adds itself to IoT Central
- Assigns to correct template

View Data

- Create IoT Central views
- Add location to the dashboard
- IoT Cental Rules & Alerts
- Stop the on device app

---

## Lab 3: IoT Edge and Stream Analytics

Create IoT Edge in IoT Central

- Create IoT Edge Deployment template
- DCM and Manifest
- IoT Edge Gateway - with downstream device
- Configure for Stream Analytics
- Create device - DPS connection details

Install IoT Edge + modify config.yaml with DPS details

- Pulls down the manifest
- Ready to accept downstream device data
- Restart sensor application with gateway option
- Check routes Sends data to IoT Central

Stream Analytics Offline Edge

- Continues to collect data when disconnected
- Can take Edge Action Values trigger output color on screen as feedback loop

---

## Lab 4: Custom Vision at the Edge

Creating and exporting the model

- Create model in Custom Vision
- Export container zip
- Upload to blob

Deploying the model

- Update new IoT Edge manifest to deploy CV app container  
- Version the device template
- Add AI Model interface
- Add AI Tag interface
- Add a new view
- Publish template
- Migrate the device
- Check that new CV container is deployed

Using the model

- Device Twin with the blog storage URL
- See the results in the new view
