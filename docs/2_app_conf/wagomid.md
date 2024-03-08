# WAGO MID Counter configuration



## Configuration with counter's button and screen

<div align=center>
<img width="1000" src="./_img/2_app_conf/_MID/MiddleButton.png"/>
</div>

<div align=center>
<img width="1000" src="./_img/2_app_conf/_MID/ConfigScreen.png"/>
</div>

## Modbus Configuration

Communication between MID meters and the CC100 is via [Modbus RTU](6_technical/modbus).

| Modbus Specifications      | Configuration |
| ----------- | ----------- |
| Baud rate      | 9600 |
| Parity   | None  |
| Adress   | Main 2U1 -> Modbus ID = 1  <br><br> PV 2U2 -> Modbus ID = 2  <br><br> HP 2U3 -> Modbus ID = 3  <br><br> EV 2U4 -> Modbus ID = 4 |

<div align=center>
<img width="900" src="./_img/2_app_conf/_MID/Modbus_ID.png"/>
</div>

## CT Ratio
!> CT Ratio Scaling with Current transformer 855-3001/0060-0003 -> 60/1

<div align=center>
<img width="1000" src="./_img/2_app_conf/_MID/CT_Ratio.png"/>
</div>

