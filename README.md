# Logging Test
This repository is a test for python logging.  
The purpose of this repository is to test if python logging works as expected.  
The repository is not intended to be used in production.  

1. Execute main.py directly to your console
2. Install service and execute it.
3. Check logs in /var/log/syslog

## Try program
Using main.py
```
$ python3 main.py
```

## Easy install service
Execute install-service.sh
```
$ bash install-service.sh
```

## Manual installing service
```
$ sudo ln -s $PWD/logging.service /etc/systemd/system/logging.service
```
Enable the service
```
$ sudo systemctl enable logging.service
```
Reload services
```
$ sudo systemctl daemon-reload
```
Start the service
```
$ sudo systemctl start logging.service
```
