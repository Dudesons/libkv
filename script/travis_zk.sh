#!/bin/bash

if [  $# -gt 0 ] ; then
    ZK_VERSION="$1"
else
    ZK_VERSION="3.4.12"
fi

wget "http://apache.cs.utah.edu/zookeeper/zookeeper-${ZK_VERSION}/zookeeper-${ZK_VERSION}.tar.gz"
tar -xvf "zookeeper-${ZK_VERSION}.tar.gz"
mv zookeeper-$ZK_VERSION zk
mv ./zk/conf/zoo_sample.cfg ./zk/conf/zoo.cfg
