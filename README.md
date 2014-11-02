# Cross platfrom test framework for OpenDDS

## Install

### System requirement
Fedora 20 (Kernel 3.15.10)

### Required packages
* [Vagrant]()
* [Docker]() 
* [Virtualbox]
```./check``` will check the whether these pacakges are installed and their versions are compatible.

### Installament 
1. Git clone
2. Run ```./octopus```.


## Usage
```octopus``` is the main command for the platform. Its functions include 3 stages,
1. Bootstrap/Destroy
 Create/destroy the infrastructure of the whole platform.

2. Load/Clean
Load/Clean the VM and Docker container for running cross platfrom test.

3. Run/Terminate
Run/stop the cross platform test.

Since the 3 stages runs *exclusively*. The standard way to run them is
```
Bootstrap -> Load -> Run
```
In most cases stop the tests is fine so only 
```
Terminate
```
But sometimes the VMs may need to be cleaned/restarted. Then
```
Clean
```
We only need ```Destroy``` when the test platform will be moved to another host.
