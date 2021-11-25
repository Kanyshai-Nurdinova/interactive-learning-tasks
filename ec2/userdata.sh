#!/bin/bash
yum install httpd  -y
systemctl status httpd
systemctl  start  httpd