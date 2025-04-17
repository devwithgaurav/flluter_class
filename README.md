# flluter_class

This configuration implements a Circuit Breaker with the following behavior:
It monitors calls to a service and opens the Circuit Breaker if:
50% or more calls fail in the last 100 calls.
100% of calls are slow (take longer than 60 seconds).
If the Circuit Breaker is OPEN, it waits for 15 minutes before transitioning to HALF-OPEN.
While HALF-OPEN, it allows up to 10 test calls to pass through. Based on their success or failure, the Circuit Breaker either transitions back to CLOSED or RETURNS to OPEN.
This ensures the dependent system isn't overloaded during failure scenarios and provides time for recovery.
 
