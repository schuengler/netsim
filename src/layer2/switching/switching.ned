package switching;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.StandardHost;
import inet.node.ethernet.EthernetSwitch;
import ned.DatarateChannel;

network switching
{
    types:
        channel C extends DatarateChannel
        {
            delay = 0.1us;
            datarate = 100Mbps;
        }
    submodules:
        configurator: Ipv4NetworkConfigurator;

        hostA: StandardHost {
            @display("p=250,100");
            eth.address = "001a2b3c4d5e";
        }
        hostB: StandardHost {
            @display("p=100,200");
            eth.address = "147dda112233";
        }
        hostC: StandardHost {
            @display("p=250,300");
            eth.address = "3c5282aabbcc";
        }
        hostD: StandardHost {
            @display("p=400,300");
            eth.address = "a45d60102030";
        }
        switch1: EthernetSwitch {
            @display("p=250,200");
            gates:
                ethg[4];
        }
        switch2: EthernetSwitch {
            @display("p=400,200");
            gates:
                ethg[2];
        }
    connections:
        switch1.ethg[0] <--> C <--> hostA.ethg++;
        switch1.ethg[1] <--> C <--> hostB.ethg++;
        switch1.ethg[2] <--> C <--> hostC.ethg++;
        switch1.ethg[3] <--> C <--> switch2.ethg[0];
        switch2.ethg[1] <--> C <--> hostD.ethg++;
}
