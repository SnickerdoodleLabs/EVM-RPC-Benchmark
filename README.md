[![alt](/snickerdoodle.png)](https://snickerdoodlelabs.io)

# Snickerdoodle RPC Benchmarking for EVM Endpoints

This is a small repository defining a ready-to-go Docker environment for benchmarking EVM-compatible 
RPC endpoints using [`versus`](https://github.com/INFURA/versus) and [`ethspam`](https://github.com/shazow/ethspam). 
You can pull a pre-built image from [Docker Hub](https://hub.docker.com/repository/docker/snickerdoodlelabs/benchmark):

```shell
docker pull snickerdoodlelabs/benchmark
```

Run a benchmark against your RPC endpoint like this:

```shell
docker run --rm --env NUM_REQS=100 --env THREADS=5 --env RPC_URL="https://mainnet.infura.io/v3/${INFURA_API_KEY}" snickerdoodle/benchmark
```

## Environment Variable Definitions

- `NUM_REQS`: Integer number of requests that should be made against the RPC endpoint
- `THREADS`: Integer number of concurrent requests that should be made against the RPC endpoint (to simulate multiple users)
- `RPC_URL`: String indicating the URL for your target RPC endpoint provider. 

## Expected Output

The output from running this benchmarking tool should look something like the following:

```shell
Endpoints:

0. "https://mainnet.infura.io/v3/..."

   Timing:     0.1847s avg, 0.1449s min, 0.4931s max
               0.0825s standard deviation

   Percentiles:
     25% in 0.1504s
     50% in 0.1548s
     75% in 0.1633s
     90% in 0.3177s
     95% in 0.4212s
     99% in 0.4931s

   Errors: 0.00%

** Summary for 1 endpoints:
   Completed:  100 results with 100 total requests
   Timing:     184.674939ms request avg, 4.5730001s total run time
   Errors:     0 (0.00%)
```