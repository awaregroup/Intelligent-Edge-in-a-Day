#Copyright (c) Microsoft. All rights reserved.
#Licensed under the MIT license. See LICENSE file in the project root for full license information.

#this is CMakeLists.txt for codegen1

#Compile As C99
if (CMAKE_VERSION VERSION_LESS "3.1")
    if (CMAKE_C_COMPILER_ID STREQUAL "GNU" OR CMAKE_C_COMPILER_ID STREQUAL "Clang")
        set (CMAKE_C_FLAGS "--std=c99 /DWIN32 /D_WINDOWS /W3")
        if (NOT IN_OPENWRT)
            set (CMAKE_CXX_FLAGS "--std=c++11 /DWIN32 /D_WINDOWS /W3 /GR /EHsc")
        endif()
    endif()
else()
    set (CMAKE_C_STANDARD 99)
    set (CMAKE_CXX_STANDARD 11)
endif()

cmake_minimum_required(VERSION 2.8)

set(codegen1_h_files
    ./utilities/deviceinfo_interface.h
    ./utilities/firmware_interface.h
    ./utilities/acc_interface.h
    ./utilities/mag_interface.h
    ./utilities/gyro_interface.h
    ./utilities/temp_interface.h
    ./utilities/press_interface.h
    ./utilities/hum_interface.h
    ./utilities/mic_interface.h
    ./utilities/digitaltwin_client_helper.h
    ./utilities/digitaltwin_serializer.h
    ./azure1_impl.h
    ./pnp_device.h
)

set(codegen1_c_files
    ./utilities/deviceinfo_interface.c
    ./utilities/firmware_interface.c
    ./utilities/acc_interface.c
    ./utilities/mag_interface.c
    ./utilities/gyro_interface.c
    ./utilities/temp_interface.c
    ./utilities/press_interface.c
    ./utilities/hum_interface.c
    ./utilities/mic_interface.c
    ./utilities/digitaltwin_client_helper.c
    ./utilities/digitaltwin_serializer.c
    ./azure1_impl.c
    ./pnp_device.c
    ./main.c
)

# Add source code from azure-iot-sdk-c as a subdirectory
add_subdirectory(azure-iot-sdk-c)

include_directories(.)
include_directories(${azure_iot_sdks_SOURCE_DIR}/deps/parson ${MQTT_INC_FOLDER} ${SHARED_UTIL_INC_FOLDER} ${UMOCK_C_INC_FOLDER} ${MACRO_UTILS_INC_FOLDER} ${IOTHUB_CLIENT_INC_FOLDER} ${DIGITALTWIN_CLIENT_INC_FOLDER} ${DEV_AUTH_MODULES_CLIENT_INC_FOLDER})

add_executable(codegen1 ${codegen1_c_files} ${codegen1_h_files})

target_link_libraries(codegen1
parson
iothub_client_mqtt_transport
iothub_client
digitaltwin_client
prov_device_ll_client
prov_mqtt_transport
prov_auth_client
aziotsharedutil
umqtt
)