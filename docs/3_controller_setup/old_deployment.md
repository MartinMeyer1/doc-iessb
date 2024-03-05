# Deployment

This guides you through the deployment of the CoEMS software stack on a new WAGO CC100 controller.

<div align=center>
<img width="400" src="./_img/3_cc100/wagocc100.png"/>
</div>

## Prepare your Computer

You need a recent **Web Browser** and an **SSH client** installed on your PC. If you use anything except Windows, you are lucky, you already have everything needed. If you are a Windows user, you need to install an SSH client; we recommend installing [PuTTY](https://www.putty.org).

## Prepare CC100 controller

### Update Firmware

Make sure you have the firmware version **04.03.03(25)** installed on your CC100 controller. You can download the latest firmware from the [WAGO website](https://downloadcenter.wago.com/software/details/ljnx3u8jf07z82f84ji).

### Configure Networking

Your controller needs to be connected to the internet. We refer to the documentation of the WAGO CC100 controller to configure the network.

### Disable Firewall

Currently, Docker network connectivity does not work correctly when the firewall is enabled on the CC100. As the controller is running behind a NAT anyway, it is completely safe to disable the firewall completely:

<div align=center>
<img width="800" src="./_img/3_cc100/cc100-firewall.png"/>
</div>

### Enable IP forwarding

You need to enable IPv4 packet forwarding on the system so Docker containers can communicate with devices outside the CC100 controller:

<div align=center>
<img width="800" src="./_img/3_cc100/cc-100-routing.png"/>
</div>

### Enable Docker

Docker is already installed on firmware 25 and later, so you just need to ensure that Docker is enabled:

<div align=center>
<img width="800" src="./_img/3_cc100/cc100-docker-service.png"/>
</div>

### Deploy the software

You can deploy the software on the CC100. Open an SSH connection to the CC100 and run the following command:

```bash
bash -c "$(curl https://wago:<PASSWORD>@api.≤BASE URL>}/v1/endpoint/<ENDPOINT ID>/deploy-cc100.sh)"
