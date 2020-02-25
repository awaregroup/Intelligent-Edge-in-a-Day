# Device Identity

The IoT solution administrators need to ensure only known and trusted devices are allowed to connect to their solutions.
There are multiple techniques available for device attestation.

At the high level, device and cloud must make a contract, typically using keys (or token). 

Shared Access Signature (SAS) provides secure delegated access to IoT Hub.  SAS key is security tokens to grant time-bounded access.
In this lab, we generated code that requests access to IoT Central using SAS Token via Device Provisioning Service.

There are two approaches to create device identity and attest the identity.

## Cloud First  

With Cloud First approach, IoT solution owner can manage and control the known list of devices, or "White listed" devices.

DPS uses 3 pieces of information :

- Scope ID  
    To identify specific instance of DPS service
- Device ID
    The white-listed device id
- Symmetric Key for the device
    A.k.a. Device key.  Device key is unique to each device id.

IoT solution owner needs to :

- Create device identity in Cloud
- Provide Signature to each device
- Each device requests access using the key

Device Builder needs to :

- Embed above 3 information into the device code
- Ensure each device app has a way to retrieve unique device id and symmetric key

or

- Ship devices without embedding these data.  As a result, users must configure each devices with unique device id and symmetric key  
    Typically mass production devices are shipped this way

End users needs to :

- Receive above 3 information from IoT solution administrator
- Configure each device
- Online the device

## Device First

With the device first approach, IoT solution owner can use the same key for multiple devices and devices can self-register by themselves.
This approach may work better if the IoT solution owner has control over device and/or device app (or device firmware).  With this approach, the IoT solution owner needs to manage single device app (or device firmware image) for each solution.

DPS uses 2 pieces of information :

- Scope ID  
    To identify specific instance of DPS service
- Symmetric Key for the solution
    A.k.a. Group key.  Group key is common key for the solution.

IoT solution owner needs to :

- Create and manage group Sas key for each IoT solution

Device builder needs to :

- Embed Scope ID and Group key to device app

End users just needs to turn on the device!

## Create Device Identity

Let's start with Cloud First approach.

[Next Section](IoT-PnP-DeviceIdentity-Manual.md)

[Go back to top page](readme.md)

## Reference

- [Control Access to IoT Hub](https://docs.microsoft.com/en-us/azure/iot-hub/iot-hub-devguide-security#security-tokens)
- [Symmetric Key](https://en.wikipedia.org/wiki/Symmetric-key_algorithm)