oplog
=====

Write ahead log for operations implemented using mnesia.

Build
-----

    $ rebar3 compile

Design
------

- Support inverse operations like sub unsub

  Suppose we have 3 sequential operations:

  ```
  1. clientid1 - sub   - topic1
  2. clientid2 - sub   - topic2
  3. clientid1 - unsub - topic1
  ```

  Then the 3rd one can cancel out the 1st one, so we shink the logs to:

  ```
  2. clientid2 - sub   - topic2
  ```

- configurable stratergy to store logs in Ram or Disk or both.

- async and batch replicate to new nodes

- notify the handlers with the new data and the offset

