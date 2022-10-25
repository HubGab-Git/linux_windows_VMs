# AWS

## Description

  

This terraform project provision two EC2 and provide data to log to instances by SSH into linux and BY RDP to Windows


## Table of Contents


* [Prerequisites](#prerequisites)

* [Usage](#usage)

* [Issues](#issues)

  
  

## Prerequisites

You need AWS account and terrafom installed

## Usage


 
1. Clone this repo to local machine:

	```md
	git clone https://github.com/HubGab-Git/linux_windows_VMs.git
	```

2. Enter downloaded folder:

	```md
	cd linux_windows_VMs/aws
	```

3. You have to manualy create key pair with name "linux_windows" in AWS console and download "pem" file into this folder ("linux_windows_VMs/aws")

4. Download all needed terraform providers and modules:

	```md
	terraform init
	```
5. Check terraform plan if this is your desired project state:

	```md
	terraform plan
	```

6. Finally provision all resources:

	 ```md
	terraform apply --auto-approve
	```

7. After terraform apply you can connect to linux instance by SSH make sure you have downloaded into this folder "linux_windows.pem" file:

	 ```md
	ssh -i linux_windows.pem ubuntu@< DNS name from output "linux_public_dns" >
	```
8. To connect windows instance by RDP please below credentilas:

    windows_public_dns as instance host

    "Administrator" as user name

    windows_password as password for Administrator