// Add a connection for to Clickhouse Cluster
// With this connection we can later add datasets / charts / dashboard
locals {
  dashboards = [
    {
      "dashboard" : {
        "tabs" : [
          {
            "id" : "bw",
            "ignored_connections" : [],
            "items" : [
              {
                "element" : {
                  "comparison_operation" : null,
                  "default_value" : null,
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
                "id" : "PQ",
                "placement" : {
                  "h" : 2,
                  "w" : 8,
                  "x" : 0,
                  "y" : 0
                }
              },
              {
                "element" : {
                  "comparison_operation" : null,
                  "default_value" : {
                    "kind" : "multi_string",
                    "values" : [
                      "day"
                    ]
                  },
                  "kind" : "control_select",
                  "show_title" : true,
                  "source" : {
                    "acceptable_values" : [
                      {
                        "title" : "month",
                        "value" : "month"
                      },
                      {
                        "title" : "week",
                        "value" : "week"
                      },
                      {
                        "title" : "day",
                        "value" : "day"
                      }
                    ],
                    "inner_title" : null,
                    "kind" : "manual_select",
                    "parameter_name" : "agg_period"
                  },
                  "title" : "Aggregation period"
                },
                "id" : "WD",
                "placement" : {
                  "h" : 2,
                  "w" : 8,
                  "x" : 8,
                  "y" : 0
                }
              },
              {
                "element" : {
                  "default_active_chart_tab_id" : "8L",
                  "hide_title" : true,
                  "kind" : "charts_container",
                  "tabs" : [
                    {
                      "chart_name" : "visits — visits_indicator",
                      "id" : "8L",
                      "title" : "visits — visits_indicator"
                    }
                  ]
                },
                "id" : "AM",
                "placement" : {
                  "h" : 5,
                  "w" : 5,
                  "x" : 12,
                  "y" : 2
                }
              },
              {
                "element" : {
                  "default_active_chart_tab_id" : "0K",
                  "hide_title" : true,
                  "kind" : "charts_container",
                  "tabs" : [
                    {
                      "chart_name" : "visits — visits_by_time",
                      "id" : "0K",
                      "title" : "visits — visits_by_time"
                    }
                  ]
                },
                "id" : "qN",
                "placement" : {
                  "h" : 5,
                  "w" : 7,
                  "x" : 17,
                  "y" : 2
                }
              },
              {
                "element" : {
                  "default_active_chart_tab_id" : "wx",
                  "hide_title" : true,
                  "kind" : "charts_container",
                  "tabs" : [
                    {
                      "chart_name" : "visits — page_views_indicator",
                      "id" : "wx",
                      "title" : "visits — page_views_indicator"
                    }
                  ]
                },
                "id" : "VO",
                "placement" : {
                  "h" : 5,
                  "w" : 5,
                  "x" : 0,
                  "y" : 2
                }
              },
              {
                "element" : {
                  "default_active_chart_tab_id" : "JE",
                  "hide_title" : true,
                  "kind" : "charts_container",
                  "tabs" : [
                    {
                      "chart_name" : "visits — page_views_by_time",
                      "id" : "JE",
                      "title" : "visits — page_views_by_time"
                    }
                  ]
                },
                "id" : "kr",
                "placement" : {
                  "h" : 5,
                  "w" : 7,
                  "x" : 5,
                  "y" : 2
                }
              },
              {
                "element" : {
                  "default_active_chart_tab_id" : "3K",
                  "hide_title" : true,
                  "kind" : "charts_container",
                  "tabs" : [
                    {
                      "chart_name" : "visits — visitors_indicator",
                      "id" : "3K",
                      "title" : "visits — visitors_indicator"
                    }
                  ]
                },
                "id" : "1M",
                "placement" : {
                  "h" : 5,
                  "w" : 5,
                  "x" : 24,
                  "y" : 2
                }
              },
              {
                "element" : {
                  "default_active_chart_tab_id" : "Xq",
                  "hide_title" : true,
                  "kind" : "charts_container",
                  "tabs" : [
                    {
                      "chart_name" : "visits — visitors_by_time",
                      "id" : "Xq",
                      "title" : "visits — visitors_by_time"
                    }
                  ]
                },
                "id" : "mj",
                "placement" : {
                  "h" : 5,
                  "w" : 7,
                  "x" : 29,
                  "y" : 2
                }
              },
              {
                "element" : {
                  "default_active_chart_tab_id" : "M6",
                  "hide_title" : false,
                  "kind" : "charts_container",
                  "tabs" : [
                    {
                      "chart_name" : "visits - summary_by_time",
                      "id" : "M6",
                      "title" : "Overall"
                    }
                  ]
                },
                "id" : "yE",
                "placement" : {
                  "h" : 22,
                  "w" : 36,
                  "x" : 0,
                  "y" : 7
                }
              },
              {
                "element" : {
                  "default_active_chart_tab_id" : "Ee",
                  "hide_title" : false,
                  "kind" : "charts_container",
                  "tabs" : [
                    {
                      "chart_name" : "visits — visits_by_traffic_source_by_time",
                      "id" : "Ee",
                      "title" : "Sessions by traffic source"
                    }
                  ]
                },
                "id" : "G0",
                "placement" : {
                  "h" : 23,
                  "w" : 36,
                  "x" : 0,
                  "y" : 29
                }
              },
              {
                "element" : {
                  "default_active_chart_tab_id" : "xm",
                  "hide_title" : false,
                  "kind" : "charts_container",
                  "tabs" : [
                    {
                      "chart_name" : "visits — is_new_user_by_time",
                      "id" : "xm",
                      "title" : "New and returning users dynamic"
                    }
                  ]
                },
                "id" : "5E",
                "placement" : {
                  "h" : 15,
                  "w" : 24,
                  "x" : 12,
                  "y" : 52
                }
              },
              {
                "element" : {
                  "default_active_chart_tab_id" : "l1",
                  "hide_title" : true,
                  "kind" : "charts_container",
                  "tabs" : [
                    {
                      "chart_name" : "visits — time_on_site_indicator",
                      "id" : "l1",
                      "title" : "visits — time_on_site_indicator"
                    }
                  ]
                },
                "id" : "Lp",
                "placement" : {
                  "h" : 5,
                  "w" : 5,
                  "x" : 0,
                  "y" : 52
                }
              },
              {
                "element" : {
                  "default_active_chart_tab_id" : "DQ",
                  "hide_title" : true,
                  "kind" : "charts_container",
                  "tabs" : [
                    {
                      "chart_name" : "visits — time_on_site_dynamic",
                      "id" : "DQ",
                      "title" : "visits — time_on_site_dynamic"
                    }
                  ]
                },
                "id" : "r1",
                "placement" : {
                  "h" : 5,
                  "w" : 7,
                  "x" : 5,
                  "y" : 52
                }
              },
              {
                "element" : {
                  "default_active_chart_tab_id" : "oD",
                  "hide_title" : true,
                  "kind" : "charts_container",
                  "tabs" : [
                    {
                      "chart_name" : "visits — page_depth_indicator",
                      "id" : "oD",
                      "title" : "visits — page_depth_indicator"
                    }
                  ]
                },
                "id" : "nD",
                "placement" : {
                  "h" : 10,
                  "w" : 5,
                  "x" : 0,
                  "y" : 57
                }
              },
              {
                "element" : {
                  "default_active_chart_tab_id" : "Ky",
                  "hide_title" : true,
                  "kind" : "charts_container",
                  "tabs" : [
                    {
                      "chart_name" : "visits — page_depth_by_time",
                      "id" : "Ky",
                      "title" : "visits — page_depth_by_time"
                    }
                  ]
                },
                "id" : "QK",
                "placement" : {
                  "h" : 5,
                  "w" : 7,
                  "x" : 5,
                  "y" : 57
                }
              },
              {
                "element" : {
                  "default_active_chart_tab_id" : "pn",
                  "hide_title" : true,
                  "kind" : "charts_container",
                  "tabs" : [
                    {
                      "chart_name" : "visits — bounce_rate_indicator",
                      "id" : "pn",
                      "title" : "Bounce rate"
                    }
                  ]
                },
                "id" : "7m",
                "placement" : {
                  "h" : 24,
                  "w" : 5,
                  "x" : 0,
                  "y" : 67
                }
              },
              {
                "element" : {
                  "default_active_chart_tab_id" : "j6",
                  "hide_title" : true,
                  "kind" : "charts_container",
                  "tabs" : [
                    {
                      "chart_name" : "visits — bounce_rate_by_time",
                      "id" : "j6",
                      "title" : "visits — bounce_rate_by_time"
                    }
                  ]
                },
                "id" : "Oe",
                "placement" : {
                  "h" : 5,
                  "w" : 7,
                  "x" : 5,
                  "y" : 62
                }
              },
              {
                "element" : {
                  "default_active_chart_tab_id" : "B2n",
                  "hide_title" : false,
                  "kind" : "charts_container",
                  "tabs" : [
                    {
                      "chart_name" : "visits - start_url_page_views_by_time",
                      "id" : "B2n",
                      "title" : "URL views"
                    }
                  ]
                },
                "id" : "bww",
                "placement" : {
                  "h" : 24,
                  "w" : 18,
                  "x" : 18,
                  "y" : 67
                }
              },
              {
                "element" : {
                  "comparison_operation" : null,
                  "default_value" : null,
                  "kind" : "control_multiselect",
                  "show_title" : true,
                  "source" : {
                    "dataset_name" : "visits",
                    "field_id" : "b35e7fb0-12b5-11ef-916b-3373d5b644a1",
                    "inner_title" : null,
                    "kind" : "dataset_field"
                  },
                  "title" : "Traffic source"
                },
                "id" : "PAQ",
                "placement" : {
                  "h" : 2,
                  "w" : 8,
                  "x" : 16,
                  "y" : 0
                }
              },
              {
                "element" : {
                  "default_active_chart_tab_id" : "WrD",
                  "hide_title" : false,
                  "kind" : "charts_container",
                  "tabs" : [
                    {
                      "chart_name" : "visits — country_city_page_views_table",
                      "id" : "WrD",
                      "title" : "Page views by Country - City"
                    }
                  ]
                },
                "id" : "Z6p",
                "placement" : {
                  "h" : 24,
                  "w" : 13,
                  "x" : 5,
                  "y" : 67
                }
              },
              {
                "element" : {
                  "comparison_operation" : null,
                  "default_value" : null,
                  "kind" : "control_multiselect",
                  "show_title" : true,
                  "source" : {
                    "dataset_name" : "visits",
                    "field_id" : "dffaa7c0-12c8-11ef-a130-c522c1f319b1",
                    "inner_title" : null,
                    "kind" : "dataset_field"
                  },
                  "title" : "Device type"
                },
                "id" : "2BE",
                "placement" : {
                  "h" : 2,
                  "w" : 8,
                  "x" : 24,
                  "y" : 0
                }
              }
            ],
            "title" : "Overview"
          }
        ]
      },
      "name" : "Yandex Metrica default"
    }
  ]
}
