# GCP

## Description

  

This terraform project provision two EC2 and provide data to log to instances by SSH into linux and by RDP to Windows


## Table of Contents


* [Prerequisites](#prerequisites)

* [Usage](#usage)


  
  

## Prerequisites

You need AWS account and terrafom installed

## Usage


 
1. Clone this repo to local machine:

	```md
	git clone https://github.com/HubGab-Git/linux_windows_VMs.git
	```

2. Enter downloaded folder:

	```md
	cd linux_windows_VMs/gcp
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

7. After terraform apply you can connect to linux instance by SSH make sure you have downloaded into this folder "linux_windows.pem" file:

	 ```md
	gcloud compute ssh vm-nebo-linux
	```
