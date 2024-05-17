resource "newrelic_service_level" "service_level_workload" {
  guid = var.service-level.guid
  name = var.service-level.name

  events {
    account_id = var.service-level.account_id
    valid_events {
      from = var.service-level.valid_events.from
      select {
        function = var.service-level.valid_events.function
      }
    }
    good_events {
      from = var.service-level.good_events.from
      select {
        function = var.service-level.good_events.function
      }
    }
  }

  objective {
    target = var.service-level.target
    time_window {
      rolling {
        count = var.service-level.count
        unit  = var.service-level.unit
      }
    }
  }
}