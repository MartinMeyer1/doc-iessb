# Site Configuration

The section describes how to use the site configurator. A concrete configuration example of a Wago Energy Meter is available [here.](4_conf/conf?id=wago-energy-meter-example)

## Concepts

#### HAL
**HAL** stands for "Hardware Abstraction Layer". It needs to be configured only when using serial protocols like modbus rtu or dsmr-p1.

#### Process
A set of appliances working together is a process. A good example of a process would be "heating", which would include an appliance for measuring heat pump consumption, as well as an appliance for controlling the heat pump via SG-Ready.

#### Appliance
An appliance is a real world device with which the controller can read or write datapoints. The controller can communicate with the appliances via various protocols, as Modbus rtu/tcp, Digital and Analog IOs, HTTP, ... The controller must be configured correctly to access the appliances.

## Interface overview
<div align=center>
<img width="600" src="./_img/4_conf/overview.png"/>
</div>

The numbers in red are the button to:
1. Enter buiding metadata.
2. Enter HAL configuration.
3. Add a process.
4. Add an appliance in the process.

## How to configure

#### Building Metadata
Metadata can be optionally set in the **Building** tab. *Heated Surface* is in **m2** and *Max Amps* is in **A**.
<div align=center>
<img width="400" src="./_img/4_conf/building-metadata.png"/>
</div>

You can add additional metadata by giving a name and the value you want, and clicking **Add**:
<div align=center>
<img width="400" src="./_img/4_conf/building-metadata-example.png"/>
</div>

#### Live IOs

!> **This feature is not yet implemented.**

When clicking on the **Appliances** tab, a live view of the IOs will show up:
<div align=center>
<img width="600" src="./_img/4_conf/live-io.png"/>
</div>
This component is interactive. Input can be read, and outputs can be set in order to test the hardware installation if needed.

#### HAL
Click on the **Configure HAL** button. This form will show up:
<div align=center>
<img width="600" src="./_img/4_conf/hal.png"/>
</div>

2 different serial protocol can be choosed:
- **P1**: choose P1 if you want to connect a dsmr-p1 smartmeter. There's no need to enter other HAL parameters when using P1.
- **Modbus**: choose modbus if you want to add a modbus device. Other modbus parameters needs to be configured as well.

!> Please ensure that all the modbus rtu slaves that you want to use have the same configuration to avoid compatibility issues.

#### Process
Click on the **Add Process** button:
<div align=center>
<img width="600" src="./_img/4_conf/process.png"/>
</div>

Enter a process name, choose a process category, and a sub-category. A space reference and additional information can be set optionally.

#### Appliances
Click on the **Add appliance** button:
<div align=center>
<img width="600" src="./_img/4_conf/choose-appliance.png"/>
</div>

Choose an appliance in the list, and press **Next**.

<div align=center>
<img width="600" src="./_img/4_conf/conf-appliance.png"/>
</div>

Enter an appliance name, and fill the configuration fields.


This view will appear during deployment process (it can take up to 1-2 minute):
<div align=center>
<img width="1000" src="./_img/4_conf/deploy.png"/>
</div>

#### Verification

Once the driver is deployed, live values can be checked to ensure that it is correctly configured:

<div align=center>
<img width="1000" src="./_img/4_conf/deployed.png"/>
</div>

<br>

<div align=center>
<img width="1000" src="./_img/4_conf/deployed-values.png"/>
</div>


When configuration is finished, click **validate** and configure next appliances.

#### Live values
After deploying, you can still check the live values by clicking on the appliance you want, and selecting an interface:
<div align=center>
<img width="800" src="./_img/4_conf/live-values.png"/>
</div>

## Wago Energy Meter example

Here is a Wago Energy Meter configuration example:

### Hal configuration

The standard HAL configuration:
<div align=center>
<img width="600" src="./_img/4_conf/hal-example.png"/>
</div>

### Process creation
Create a meter called **Main** with **Grid Connection** category:
<div align=center>
<img width="600" src="./_img/4_conf/process-example.png"/>
</div>

### Wago Energy Meter selection

Select the **Wago MID Meter**:
<div align=center>
<img width="600" src="./_img/4_conf/choose-appliance-example.png"/>
</div>

### Wago Energy Meter configuration

- Set the modbus port number to 0.
- Set the modbus slaveID of the meter.
- Set *Inverse Current Direction* to *true* if the TI are mounted reversed.
<div align=center>
<img width="600" src="./_img/4_conf/conf-appliance-example.png"/>
</div>

## Standard Modbus Configuration

Communication between MID meters and the CC100 is via [Modbus RTU](6_technical/modbus).

Main -> Main introduction

PV -> Photovoltaic inverter

HP -> Heat pump

EV -> Vehicle charging station 

| Modbus Specifications      | Configuration |
| ----------- | ----------- |
| Serial Protocol   | MODBUS  |
| Modbus mode   | RTU  |
| Parity   | None  |
| Baud rate      | 9600 |
| Modbus data bits   | 8  |
| Modbus stop bits   | 1  |
| Modbus Timeout   | 2000  |
| Address   | Main 2U1 -> Modbus ID = 1  <br><br> PV 2U2 -> Modbus ID = 2  <br><br> HP 2U3 -> Modbus ID = 3  <br><br> EV 2U4 -> Modbus ID = 4 |
