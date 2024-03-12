# Web Load Tester

This is a simple web load tester written in Go, which allows you to perform load tests on a specified web service.

## How to Use

### Prerequisites

Make sure you have Docker installed on your machine.

### Execution

Run the following command in your terminal:

```bash
docker run loadtester --url=http://example.com --requests=1000 --concurrency=10
```
Replace "http://example.com" with the URL of the service you want to test. 
"--requests" is the total number of requests to be made and --concurrency is the number of simultaneous calls.

### Result
After execution, the program will generate a report that includes:

- Total time spent in execution
- Total number of requests made
- Number of requests with HTTP status 200
- Distribution of other HTTP status codes
