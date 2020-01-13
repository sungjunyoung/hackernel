#!/bin/sh -x

rpm --import 'https://download.ceph.com/keys/release.asc'
rpm -Uvh http://download.ceph.com/rpm-luminous/el7/noarch/ceph-release-1-1.el7.noarch.rpm

yum install -y ceph-common