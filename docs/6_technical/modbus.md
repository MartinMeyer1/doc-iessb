# Modbus

## Introduction

Modbus is a widely used communication protocol in industrial automation, facilitating data exchange between electronic devices. It was developed in the late 1970s and has become a standard for connecting and controlling equipment in various industries.

<div align=center>
<img width="18%" src="./_img/6_technical/modbus.jpg"/>
</div>

## Modbus TCP

Modbus TCP (Transmission Control Protocol) is an extension of the Modbus protocol that utilizes the TCP/IP network for communication. It allows devices to communicate over Ethernet, enabling fast and efficient data exchange between devices in a network. Modbus TCP is commonly used in industrial applications where Ethernet connectivity is prevalent, providing a reliable and scalable solution for real-time data transmission.

### Parameters

1. **Slave IP Address:** The master must know the IP address of the slave device it wishes to communicate with.

2. **TCP Port:** Modbus TCP typically uses port 502 for communication. The master needs to know this port to establish a connection with the slave device.

3. **Unit ID:** In the context of Modbus TCP, the remote unit is often identified by a number. While the unit address is technically specified for Modbus RTU, some users also assign an identifier to a remote unit in the context of Modbus TCP.

!> **Ensure that all the IP appliances, including modbus TCP, have a static IP.**

## Modbus RTU

Modbus RTU (Remote Terminal Unit) is another variant of the Modbus protocol, specifically designed for serial communication, such as RS-232 or RS-485. Unlike Modbus TCP, which uses Ethernet, Modbus RTU is used in applications where a direct wired connection is preferred. It is a robust and efficient protocol for communicating with programmable logic controllers (PLCs), sensors, and other industrial devices.

### Parameters

1. **Unit ID:** Each slave (device) on the Modbus RTU network is identified by a unique address, usually a number between 1 and 247.

2. **Baud Rate:** The data transmission speed between the master and slave must be configured to ensure synchronization. The speed is measured in bauds (bits per second).

3. **Data Bits:** It specifies the number of data bits in each communication frame. Most Modbus implementations use 8 data bits.

4. **Parity Bit:** This optional parameter is used for error checking during transmission. It can be even, odd, or none (no parity).

5. **Stop Bits:** This indicates the number of stop bits in each communication frame. Most Modbus implementations use 1 stop bit.

!> **Parameters 2 to 5 are set in the HAL (Hardware Abstraction Layer), unit ID is set in the driver parameters.**


Both Modbus TCP and RTU follow a master-slave architecture, where a master device initiates communication with one or more slave devices. This allows for the exchange of information for monitoring and control purposes. The protocol supports various data types and functions, making it versatile for different applications in industrial settings.
