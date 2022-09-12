# Qemu

## Network

1. Create file mynet.xml 

```xml

<network>
  <name>mynet</name>
  <forward mode='nat'>
    <nat>
      <port start='1024' end='65535'/>
    </nat>
  </forward>
  <bridge name='virbr2' stp='on' delay='0'/>
  <ip address='192.168.30.1' netmask='255.255.255.0'>
    <dhcp>
      <range start='192.168.30.50' end='192.168.30.200'/>
    </dhcp>
  </ip>
</network>

```

2. sudo virsh net-define  mynet.xml
3. sudo virsh net-start mynet
4. sudo virsh net-autostart mynet
5. sudo virsh net-list --all
6. ip addr show dev virbr2

## Создание диска 
qemu-img create -f qcow2 ubuntu.qcow 10G

## 
