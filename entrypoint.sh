#!/bin/sh

exec ethspam | versus --stop-after ${NUM_REQS} --concurrency=${THREADS} ${RPC_URL}