# flluter_class

This configuration implements a Circuit Breaker with the following behavior:
It monitors calls to a service and opens the Circuit Breaker if:
50% or more calls fail in the last 100 calls.
100% of calls are slow (take longer than 60 seconds).
If the Circuit Breaker is OPEN, it waits for 15 minutes before transitioning to HALF-OPEN.
While HALF-OPEN, it allows up to 10 test calls to pass through. Based on their success or failure, the Circuit Breaker either transitions back to CLOSED or RETURNS to OPEN.
This ensures the dependent system isn't overloaded during failure scenarios and provides time for recovery.

When less than 10 calls have been executed:

If the total number of calls recorded is less than the minimum-number-of-calls (10 in this example), the Circuit Breaker does not calculate failure or success metrics yet.
Instead, it remains in the CLOSED state, allowing all calls to pass through.
After 10 calls have been executed (equal to minimum-number-of-calls):

The Circuit Breaker reaches the defined minimum-number-of-calls. It starts calculating failure rates and slow call rates based on these 10 calls.
At this point, if the failure rate exceeds the configured threshold (30%), or if slow calls meet the criteria, the Circuit Breaker can transition to the OPEN state.
After 100 calls have been executed (equal to sliding-window-size):

Once the total number of calls reaches the size of the sliding-window-size (100 in this case), the Circuit Breaker starts using the sliding window mechanism, where only the most recent 100 calls are included in the metric calculations.
From this point onward, the Circuit Breaker continuously calculates metrics over the last 100 calls.
 
