# SG Ready


## Introduction
SG-Ready (Smart Grid Ready) is a certification label introduced in 2012 by the German heat pump association (Bundesverband Wärmepumpe, BWP) in collaboration with heat pump manufacturers. This label certifies that a heat pump or related management technology can respond to specific external control signals, aiming to promote the external control of heat pumps for grid support and cost-effectiveness.

<div align=center>
<img width="10%" src="./img/hp/sgready.jpg"/>
</div>


## Operating Modes
SG-Ready supports four operating modes for heat pumps, communicated through binary switches:

1. **Blocked operation (1:0):** Heat pump operation is blocked for a maximum of two hours per day.
2. **Normal operation (0:0):** Energy-efficient normal mode.
3. **Encouraged operation (0:1):** Heat pump operation is encouraged to increase electricity consumption for heating and hot water.
4. **Ordered operation (1:1):** Heat pump is ordered to run, with two adjustable variants supporting different tariff and utilization models.

## In practice
SG-Ready interfaces are generally controlled using 2 relays. 

>If a 2 relays SG-Ready interface is not availabe, heatpumps can always be controlled with the 1 relay (enable/disable) interface.