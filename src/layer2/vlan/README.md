## Overview

This project demonstrates how **MAC address learning** and the **Address Resolution Protocol (ARP)** operate in IP-based Ethernet networks.

The simulation illustrates:

- Dynamic MAC address learning in Ethernet switches
- Forwarding and flooding behavior of Layer 2 switches
- ARP request and ARP reply exchanges
- Mapping of IP addresses to MAC addresses
- Communication establishment between hosts in a local network
- Interaction between Layer 2 switching and Layer 3 addressing

The scenario is intended for educational purposes and can be used to study the fundamental mechanisms that enable Ethernet-based communication in IP networks.

## Requirements

- OMNeT++
- INET Framework
- A compatible build of the simulation project

## Running the Simulation

Start the simulation with the following command:

```bash
opp_run -u Qtenv \
  -n $HOME/workspace/netsim/inet/src:$HOME/workspace/netsim/src/layer2/ \
  -l $HOME/workspace/netsim/inet/out/clang-release/src/libINET.dylib \
  -c BetweenHosts \
  -f vlan.ini