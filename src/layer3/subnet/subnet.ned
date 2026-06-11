package subnet;

import inet.node.inet.StandardHost;
import inet.node.inet.Router;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.EthernetSwitch;
import inet.node.ethernet.Eth100M;
import inet.visualizer.common.IntegratedVisualizer;

network subnet
{
    submodules:
        visualizer: IntegratedVisualizer {
    @display("p=50,50");
}
        configurator: Ipv4NetworkConfigurator {
            @display("p=450,50");
        }

        hostA: StandardHost { @display("p=100,120"); }
        hostB: StandardHost { @display("p=100,420"); }

        r1: Router { @display("p=300,120"); }
        r2: Router { @display("p=600,120"); }

        hostD: StandardHost { @display("p=800,120"); }
        hostC: StandardHost { @display("p=450,420"); }

        sw1: EthernetSwitch { @display("p=150,280"); }
        sw2: EthernetSwitch { @display("p=450,280"); }
        sw3: EthernetSwitch { @display("p=750,280"); }

    connections allowunconnected:

        hostA.ethg++ <--> Eth100M <--> sw1.ethg++;
        hostB.ethg++ <--> Eth100M <--> sw1.ethg++;
        r1.ethg++    <--> Eth100M <--> sw1.ethg++;

        r1.ethg++    <--> Eth100M <--> sw2.ethg++;
        r2.ethg++    <--> Eth100M <--> sw2.ethg++;
        hostC.ethg++ <--> Eth100M <--> sw2.ethg++;

        r2.ethg++    <--> Eth100M <--> sw3.ethg++;
        hostD.ethg++ <--> Eth100M <--> sw3.ethg++;
}