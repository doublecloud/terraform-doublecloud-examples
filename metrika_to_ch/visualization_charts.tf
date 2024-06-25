// Add a connection for to Clickhouse Cluster
// With this connection we can later add datasets / charts / dashboard
locals {
  charts = [
    {
      "chart" : {
        "ad_hoc_fields" : [
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "integer",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "SUM([pageviews_6pw9] * [sign_4nlm])",
                "kind" : "id_formula"
              },
              "cast" : "integer",
              "description" : null,
              "hidden" : false,
              "id" : "381566a0-12b2-11ef-8ab9-fb90612e08b0",
              "title" : "page_views"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "integer",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          },
          {
            "aggregation_locked" : true,
            "autoaggregated" : false,
            "data_type" : "markup",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "URL([starturl_7b3l], [starturl_7b3l]) ",
                "kind" : "id_formula"
              },
              "cast" : "markup",
              "description" : null,
              "hidden" : false,
              "id" : "74a936a0-12b2-11ef-8ab9-fb90612e08b0",
              "title" : "start_url_clickable"
            },
            "has_auto_aggregation" : false,
            "initial_data_type" : "markup",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "DIMENSION",
            "valid" : true,
            "virtual" : false
          },
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "float",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "sum([sign_4nlm] * 1.0)",
                "kind" : "id_formula"
              },
              "cast" : "float",
              "description" : null,
              "hidden" : false,
              "id" : "598c5630-12b3-11ef-befe-f308851c66c5",
              "title" : "sessions"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "float",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          },
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "float",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "LEAST(FLOAT(COUNTD([counteruseridhash_p2ek])), SUM([sign_4nlm] * 1.0))",
                "kind" : "id_formula"
              },
              "cast" : "float",
              "description" : null,
              "hidden" : false,
              "id" : "6bfb6c20-12b3-11ef-befe-f308851c66c5",
              "title" : "users"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "float",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          }
        ],
        "datasets" : [
          "visits"
        ],
        "extra_settings" : {
          "labels_overlap" : null,
          "labels_position" : null,
          "show_title" : false,
          "title" : "New chart"
        },
        "filters" : [],
        "labels" : [],
        "visualization" : {
          "coloring" : null,
          "columns" : [
            {
              "source" : {
                "dataset_name" : "visits",
                "id" : "74a936a0-12b2-11ef-8ab9-fb90612e08b0",
                "kind" : "ref"
              }
            },
            {
              "source" : {
                "dataset_name" : "visits",
                "id" : "381566a0-12b2-11ef-8ab9-fb90612e08b0",
                "kind" : "ref"
              }
            },
            {
              "source" : {
                "dataset_name" : "visits",
                "id" : "598c5630-12b3-11ef-befe-f308851c66c5",
                "kind" : "ref"
              }
            },
            {
              "source" : {
                "dataset_name" : "visits",
                "id" : "6bfb6c20-12b3-11ef-befe-f308851c66c5",
                "kind" : "ref"
              }
            }
          ],
          "kind" : "flat_table",
          "sort" : [
            {
              "direction" : "DESC",
              "source" : {
                "dataset_name" : "visits",
                "id" : "381566a0-12b2-11ef-8ab9-fb90612e08b0",
                "kind" : "ref"
              }
            }
          ]
        }
      },
      "name" : "visits - start_url_page_views"
    },
    {
      "chart" : {
        "ad_hoc_fields" : [
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "integer",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "SUM([pageviews_6pw9] * [sign_4nlm])",
                "kind" : "id_formula"
              },
              "cast" : "integer",
              "description" : null,
              "hidden" : false,
              "id" : "280a02e0-12b5-11ef-85d9-eb496f5f4da8",
              "title" : "page_views"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "integer",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          }
        ],
        "datasets" : [
          "visits"
        ],
        "extra_settings" : {
          "labels_overlap" : null,
          "labels_position" : null,
          "show_title" : false,
          "title" : "New chart"
        },
        "filters" : [],
        "labels" : [],
        "visualization" : {
          "coloring" : {
            "mounts" : [],
            "palette_id" : null,
            "source" : {
              "dataset_name" : "visits",
              "id" : "starturl_7b3l",
              "kind" : "ref"
            }
          },
          "kind" : "line_chart",
          "shaping" : null,
          "sort" : [],
          "x" : {
            "source" : {
              "dataset_name" : "visits",
              "id" : "3468f5b0-128c-11ef-b39f-65937033951d",
              "kind" : "ref"
            }
          },
          "y" : [
            {
              "source" : {
                "dataset_name" : "visits",
                "id" : "280a02e0-12b5-11ef-85d9-eb496f5f4da8",
                "kind" : "ref"
              }
            }
          ],
          "y2" : []
        }
      },
      "name" : "visits - start_url_page_views_by_time"
    },
    {
      "chart" : {
        "ad_hoc_fields" : [
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "integer",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "SUM([sign_4nlm] * [pageviews_6pw9])",
                "kind" : "id_formula"
              },
              "cast" : "integer",
              "description" : null,
              "hidden" : false,
              "id" : "a5a8e0b0-1295-11ef-ac31-4dd44008b3a5",
              "title" : "page_views"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "integer",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          },
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "integer",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "SUM([sign_4nlm] * 1)",
                "kind" : "id_formula"
              },
              "cast" : "integer",
              "description" : null,
              "hidden" : false,
              "id" : "ca203470-1295-11ef-ac31-4dd44008b3a5",
              "title" : "visits"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "integer",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          },
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "float",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "LEAST(FLOAT(COUNTD([counteruseridhash_p2ek])), SUM([sign_4nlm] * 1.0))",
                "kind" : "id_formula"
              },
              "cast" : "float",
              "description" : null,
              "hidden" : false,
              "id" : "dfab5770-1295-11ef-ac31-4dd44008b3a5",
              "title" : "visitors"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "float",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          }
        ],
        "datasets" : [
          "visits"
        ],
        "extra_settings" : {
          "labels_overlap" : null,
          "labels_position" : "outside",
          "show_title" : false,
          "title" : "New chart"
        },
        "filters" : [],
        "labels" : [],
        "visualization" : {
          "coloring" : {
            "kind" : "dimension",
            "mounts" : [],
            "palette_id" : null,
            "source" : {
              "kind" : "measure_names"
            }
          },
          "kind" : "column_chart",
          "sort" : [],
          "x" : [
            {
              "source" : {
                "dataset_name" : "visits",
                "id" : "3468f5b0-128c-11ef-b39f-65937033951d",
                "kind" : "ref"
              }
            },
            {
              "source" : {
                "kind" : "measure_names"
              }
            }
          ],
          "y" : [
            {
              "source" : {
                "dataset_name" : "visits",
                "id" : "a5a8e0b0-1295-11ef-ac31-4dd44008b3a5",
                "kind" : "ref"
              }
            },
            {
              "source" : {
                "dataset_name" : "visits",
                "id" : "ca203470-1295-11ef-ac31-4dd44008b3a5",
                "kind" : "ref"
              }
            },
            {
              "source" : {
                "dataset_name" : "visits",
                "id" : "dfab5770-1295-11ef-ac31-4dd44008b3a5",
                "kind" : "ref"
              }
            }
          ]
        }
      },
      "name" : "visits - summary_by_time"
    },
    {
      "chart" : {
        "ad_hoc_fields" : [
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "float",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "(sum([isbounce_h68p] * ([sign_4nlm] * 1.0)) / sum([sign_4nlm] * 1.0))",
                "kind" : "id_formula"
              },
              "cast" : "float",
              "description" : null,
              "hidden" : false,
              "id" : "52602a00-12b1-11ef-a6cd-4f8593d63120",
              "title" : "bounce_rate"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "float",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          }
        ],
        "datasets" : [
          "visits"
        ],
        "extra_settings" : {
          "labels_overlap" : null,
          "labels_position" : null,
          "show_title" : null,
          "title" : null
        },
        "filters" : [],
        "labels" : [],
        "visualization" : {
          "coloring" : null,
          "kind" : "line_chart",
          "shaping" : null,
          "sort" : [],
          "x" : {
            "source" : {
              "dataset_name" : "visits",
              "id" : "3468f5b0-128c-11ef-b39f-65937033951d",
              "kind" : "ref"
            }
          },
          "y" : [
            {
              "source" : {
                "dataset_name" : "visits",
                "id" : "52602a00-12b1-11ef-a6cd-4f8593d63120",
                "kind" : "ref"
              }
            }
          ],
          "y2" : []
        }
      },
      "name" : "visits — bounce_rate_by_time"
    },
    {
      "chart" : {
        "ad_hoc_fields" : [
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "float",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "(sum([isbounce_h68p] * ([sign_4nlm] * 1.0)) / sum([sign_4nlm] * 1.0))",
                "kind" : "id_formula"
              },
              "cast" : "float",
              "description" : null,
              "hidden" : false,
              "id" : "0d594400-12b1-11ef-9740-4537a430c254",
              "title" : "bounce_rate"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "float",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          }
        ],
        "datasets" : [
          "visits"
        ],
        "extra_settings" : {
          "labels_overlap" : null,
          "labels_position" : null,
          "show_title" : null,
          "title" : null
        },
        "filters" : [],
        "labels" : [],
        "visualization" : {
          "field" : {
            "source" : {
              "dataset_name" : "visits",
              "id" : "0d594400-12b1-11ef-9740-4537a430c254",
              "kind" : "ref"
            }
          },
          "kind" : "indicator"
        }
      },
      "name" : "visits — bounce_rate_indicator"
    },
    {
      "chart" : {
        "ad_hoc_fields" : [
          {
            "aggregation_locked" : true,
            "autoaggregated" : false,
            "data_type" : "tree_str",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "TREE(ARRAY([country_name_73zm], [city_name_2o5y]))",
                "kind" : "id_formula"
              },
              "cast" : "tree_str",
              "description" : null,
              "hidden" : false,
              "id" : "6ddae740-12c3-11ef-b6cf-6d09986e1ff5",
              "title" : "geo_tree"
            },
            "has_auto_aggregation" : false,
            "initial_data_type" : "tree_str",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "DIMENSION",
            "valid" : true,
            "virtual" : false
          },
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "integer",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "SUM([sign_4nlm] * [pageviews_6pw9])",
                "kind" : "id_formula"
              },
              "cast" : "integer",
              "description" : null,
              "hidden" : false,
              "id" : "9a6333d0-12c3-11ef-b6cf-6d09986e1ff5",
              "title" : "page_views"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "integer",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          }
        ],
        "datasets" : [
          "visits"
        ],
        "extra_settings" : {
          "labels_overlap" : null,
          "labels_position" : null,
          "show_title" : null,
          "title" : null
        },
        "filters" : [],
        "labels" : [],
        "visualization" : {
          "coloring" : null,
          "columns" : [
            {
              "source" : {
                "dataset_name" : "visits",
                "id" : "6ddae740-12c3-11ef-b6cf-6d09986e1ff5",
                "kind" : "ref"
              }
            },
            {
              "source" : {
                "dataset_name" : "visits",
                "id" : "9a6333d0-12c3-11ef-b6cf-6d09986e1ff5",
                "kind" : "ref"
              }
            }
          ],
          "kind" : "flat_table",
          "sort" : [
            {
              "direction" : "DESC",
              "source" : {
                "dataset_name" : "visits",
                "id" : "9a6333d0-12c3-11ef-b6cf-6d09986e1ff5",
                "kind" : "ref"
              }
            }
          ]
        }
      },
      "name" : "visits — country_city_page_views_table"
    },
    {
      "chart" : {
        "ad_hoc_fields" : [
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "float",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "LEAST(FLOAT(COUNTD([counteruseridhash_p2ek])), SUM([sign_4nlm] * 1.0))",
                "kind" : "id_formula"
              },
              "cast" : "float",
              "description" : null,
              "hidden" : false,
              "id" : "6d635a30-12ab-11ef-82a4-e39b6801a3f2",
              "title" : "users"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "float",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          },
          {
            "aggregation_locked" : true,
            "autoaggregated" : false,
            "data_type" : "string",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "IF\n    [is_new_user_4th4] = 1 THEN 'New Users'\nELSE 'Returning Users'\nEND",
                "kind" : "id_formula"
              },
              "cast" : "string",
              "description" : null,
              "hidden" : false,
              "id" : "78220de0-12ab-11ef-82a4-e39b6801a3f2",
              "title" : "human_readable_new_user"
            },
            "has_auto_aggregation" : false,
            "initial_data_type" : "string",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "DIMENSION",
            "valid" : true,
            "virtual" : false
          }
        ],
        "datasets" : [
          "visits"
        ],
        "extra_settings" : {
          "labels_overlap" : null,
          "labels_position" : null,
          "show_title" : null,
          "title" : null
        },
        "filters" : [],
        "labels" : [],
        "visualization" : {
          "coloring" : {
            "kind" : "dimension",
            "mounts" : [],
            "palette_id" : null,
            "source" : {
              "dataset_name" : "visits",
              "id" : "78220de0-12ab-11ef-82a4-e39b6801a3f2",
              "kind" : "ref"
            }
          },
          "kind" : "area_chart_normalized",
          "sort" : [],
          "x" : {
            "source" : {
              "dataset_name" : "visits",
              "id" : "3468f5b0-128c-11ef-b39f-65937033951d",
              "kind" : "ref"
            }
          },
          "y" : [
            {
              "source" : {
                "dataset_name" : "visits",
                "id" : "6d635a30-12ab-11ef-82a4-e39b6801a3f2",
                "kind" : "ref"
              }
            }
          ]
        }
      },
      "name" : "visits — is_new_user_by_time"
    },
    {
      "chart" : {
        "ad_hoc_fields" : [
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "float",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "sum([pageviews_6pw9] * ([sign_4nlm] * 1.0)) / sum([sign_4nlm] * 1.0)",
                "kind" : "id_formula"
              },
              "cast" : "float",
              "description" : null,
              "hidden" : false,
              "id" : "724f7a10-12b0-11ef-8d69-d5477ee6f962",
              "title" : "page_depth"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "float",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          }
        ],
        "datasets" : [
          "visits"
        ],
        "extra_settings" : {
          "labels_overlap" : null,
          "labels_position" : null,
          "show_title" : null,
          "title" : null
        },
        "filters" : [],
        "labels" : [],
        "visualization" : {
          "coloring" : null,
          "kind" : "line_chart",
          "shaping" : null,
          "sort" : [],
          "x" : {
            "source" : {
              "dataset_name" : "visits",
              "id" : "3468f5b0-128c-11ef-b39f-65937033951d",
              "kind" : "ref"
            }
          },
          "y" : [
            {
              "source" : {
                "dataset_name" : "visits",
                "id" : "724f7a10-12b0-11ef-8d69-d5477ee6f962",
                "kind" : "ref"
              }
            }
          ],
          "y2" : []
        }
      },
      "name" : "visits — page_depth_by_time"
    },
    {
      "chart" : {
        "ad_hoc_fields" : [
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "float",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "sum([pageviews_6pw9] * ([sign_4nlm] * 1.0)) / sum([sign_4nlm] * 1.0)",
                "kind" : "id_formula"
              },
              "cast" : "float",
              "description" : null,
              "hidden" : false,
              "id" : "d24e5360-12af-11ef-9960-31a2abec5189",
              "title" : "page_depth"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "float",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          }
        ],
        "datasets" : [
          "visits"
        ],
        "extra_settings" : {
          "labels_overlap" : null,
          "labels_position" : null,
          "show_title" : null,
          "title" : null
        },
        "filters" : [],
        "labels" : [],
        "visualization" : {
          "field" : {
            "source" : {
              "dataset_name" : "visits",
              "id" : "d24e5360-12af-11ef-9960-31a2abec5189",
              "kind" : "ref"
            }
          },
          "kind" : "indicator"
        }
      },
      "name" : "visits — page_depth_indicator"
    },
    {
      "chart" : {
        "ad_hoc_fields" : [
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "integer",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "SUM([sign_4nlm] * [pageviews_6pw9])",
                "kind" : "id_formula"
              },
              "cast" : "integer",
              "description" : null,
              "hidden" : false,
              "id" : "2a5dfa40-128f-11ef-8fc8-47eb2b8c9785",
              "title" : "page_views"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "integer",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          }
        ],
        "datasets" : [
          "visits"
        ],
        "extra_settings" : {
          "labels_overlap" : null,
          "labels_position" : null,
          "show_title" : null,
          "title" : null
        },
        "filters" : [],
        "labels" : [],
        "visualization" : {
          "coloring" : null,
          "kind" : "line_chart",
          "shaping" : null,
          "sort" : [],
          "x" : {
            "source" : {
              "dataset_name" : "visits",
              "id" : "3468f5b0-128c-11ef-b39f-65937033951d",
              "kind" : "ref"
            }
          },
          "y" : [
            {
              "source" : {
                "dataset_name" : "visits",
                "id" : "2a5dfa40-128f-11ef-8fc8-47eb2b8c9785",
                "kind" : "ref"
              }
            }
          ],
          "y2" : []
        }
      },
      "name" : "visits — page_views_by_time"
    },
    {
      "chart" : {
        "ad_hoc_fields" : [
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "integer",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "SUM([sign_4nlm] * [pageviews_6pw9])",
                "kind" : "id_formula"
              },
              "cast" : "integer",
              "description" : null,
              "hidden" : false,
              "id" : "8188d8e0-128e-11ef-8c43-53fc5ed3167f",
              "title" : "SUM([signs_sum] * [PageViews])"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "integer",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          }
        ],
        "datasets" : [
          "visits"
        ],
        "extra_settings" : {
          "labels_overlap" : null,
          "labels_position" : null,
          "show_title" : null,
          "title" : null
        },
        "filters" : [],
        "labels" : [],
        "visualization" : {
          "field" : {
            "source" : {
              "dataset_name" : "visits",
              "id" : "8188d8e0-128e-11ef-8c43-53fc5ed3167f",
              "kind" : "ref"
            }
          },
          "kind" : "indicator"
        }
      },
      "name" : "visits — page_views_indicator"
    },
    {
      "chart" : {
        "ad_hoc_fields" : [
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "float",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "sum([duration_5i56] * ([sign_4nlm] * 1.0)) / ifnull(sum([sign_4nlm] * 1.0), 1)",
                "kind" : "id_formula"
              },
              "cast" : "float",
              "description" : null,
              "hidden" : false,
              "id" : "ade266c0-12ae-11ef-b3e5-1dbe618666ea",
              "title" : "avgVisitDurationSeconds"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "float",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          },
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "string",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "CONCAT(\n    STR(DIV_SAFE([ade266c0-12ae-11ef-b3e5-1dbe618666ea], 60)), \n    ' m ',\n    STR(ROUND([ade266c0-12ae-11ef-b3e5-1dbe618666ea] - 60 * DIV_SAFE([ade266c0-12ae-11ef-b3e5-1dbe618666ea], 60))), \n    's'\n)",
                "kind" : "id_formula"
              },
              "cast" : "string",
              "description" : null,
              "hidden" : false,
              "id" : "bae2f420-12ae-11ef-b3e5-1dbe618666ea",
              "title" : "avgVisitDurationMins"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "string",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          },
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "float",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "ROUND([ade266c0-12ae-11ef-b3e5-1dbe618666ea] / 60, 2)",
                "kind" : "id_formula"
              },
              "cast" : "float",
              "description" : null,
              "hidden" : false,
              "id" : "5e8e1000-12af-11ef-a5ed-3d7d09fc30e5",
              "title" : "avgVisitDurationSeconds_mins"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "float",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          }
        ],
        "datasets" : [
          "visits"
        ],
        "extra_settings" : {
          "labels_overlap" : null,
          "labels_position" : null,
          "show_title" : null,
          "title" : null
        },
        "filters" : [],
        "labels" : [],
        "visualization" : {
          "coloring" : null,
          "kind" : "line_chart",
          "shaping" : null,
          "sort" : [],
          "x" : {
            "source" : {
              "dataset_name" : "visits",
              "id" : "3468f5b0-128c-11ef-b39f-65937033951d",
              "kind" : "ref"
            }
          },
          "y" : [
            {
              "source" : {
                "dataset_name" : "visits",
                "id" : "5e8e1000-12af-11ef-a5ed-3d7d09fc30e5",
                "kind" : "ref"
              }
            }
          ],
          "y2" : []
        }
      },
      "name" : "visits — time_on_site_dynamic"
    },
    {
      "chart" : {
        "ad_hoc_fields" : [
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "float",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "sum([duration_5i56] * ([sign_4nlm] * 1.0)) / sum([sign_4nlm] * 1.0)",
                "kind" : "id_formula"
              },
              "cast" : "float",
              "description" : null,
              "hidden" : false,
              "id" : "0eb40b50-12ac-11ef-9758-4f7a002074e5",
              "title" : "avgVisitDurationSeconds"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "float",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          },
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "string",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "CONCAT(\n    STR(DIV([0eb40b50-12ac-11ef-9758-4f7a002074e5], 60)), \n    ' m ',\n    STR(ROUND([0eb40b50-12ac-11ef-9758-4f7a002074e5] - 60 * DIV([0eb40b50-12ac-11ef-9758-4f7a002074e5], 60))), \n    's'\n)",
                "kind" : "id_formula"
              },
              "cast" : "string",
              "description" : null,
              "hidden" : false,
              "id" : "85934c80-12ad-11ef-9758-4f7a002074e5",
              "title" : "avgVisitDurationMins"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "string",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          }
        ],
        "datasets" : [
          "visits"
        ],
        "extra_settings" : {
          "labels_overlap" : null,
          "labels_position" : null,
          "show_title" : null,
          "title" : null
        },
        "filters" : [],
        "labels" : [],
        "visualization" : {
          "field" : {
            "source" : {
              "dataset_name" : "visits",
              "id" : "85934c80-12ad-11ef-9758-4f7a002074e5",
              "kind" : "ref"
            }
          },
          "kind" : "indicator"
        }
      },
      "name" : "visits — time_on_site_indicator"
    },
    {
      "chart" : {
        "ad_hoc_fields" : [
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "float",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "LEAST(FLOAT(COUNTD([counteruseridhash_p2ek])), SUM([sign_4nlm] * 1.0))",
                "kind" : "id_formula"
              },
              "cast" : "float",
              "description" : null,
              "hidden" : false,
              "id" : "5d835590-1295-11ef-89e3-47ef20263eae",
              "title" : "visitors"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "float",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          }
        ],
        "datasets" : [
          "visits"
        ],
        "extra_settings" : {
          "labels_overlap" : null,
          "labels_position" : null,
          "show_title" : null,
          "title" : null
        },
        "filters" : [],
        "labels" : [],
        "visualization" : {
          "coloring" : null,
          "kind" : "line_chart",
          "shaping" : null,
          "sort" : [],
          "x" : {
            "source" : {
              "dataset_name" : "visits",
              "id" : "3468f5b0-128c-11ef-b39f-65937033951d",
              "kind" : "ref"
            }
          },
          "y" : [
            {
              "source" : {
                "dataset_name" : "visits",
                "id" : "5d835590-1295-11ef-89e3-47ef20263eae",
                "kind" : "ref"
              }
            }
          ],
          "y2" : []
        }
      },
      "name" : "visits — visitors_by_time"
    },
    {
      "chart" : {
        "ad_hoc_fields" : [
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "float",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "LEAST(FLOAT(COUNTD([counteruseridhash_p2ek])), SUM([sign_4nlm] * 1.0))",
                "kind" : "id_formula"
              },
              "cast" : "float",
              "description" : null,
              "hidden" : false,
              "id" : "94d783f0-128f-11ef-a18c-e5f28b276540",
              "title" : "visitors"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "float",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          }
        ],
        "datasets" : [
          "visits"
        ],
        "extra_settings" : {
          "labels_overlap" : null,
          "labels_position" : null,
          "show_title" : null,
          "title" : null
        },
        "filters" : [],
        "labels" : [],
        "visualization" : {
          "field" : {
            "source" : {
              "dataset_name" : "visits",
              "id" : "94d783f0-128f-11ef-a18c-e5f28b276540",
              "kind" : "ref"
            }
          },
          "kind" : "indicator"
        }
      },
      "name" : "visits — visitors_indicator"
    },
    {
      "chart" : {
        "ad_hoc_fields" : [],
        "datasets" : [
          "visits"
        ],
        "extra_settings" : {
          "labels_overlap" : null,
          "labels_position" : null,
          "show_title" : null,
          "title" : null
        },
        "filters" : [],
        "labels" : [],
        "visualization" : {
          "coloring" : null,
          "kind" : "line_chart",
          "shaping" : null,
          "sort" : [],
          "x" : {
            "source" : {
              "dataset_name" : "visits",
              "id" : "3468f5b0-128c-11ef-b39f-65937033951d",
              "kind" : "ref"
            }
          },
          "y" : [
            {
              "source" : {
                "dataset_name" : "visits",
                "id" : "afee2a30-128b-11ef-a189-23b88fc2e8f0",
                "kind" : "ref"
              }
            }
          ],
          "y2" : []
        }
      },
      "name" : "visits — visits_by_time"
    },
    {
      "chart" : {
        "ad_hoc_fields" : [
          {
            "aggregation_locked" : true,
            "autoaggregated" : false,
            "data_type" : "string",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "IF\n    [cross_device_last_significanttraffic_ldjl] = -1 THEN 'Internal Traffic'\nELSEIF\n    [cross_device_last_significanttraffic_ldjl] = 0 THEN 'Direct Traffic'\nELSEIF\n    [cross_device_last_significanttraffic_ldjl] = 1 THEN 'Link Traffic'\nELSEIF\n    [cross_device_last_significanttraffic_ldjl] = 2 THEN 'Search engine Traffic'\nELSEIF\n    [cross_device_last_significanttraffic_ldjl] = 3 THEN 'Ad Traffic'\nELSEIF\n    [cross_device_last_significanttraffic_ldjl] = 8 THEN 'Social networks Traffic'\nELSE 'Unknown'\nEND\n        ",
                "kind" : "id_formula"
              },
              "cast" : "string",
              "description" : null,
              "hidden" : false,
              "id" : "d1138ea0-129d-11ef-86d6-e1d9244d0a45",
              "title" : "human_readable_last_significant"
            },
            "has_auto_aggregation" : false,
            "initial_data_type" : "string",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "DIMENSION",
            "valid" : true,
            "virtual" : false
          },
          {
            "aggregation_locked" : true,
            "autoaggregated" : true,
            "data_type" : "float",
            "dataset_name" : "visits",
            "fake_title" : null,
            "field" : {
              "aggregation" : "none",
              "calc_spec" : {
                "formula" : "SUM([sign_4nlm] * 1.0)",
                "kind" : "id_formula"
              },
              "cast" : "float",
              "description" : null,
              "hidden" : false,
              "id" : "3ce9e930-129e-11ef-86d6-e1d9244d0a45",
              "title" : "visits"
            },
            "has_auto_aggregation" : true,
            "initial_data_type" : "float",
            "local" : true,
            "lock_aggregation" : false,
            "managed_by" : "user",
            "original_title" : null,
            "quick_formula" : null,
            "type" : "MEASURE",
            "valid" : true,
            "virtual" : false
          }
        ],
        "datasets" : [
          "visits"
        ],
        "extra_settings" : {
          "labels_overlap" : null,
          "labels_position" : null,
          "show_title" : null,
          "title" : null
        },
        "filters" : [],
        "labels" : [],
        "visualization" : {
          "coloring" : {
            "kind" : "dimension",
            "mounts" : [],
            "palette_id" : null,
            "source" : {
              "dataset_name" : "visits",
              "id" : "d1138ea0-129d-11ef-86d6-e1d9244d0a45",
              "kind" : "ref"
            }
          },
          "kind" : "area_chart",
          "sort" : [],
          "x" : {
            "source" : {
              "dataset_name" : "visits",
              "id" : "3468f5b0-128c-11ef-b39f-65937033951d",
              "kind" : "ref"
            }
          },
          "y" : [
            {
              "source" : {
                "dataset_name" : "visits",
                "id" : "3ce9e930-129e-11ef-86d6-e1d9244d0a45",
                "kind" : "ref"
              }
            }
          ]
        }
      },
      "name" : "visits — visits_by_traffic_source_by_time"
    },
    {
      "chart" : {
        "ad_hoc_fields" : [],
        "datasets" : [
          "visits"
        ],
        "extra_settings" : {
          "labels_overlap" : null,
          "labels_position" : null,
          "show_title" : null,
          "title" : null
        },
        "filters" : [],
        "labels" : [],
        "visualization" : {
          "field" : {
            "source" : {
              "dataset_name" : "visits",
              "id" : "afee2a30-128b-11ef-a189-23b88fc2e8f0",
              "kind" : "ref"
            }
          },
          "kind" : "indicator"
        }
      },
      "name" : "visits — visits_indicator"
    }
  ]
}
