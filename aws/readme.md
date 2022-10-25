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

You have to manualy create key pair with name "linux_windows" in AWS console and download "pem" file into this folder ("linux_windows_VMs/aws")
 
1. Clone this repo to local machine:

	```md
	git clone https://github.com/HubGab-Git/linux_windows_VMs.git
	```

2. Enter downloaded folder:

	```md
	cd linux_windows_VMs/aws
	```

3. Download all needed terraform providers and modules:

	```md
	terraform init
	```
4. Check terraform plan if this is your desired project state:

	```md
	terraform plan
	```

5. Finally provision all resources:

	 ```md
	terraform apply --auto-approve
	```