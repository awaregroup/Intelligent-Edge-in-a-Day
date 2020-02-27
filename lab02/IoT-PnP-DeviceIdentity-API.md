# Device Identity : RESTful API

In this section, we will create device identify in IoT Central using RESTful API with Postman to show how to use IoT Central APIs.

> [!IMPORTANT]  
> **On your development machine**  
> Make sure you configured Postman with collection and environment settings.  If you do not have `IoT Central Preview` collection and `IoT Central API` environment, go back to [Setting up Postman](IoT-PnP-Prep-Posman.md)

## Create Device Identity

Connecting a device using a device identity involves 3 steps :

1. Create a device template
1. Create a device identity
1. Retrieve Sas token

In [manual operation section](IoT-PnP-DeviceIdentity-Manual.md), you performed above 3 steps.

## Clean up IoT Central Resources

If you have a device identity and a device template in your IoT Central please delete them.

## Send RESTful API

`Create Device Identity` Postman collection runs the first 2 operations.

- Creates a device template `Codegen HOL API Template`
- Creates a device identify `Codegen HOL API Device`

Run the APIs and verify in IoT Central the template and the device are generated.

![postman-09](media/postman-09.png)

## Retrieve device Sas Key

We have a new device identity.  Retrieve information for DPS so we can connect.

1. From `IoT Cental Preview` collection, click `4 : Get Device Credentials`
1. Send the request
1. Verify Rest API returns success (200 OK)
1. The API returns `Scope ID` and `Sas Keys`

![postman-07](media/postman-07.png)

## Run the code stub app

Use these device connection information with the device app to connect to IoT Central

> [!IMPORTANT]  
> **In VSCode with Remote Connection to RP4**

```bash
./codegen1 codegenapidemo_device 0ne000C9014 pfpk7H810GWk96oat8uEmQ2niiCbD4Ns988M8BOan***
```

## Add a View to IoT Central

The template does not provide views (graphs etc) by default.  Let's add a new view to the template.
IoT Central can generate `Default view` based on DCM.  You can customize views based on your needs as well.

1. Navigate to `Device templates` view
1. Click on `Codegen HOL API Template`
1. Select `View` then click `Generate default views`  

    ![iotc-28](media/iotc-28.png)

1. Click on `Generate default dashboard view(s)`

    ![iotc-29](media/iotc-29.png)

1. Click on `Publish` for the change to take effect  

    ![iotc-30](media/iotc-30.png)

1. Confirm there are `About` and `Overview` tabs  

    ![iotc-31](media/iotc-31.png)

## Complete

Within a few minutes, you should see :

- Telemetry (but all zeros)
- Property values `abc`
- Status is now `Provisioned`
- You can send a command from Cloud  

![iotc-31](media/iotc-31-1.png)

Press `CTRL +  C` to exit app on RP4

The Postman collection contains each API.  If you are interested in step by step instruction, please refer [this document](IoT-PnP-DeviceIdentity-API-StepbyStep.md)

[Next Section](IoT-PnP-DeviceFirstProvisioning.md)

[Go back to top page](readme.md)

## Reference

- [Create Device Identity with RESTful API Step by Step](IoT-PnP-DeviceIdentity-API-StepbyStep.md) 
