#!/bin/bash
set +x

rbd map $(cat /root/secrets/rbd-params)