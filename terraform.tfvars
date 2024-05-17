service-level = {
  guid       = "NDQxMTgzNHxOUjF8V09SS0xPQUR8MjIyNTEw"
  name       = "Workload Service level"
  account_id = 4411834
  valid_events = {
    from = "Log"

    function = "COUNT"

  }
  good_events = {
    from = "Metric"

    function = "COUNT"

  }

  target = 99.00
  count  = 7
  unit   = "DAY"
}