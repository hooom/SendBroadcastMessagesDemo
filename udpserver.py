#!/usr/bin/env python

import socket

if __name__ == "__main__":
    udpsock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    udpsock.bind(("", 8888))
    print "start listening:8888"
    while True:
        data, addr = udpsock.recvfrom(1024)
        print "%s:%s wrote:" % addr,
        print "%s" % data
        #udpsock.sendto("You wrote: %s" % data, addr)
