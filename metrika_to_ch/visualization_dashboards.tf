// Add a connection for to Clickhouse Cluster
// With this connection we can later add datasets / charts / dashboard
locals {
  dashboards = [
    {
      "dashboard" : {
        "tabs" : [
          {
            "id" : "rP",
            "ignored_connections" : [],
            "items" : [
              {
                "element" : {
                  "comparison_operation" : null,
                  "default_value" : {
                    "value" : "__interval___relative_-14d___relative_-0d"
                  },
                  "kind" : "control_date_range",
                  "show_title" : true,
                  "source" : {
                    "dataset_name" : "visits",
                    "field_id" : "startdate_xns9",
                    "inner_title" : null,
                    "kind" : "dataset_field"
                  },
                  "title" : "Dates"
                },
                "id" : "6Q",
                "placement" : {
                  "h" : 2,
                  "w" : 8,
                  "x" : 0,
                  "y" : 0
                }
              },
              {
                "element" : {
                  "default_active_chart_tab_id" : "v8",
                  "hide_title" : false,
                  "kind" : "charts_container",
                  "tabs" : [
                    {
                      "chart_name" : "visits — visits_indicator",
                      "id" : "v8",
                      "title" : "Sessions"
                    }
                  ]
                },
                "id" : "Yl",
                "placement" : {
                  "h" : 12,
                  "w" : 12,
                  "x" : 0,
                  "y" : 2
                }
              }
            ],
            "title" : "Tab 1"
          }
        ]
      },
      "name" : "Main Dashboard"
    }
  ]
}
