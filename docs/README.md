# IESSB installation and commissioning documentation

Welcome to the IESSB installation and commissioning documentation!

The pdf generated version of this documentation is available <a href="./pdf/DOCUMENTATION.pdf" download="Wago_IESSB_documenation.pdf">here<a>.
## Project overview

The IESSB project (Industrialisation of energy services for small buildings) will develop an energy management ecosystem promoting the large-scale deployment 
of efficiency and flexibility services in small buildings. The ecosystem enables a low-cost straightforward deployment of multiple services and novel business 
models.

The project consists of three main parts:

- **Cloud**: The cloud part is the central part of the ecosystem. It is responsible for the management of the devices and the services. It also provides all the
  components needed for the deployment of the services.

- **Endpoint**: The endpoint part is the part that is installed in the building. It is responsible for the communication with the devices and the cloud. It
  also provides the interface for the services and the possibility to install local applications.

- **Applications**: The applications are the services that are deployed in the ecosystem, either in the cloud, local on the endpoint or on both. They provide
  services using the device abstractions provided by the endpoint/cloud.
<br>
<br>
<div align=center>
<img width="800" src="./_img/intro/project-overview.drawio.svg"/>
</div>
<br>
<br>

## Documentation structure
The documentation is organized in 5 main steps:
<br>
<br>
<br>
<div align=center>
<img width="900" src="./_img/intro/steps-overview.drawio.svg"/>
</div>
<br>
<br>
<br>


| [Installation](1_installation/installation) | [Appliances configuration](2_app_conf/app_conf) | [Controller Setup](3_controller_setup/controller_setup) | [Site Configuration](4_conf/conf) | [Validation](5_validation/validation) |
| ----- | ----- | ----- | ----- | ----- |
| - Cabling  <br> - Hardware installation <br> - Gather appliances information | - How to configure various appliances<br>- How to set slave id<br>- ...                           | - How to configure the controller's firmware<br>- How to commission the controller                  | - How to configure the endpoint description<br>- How to commission and configure applications                     | - Validate appliances configuration<br>- Check the values are coherent          |

<div align=center>
<img width="800" src="./_img/intro/Topology.PNG"/>
</div>