// Add a connection for to Clickhouse Cluster
// With this connection we can later add datasets / charts / dashboard
locals {
  datasets = [
    {
      "dataset" : {
        "avatars" : {
          "definitions" : [
            {
              "id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "source_id" : "ee8110e1-120f-11ef-83ad-49e353bfd25b",
              "title" : "default.hits_v2_${local.table_suffix}"
            }
          ],
          "joins" : [],
          "root" : "ee8110e0-120f-11ef-83ad-49e353bfd25b"
        },
        "fields" : [
          {
            "aggregation" : "none",
            "calc_spec" : {
              "formula" : "SUM([sign_d3xr] * 1)",
              "kind" : "id_formula"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "6557c690-1211-11ef-8237-9b5945a5d691",
            "title" : "signs_sum"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "formula" : "DATETRUNC([eventdate_70oq], [agg_period])",
              "kind" : "id_formula"
            },
            "cast" : "date",
            "description" : null,
            "hidden" : false,
            "id" : "42d97920-1210-11ef-83ad-49e353bfd25b",
            "title" : "event_date_custom"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "default_value" : "week",
              "kind" : "parameter"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "agg_period",
            "title" : "agg_period"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "CounterID",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "counterid_0s3u",
            "title" : "CounterID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "EventDate",
              "kind" : "direct"
            },
            "cast" : "date",
            "description" : null,
            "hidden" : false,
            "id" : "eventdate_70oq",
            "title" : "EventDate"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "CounterUserIDHash",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "counteruseridhash_ceye",
            "title" : "CounterUserIDHash"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "UTCEventTime",
              "kind" : "direct"
            },
            "cast" : "genericdatetime",
            "description" : null,
            "hidden" : false,
            "id" : "utceventtime_1k8x",
            "title" : "UTCEventTime"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "WatchID",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "watchid_q04w",
            "title" : "WatchID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "Sign",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "sign_d3xr",
            "title" : "Sign"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "HitVersion",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "hitversion_okx5",
            "title" : "HitVersion"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "AdvEngineID",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "advengineid_inkg",
            "title" : "AdvEngineID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "AdvEngineStrID",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "advenginestrid_ho51",
            "title" : "AdvEngineStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "BrowserCountry",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "browsercountry_zx43",
            "title" : "BrowserCountry"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "BrowserEngineID",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "browserengineid_pd91",
            "title" : "BrowserEngineID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "BrowserEngineStrID",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "browserenginestrid_qbrl",
            "title" : "BrowserEngineStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "BrowserEngineVersion1",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "browserengineversion1_di2a",
            "title" : "BrowserEngineVersion1"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "BrowserEngineVersion2",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "browserengineversion2_bgsn",
            "title" : "BrowserEngineVersion2"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "BrowserEngineVersion3",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "browserengineversion3_pr1s",
            "title" : "BrowserEngineVersion3"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "BrowserEngineVersion4",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "browserengineversion4_o87o",
            "title" : "BrowserEngineVersion4"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "BrowserLanguage",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "browserlanguage_7sgr",
            "title" : "BrowserLanguage"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "CLID",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "clid_sj81",
            "title" : "CLID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "ClientIP",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "clientip_2zx8",
            "title" : "ClientIP"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "ClientIP6",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "clientip6_w032",
            "title" : "ClientIP6"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "ClientTimeZone",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "clienttimezone_c1kx",
            "title" : "ClientTimeZone"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "CookieEnable",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "cookieenable_tng6",
            "title" : "CookieEnable"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "DevicePixelRatio",
              "kind" : "direct"
            },
            "cast" : "float",
            "description" : null,
            "hidden" : false,
            "id" : "devicepixelratio_eq7h",
            "title" : "DevicePixelRatio"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "DirectCLID",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "directclid_1o8w",
            "title" : "DirectCLID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "FirstPartyCookie",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "firstpartycookie_p3de",
            "title" : "FirstPartyCookie"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "FromTag",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "fromtag_gbza",
            "title" : "FromTag"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "GCLID",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "gclid_8q0o",
            "title" : "GCLID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "GoalsReached",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "goalsreached_qmga",
            "title" : "GoalsReached"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "HasGCLID",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "hasgclid_72ng",
            "title" : "HasGCLID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "HTTPError",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "httperror_6wvx",
            "title" : "HTTPError"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "IsArtifical",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "isartifical_75qk",
            "title" : "IsArtifical"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "IsDownload",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "isdownload_g9hz",
            "title" : "IsDownload"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "IsIFrame",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "isiframe_7x4m",
            "title" : "IsIFrame"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "IsLink",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "islink_bc9p",
            "title" : "IsLink"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "IsMobile",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "ismobile_avmq",
            "title" : "IsMobile"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "IsNotBounce",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "isnotbounce_iyd6",
            "title" : "IsNotBounce"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "IsPageView",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "ispageview_whxu",
            "title" : "IsPageView"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "IsParameter",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "isparameter_yxt7",
            "title" : "IsParameter"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "IsTablet",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "istablet_bgwo",
            "title" : "IsTablet"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "IsTV",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "istv_t9yl",
            "title" : "IsTV"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "JavascriptEnable",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "javascriptenable_qewg",
            "title" : "JavascriptEnable"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "MessengerID",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "messengerid_vw6c",
            "title" : "MessengerID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "MessengerStrID",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "messengerstrid_0b29",
            "title" : "MessengerStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "MobilePhoneModel",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "mobilephonemodel_8arl",
            "title" : "MobilePhoneModel"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "MobilePhoneVendor",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "mobilephonevendor_vup3",
            "title" : "MobilePhoneVendor"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "MobilePhoneVendorStr",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "mobilephonevendorstr_3br1",
            "title" : "MobilePhoneVendorStr"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "NetworkType",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "networktype_bzlp",
            "title" : "NetworkType"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "NetworkTypeStr",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "networktypestr_1v6y",
            "title" : "NetworkTypeStr"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "OpenstatAdID",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "openstatadid_3hf3",
            "title" : "OpenstatAdID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "OpenstatCampaignID",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "openstatcampaignid_0cyl",
            "title" : "OpenstatCampaignID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "OpenstatServiceName",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "openstatservicename_nttj",
            "title" : "OpenstatServiceName"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "OpenstatSourceID",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "openstatsourceid_8a32",
            "title" : "OpenstatSourceID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "OriginalURL",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "originalurl_qsq5",
            "title" : "OriginalURL"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "OS",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "os_k4qd",
            "title" : "OS"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "OSFamily",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "osfamily_3ffh",
            "title" : "OSFamily"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "OSName",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "osname_16n8",
            "title" : "OSName"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "OSRoot",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "osroot_isnv",
            "title" : "OSRoot"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "OSRootStr",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "osrootstr_j6et",
            "title" : "OSRootStr"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "OSStr",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "osstr_i7dc",
            "title" : "OSStr"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "PageCharset",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "pagecharset_0lw4",
            "title" : "PageCharset"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "ParsedParams.Key1",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamskey1_v6k2",
            "title" : "ParsedParams.Key1"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "ParsedParams.Key10",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamskey10_tlkz",
            "title" : "ParsedParams.Key10"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "ParsedParams.Key2",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamskey2_0qf6",
            "title" : "ParsedParams.Key2"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "ParsedParams.Key3",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamskey3_mrzq",
            "title" : "ParsedParams.Key3"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "ParsedParams.Key4",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamskey4_f25x",
            "title" : "ParsedParams.Key4"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "ParsedParams.Key5",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamskey5_tbn4",
            "title" : "ParsedParams.Key5"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "ParsedParams.Key6",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamskey6_zhgh",
            "title" : "ParsedParams.Key6"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "ParsedParams.Key7",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamskey7_ytho",
            "title" : "ParsedParams.Key7"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "ParsedParams.Key8",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamskey8_ut52",
            "title" : "ParsedParams.Key8"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "ParsedParams.Key9",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamskey9_3vky",
            "title" : "ParsedParams.Key9"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "ParsedParams.Quantity",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamsquantity_xqq3",
            "title" : "ParsedParams.Quantity"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "QRCodeProviderID",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "qrcodeproviderid_c9qj",
            "title" : "QRCodeProviderID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "QRCodeProviderStrID",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "qrcodeproviderstrid_sebw",
            "title" : "QRCodeProviderStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "RecommendationSystemID",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "recommendationsystemid_ujgx",
            "title" : "RecommendationSystemID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "RecommendationSystemStrID",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "recommendationsystemstrid_mq6b",
            "title" : "RecommendationSystemStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "Referer",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "referer_p6ie",
            "title" : "Referer"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "RegionID",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "regionid_xetr",
            "title" : "RegionID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "ResolutionDepth",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "resolutiondepth_hjue",
            "title" : "ResolutionDepth"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "ResolutionHeight",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "resolutionheight_aj4a",
            "title" : "ResolutionHeight"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "ResolutionWidth",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "resolutionwidth_v66b",
            "title" : "ResolutionWidth"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "SearchEngineID",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "searchengineid_gfm3",
            "title" : "SearchEngineID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "SearchEngineRootID",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "searchenginerootid_gv5z",
            "title" : "SearchEngineRootID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "SearchEngineRootStrID",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "searchenginerootstrid_m0af",
            "title" : "SearchEngineRootStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "SearchEngineStrID",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "searchenginestrid_zg1z",
            "title" : "SearchEngineStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "ShareService",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "shareservice_de2h",
            "title" : "ShareService"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "ShareTitle",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "sharetitle_58eo",
            "title" : "ShareTitle"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "ShareURL",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "shareurl_n59h",
            "title" : "ShareURL"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "SocialSourceNetworkID",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "socialsourcenetworkid_ghfp",
            "title" : "SocialSourceNetworkID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "SocialSourceNetworkStrID",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "socialsourcenetworkstrid_nll1",
            "title" : "SocialSourceNetworkStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "SocialSourcePage",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "socialsourcepage_1vf5",
            "title" : "SocialSourcePage"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "Title",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "title_maff",
            "title" : "Title"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "TrafficSourceID",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourceid_ikav",
            "title" : "TrafficSourceID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "TrafficSourceStrID",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourcestrid_nr1w",
            "title" : "TrafficSourceStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "URL",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "url_zd1g",
            "title" : "URL"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "UserAgent",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "useragent_ki4s",
            "title" : "UserAgent"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "UserAgentMajor",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "useragentmajor_q8zg",
            "title" : "UserAgentMajor"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "UserAgentStr",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "useragentstr_pjih",
            "title" : "UserAgentStr"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "UserAgentVersion2",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "useragentversion2_bcub",
            "title" : "UserAgentVersion2"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "UserAgentVersion3",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "useragentversion3_imp9",
            "title" : "UserAgentVersion3"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "UserAgentVersion4",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "useragentversion4_xpxy",
            "title" : "UserAgentVersion4"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "UTMCampaign",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "utmcampaign_r2i9",
            "title" : "UTMCampaign"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "UTMContent",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "utmcontent_kzys",
            "title" : "UTMContent"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "UTMMedium",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "utmmedium_fx65",
            "title" : "UTMMedium"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "UTMSource",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "utmsource_womo",
            "title" : "UTMSource"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "UTMTerm",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "utmterm_6w5l",
            "title" : "UTMTerm"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "WindowClientHeight",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "windowclientheight_r8p1",
            "title" : "WindowClientHeight"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "WindowClientWidth",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "windowclientwidth_qzp1",
            "title" : "WindowClientWidth"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "ee8110e0-120f-11ef-83ad-49e353bfd25b",
              "field_name" : "YQRID",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "yqrid_5497",
            "title" : "YQRID"
          }
        ],
        "sources" : [
          {
            "connection_ref" : "YaMetrika connection",
            "id" : "ee8110e1-120f-11ef-83ad-49e353bfd25b",
            "spec" : {
              "db_name" : "default",
              "kind" : "sql_table",
              "table_name" : "hits_v2_${local.table_suffix}"
            },
            "title" : "hits_v2_${local.table_suffix}"
          }
        ]
      },
      "name" : "hits_v2"
    },
    {
      "dataset" : {
        "avatars" : {
          "definitions" : [
            {
              "id" : "4256b650-1299-11ef-b39f-65937033951d",
              "source_id" : "3021c332-1299-11ef-b39f-65937033951d",
              "title" : "visits_enriched"
            }
          ],
          "joins" : [],
          "root" : "4256b650-1299-11ef-b39f-65937033951d"
        },
        "fields" : [
          {
            "aggregation" : "none",
            "calc_spec" : {
              "formula" : "IF [istablet_5fm0] = 1 THEN 'Tablets'\nELSEIF [ismobile_sabq] = 1 THEN 'Smartphones'\nELSEIF [istv_777s] = 1 THEN 'TV'\nELSE 'PC'\nEND",
              "kind" : "id_formula"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "dffaa7c0-12c8-11ef-a130-c522c1f319b1",
            "title" : "device_type"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "formula" : "IF\n    [cross_device_last_significanttraffic_ldjl] = -1 THEN 'Internal Traffic'\nELSEIF\n    [cross_device_last_significanttraffic_ldjl] = 0 THEN 'Direct Traffic'\nELSEIF\n    [cross_device_last_significanttraffic_ldjl] = 1 THEN 'Link Traffic'\nELSEIF\n    [cross_device_last_significanttraffic_ldjl] = 2 THEN 'Search engine Traffic'\nELSEIF\n    [cross_device_last_significanttraffic_ldjl] = 3 THEN 'Ad Traffic'\nELSEIF\n    [cross_device_last_significanttraffic_ldjl] = 8 THEN 'Social networks Traffic'\nELSE 'Unknown'\nEND\n        ",
              "kind" : "id_formula"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "b35e7fb0-12b5-11ef-916b-3373d5b644a1",
            "title" : "LAST_SIGNIFICANTTrafficSource_unparsed"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "formula" : "DATETRUNC([startdate_xns9], [agg_period])",
              "kind" : "id_formula"
            },
            "cast" : "date",
            "description" : null,
            "hidden" : false,
            "id" : "3468f5b0-128c-11ef-b39f-65937033951d",
            "title" : "start_date_custom"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "formula" : "SUM([sign_4nlm] * 1)",
              "kind" : "id_formula"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "afee2a30-128b-11ef-a189-23b88fc2e8f0",
            "title" : "signs_sum"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "default_value" : "day",
              "kind" : "parameter"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "agg_period",
            "title" : "agg_period"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "CounterID",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "counterid_rwhn",
            "title" : "CounterID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "StartDate",
              "kind" : "direct"
            },
            "cast" : "date",
            "description" : null,
            "hidden" : false,
            "id" : "startdate_xns9",
            "title" : "StartDate"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "CounterUserIDHash",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "counteruseridhash_p2ek",
            "title" : "CounterUserIDHash"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "VisitID",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "visitid_teml",
            "title" : "VisitID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "Sign",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "sign_4nlm",
            "title" : "Sign"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "VisitVersion",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "visitversion_x6fq",
            "title" : "VisitVersion"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "BrowserCountry",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "browsercountry_vgia",
            "title" : "BrowserCountry"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "BrowserEngineID",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "browserengineid_q0hy",
            "title" : "BrowserEngineID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "BrowserEngineStrID",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "browserenginestrid_2u54",
            "title" : "BrowserEngineStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "BrowserEngineVersion1",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "browserengineversion1_ij6d",
            "title" : "BrowserEngineVersion1"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "BrowserEngineVersion2",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "browserengineversion2_7fa1",
            "title" : "BrowserEngineVersion2"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "BrowserEngineVersion3",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "browserengineversion3_wd2f",
            "title" : "BrowserEngineVersion3"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "BrowserEngineVersion4",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "browserengineversion4_ulph",
            "title" : "BrowserEngineVersion4"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "BrowserLanguage",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "browserlanguage_agma",
            "title" : "BrowserLanguage"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "CDPOrder.Cost",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "cdpordercost_yj4u",
            "title" : "CDPOrder.Cost"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "CDPOrder.ID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "cdporderid_h93b",
            "title" : "CDPOrder.ID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "CDPOrder.Revenue",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "cdporderrevenue_0uij",
            "title" : "CDPOrder.Revenue"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "CDPOrder.Status",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "cdporderstatus_l5uu",
            "title" : "CDPOrder.Status"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "CDPOrder.UserID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "cdporderuserid_sobz",
            "title" : "CDPOrder.UserID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "CDPOrder.Version",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "cdporderversion_iqhv",
            "title" : "CDPOrder.Version"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "ClientIP",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "clientip_57jq",
            "title" : "ClientIP"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "ClientIP6",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "clientip6_y2ip",
            "title" : "ClientIP6"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "ClientTimeZone",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "clienttimezone_7ulc",
            "title" : "ClientTimeZone"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "CookieEnable",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "cookieenable_4sgy",
            "title" : "CookieEnable"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "DevicePixelRatio",
              "kind" : "direct"
            },
            "cast" : "float",
            "description" : null,
            "hidden" : false,
            "id" : "devicepixelratio_4aol",
            "title" : "DevicePixelRatio"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "Duration",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "duration_5i56",
            "title" : "Duration"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EAction.ProductBrand",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "eactionproductbrand_u48b",
            "title" : "EAction.ProductBrand"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EAction.ProductCategory",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "eactionproductcategory_vweq",
            "title" : "EAction.ProductCategory"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EAction.ProductCategory1",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "eactionproductcategory1_1gxg",
            "title" : "EAction.ProductCategory1"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EAction.ProductCategory2",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "eactionproductcategory2_irfe",
            "title" : "EAction.ProductCategory2"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EAction.ProductCategory3",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "eactionproductcategory3_20n2",
            "title" : "EAction.ProductCategory3"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EAction.ProductCategory4",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "eactionproductcategory4_1wg2",
            "title" : "EAction.ProductCategory4"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EAction.ProductCategory5",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "eactionproductcategory5_axit",
            "title" : "EAction.ProductCategory5"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EAction.ProductCoupon",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "eactionproductcoupon_1nmh",
            "title" : "EAction.ProductCoupon"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EAction.ProductCurrency",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "eactionproductcurrency_vmqj",
            "title" : "EAction.ProductCurrency"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EAction.ProductCurrencyID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "eactionproductcurrencyid_jl6p",
            "title" : "EAction.ProductCurrencyID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EAction.ProductDiscount",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "eactionproductdiscount_54gk",
            "title" : "EAction.ProductDiscount"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EAction.ProductID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "eactionproductid_itvf",
            "title" : "EAction.ProductID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EAction.ProductList",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "eactionproductlist_6fta",
            "title" : "EAction.ProductList"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EAction.ProductName",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "eactionproductname_hgkb",
            "title" : "EAction.ProductName"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EAction.ProductPosition",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "eactionproductposition_df7c",
            "title" : "EAction.ProductPosition"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EAction.ProductPrice",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "eactionproductprice_788g",
            "title" : "EAction.ProductPrice"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EAction.ProductQuantity",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "eactionproductquantity_l2jt",
            "title" : "EAction.ProductQuantity"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EAction.ProductVariant",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "eactionproductvariant_0io3",
            "title" : "EAction.ProductVariant"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EAction.Type",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "eactiontype_x8ld",
            "title" : "EAction.Type"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EAction.TypeStr",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "eactiontypestr_iju1",
            "title" : "EAction.TypeStr"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EAction.URL",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "eactionurl_2zlz",
            "title" : "EAction.URL"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EActionOverflow",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "eactionoverflow_opt3",
            "title" : "EActionOverflow"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EndURL",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "endurl_youa",
            "title" : "EndURL"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPromotion.Creative",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epromotioncreative_mdwa",
            "title" : "EPromotion.Creative"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPromotion.CreativeSlot",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epromotioncreativeslot_bgl2",
            "title" : "EPromotion.CreativeSlot"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPromotion.ID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epromotionid_vphj",
            "title" : "EPromotion.ID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPromotion.Name",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epromotionname_y1sl",
            "title" : "EPromotion.Name"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPromotion.Position",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epromotionposition_znsu",
            "title" : "EPromotion.Position"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPromotion.Type",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "epromotiontype_0y76",
            "title" : "EPromotion.Type"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPromotion.URL",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epromotionurl_ltn2",
            "title" : "EPromotion.URL"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchase.Affiliation",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchaseaffiliation_2csq",
            "title" : "EPurchase.Affiliation"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchase.Coupon",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasecoupon_im8r",
            "title" : "EPurchase.Coupon"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchase.Currency",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasecurrency_qitp",
            "title" : "EPurchase.Currency"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchase.CurrencyID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasecurrencyid_a3at",
            "title" : "EPurchase.CurrencyID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchase.ID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchaseid_3tr6",
            "title" : "EPurchase.ID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchase.ProductQuantity",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "epurchaseproductquantity_6hjt",
            "title" : "EPurchase.ProductQuantity"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchase.Revenue",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "epurchaserevenue_076i",
            "title" : "EPurchase.Revenue"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchase.Shipping",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "epurchaseshipping_q2mq",
            "title" : "EPurchase.Shipping"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchase.Tax",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasetax_vewf",
            "title" : "EPurchase.Tax"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseOverflow",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "epurchaseoverflow_4cjv",
            "title" : "EPurchaseOverflow"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.Affiliation",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsaffiliation_at6p",
            "title" : "EPurchaseWithProducts.Affiliation"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.Coupon",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductscoupon_owcn",
            "title" : "EPurchaseWithProducts.Coupon"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.Currency",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductscurrency_ta6x",
            "title" : "EPurchaseWithProducts.Currency"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.CurrencyID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductscurrencyid_pdze",
            "title" : "EPurchaseWithProducts.CurrencyID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.ID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsid_9t6d",
            "title" : "EPurchaseWithProducts.ID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.ProductBrand",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsproductbrand_yjux",
            "title" : "EPurchaseWithProducts.ProductBrand"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.ProductCategory",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsproductcategory_59ed",
            "title" : "EPurchaseWithProducts.ProductCategory"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.ProductCategory1",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsproductcategory_wuqu",
            "title" : "EPurchaseWithProducts.ProductCategory1"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.ProductCategory2",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsproductcategory_m5y8",
            "title" : "EPurchaseWithProducts.ProductCategory2"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.ProductCategory3",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsproductcategory_ouz2",
            "title" : "EPurchaseWithProducts.ProductCategory3"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.ProductCategory4",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsproductcategory_8i7n",
            "title" : "EPurchaseWithProducts.ProductCategory4"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.ProductCategory5",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsproductcategory_k17k",
            "title" : "EPurchaseWithProducts.ProductCategory5"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.ProductCoupon",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsproductcoupon_gkvy",
            "title" : "EPurchaseWithProducts.ProductCoupon"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.ProductCurrency",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsproductcurrency_ri2d",
            "title" : "EPurchaseWithProducts.ProductCurrency"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.ProductCurrencyID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsproductcurrency_aywb",
            "title" : "EPurchaseWithProducts.ProductCurrencyID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.ProductDiscount",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsproductdiscount_19hi",
            "title" : "EPurchaseWithProducts.ProductDiscount"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.ProductID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsproductid_e0wp",
            "title" : "EPurchaseWithProducts.ProductID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.ProductList",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsproductlist_vs78",
            "title" : "EPurchaseWithProducts.ProductList"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.ProductName",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsproductname_wulv",
            "title" : "EPurchaseWithProducts.ProductName"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.ProductPosition",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsproductposition_rp00",
            "title" : "EPurchaseWithProducts.ProductPosition"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.ProductPrice",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsproductprice_o907",
            "title" : "EPurchaseWithProducts.ProductPrice"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.ProductVariant",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsproductvariant_5lmw",
            "title" : "EPurchaseWithProducts.ProductVariant"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.Quantity",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsquantity_rpf3",
            "title" : "EPurchaseWithProducts.Quantity"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.Revenue",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsrevenue_us8r",
            "title" : "EPurchaseWithProducts.Revenue"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.Shipping",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsshipping_hpbp",
            "title" : "EPurchaseWithProducts.Shipping"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProducts.Tax",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductstax_bbl5",
            "title" : "EPurchaseWithProducts.Tax"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "EPurchaseWithProductsOverflow",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "epurchasewithproductsoverflow_zp9n",
            "title" : "EPurchaseWithProductsOverflow"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "Experiment.SystemID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "experimentsystemid_vt64",
            "title" : "Experiment.SystemID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "FirstPartyCookie",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "firstpartycookie_upfh",
            "title" : "FirstPartyCookie"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "FirstVisit",
              "kind" : "direct"
            },
            "cast" : "genericdatetime",
            "description" : null,
            "hidden" : false,
            "id" : "firstvisit_5g7a",
            "title" : "FirstVisit"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "Goals.CallFirstTimeCaller",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "goalscallfirsttimecaller_706h",
            "title" : "Goals.CallFirstTimeCaller"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "Goals.CallHoldDuration",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "goalscallholdduration_a9wa",
            "title" : "Goals.CallHoldDuration"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "Goals.CallMissed",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "goalscallmissed_wx7r",
            "title" : "Goals.CallMissed"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "Goals.CallTag",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "goalscalltag_47xy",
            "title" : "Goals.CallTag"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "Goals.CallTalkDuration",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "goalscalltalkduration_m87i",
            "title" : "Goals.CallTalkDuration"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "Goals.CallTrackerURL",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "goalscalltrackerurl_mdro",
            "title" : "Goals.CallTrackerURL"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "Goals.CallURL",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "goalscallurl_fc52",
            "title" : "Goals.CallURL"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "Goals.CurrencyID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "goalscurrencyid_a1ga",
            "title" : "Goals.CurrencyID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "Goals.ID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "goalsid_p6wf",
            "title" : "Goals.ID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "Goals.OrderID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "goalsorderid_z4e7",
            "title" : "Goals.OrderID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "Goals.Price",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "goalsprice_hen8",
            "title" : "Goals.Price"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "Goals.Serial",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "goalsserial_yp89",
            "title" : "Goals.Serial"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "HasGoalReachesOverflow",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "hasgoalreachesoverflow_dne1",
            "title" : "HasGoalReachesOverflow"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "IsBounce",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "isbounce_h68p",
            "title" : "IsBounce"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "IsMobile",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "ismobile_sabq",
            "title" : "IsMobile"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "IsTablet",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "istablet_5fm0",
            "title" : "IsTablet"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "IsTV",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "istv_777s",
            "title" : "IsTV"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "JavascriptEnable",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "javascriptenable_7b9n",
            "title" : "JavascriptEnable"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "LinkURL",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "linkurl_nkfp",
            "title" : "LinkURL"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "MobilePhoneModel",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "mobilephonemodel_6yt8",
            "title" : "MobilePhoneModel"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "MobilePhoneVendor",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "mobilephonevendor_u5la",
            "title" : "MobilePhoneVendor"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "MobilePhoneVendorStr",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "mobilephonevendorstr_qfjs",
            "title" : "MobilePhoneVendorStr"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "NetworkType",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "networktype_45nv",
            "title" : "NetworkType"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "NetworkTypeStr",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "networktypestr_i3ak",
            "title" : "NetworkTypeStr"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "OS",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "os_440i",
            "title" : "OS"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "OSFamily",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "osfamily_le38",
            "title" : "OSFamily"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "OSName",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "osname_ybhh",
            "title" : "OSName"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "OSRoot",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "osroot_ubrk",
            "title" : "OSRoot"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "OSRootStr",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "osrootstr_3143",
            "title" : "OSRootStr"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "OSStr",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "osstr_bggh",
            "title" : "OSStr"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PageViews",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "pageviews_6pw9",
            "title" : "PageViews"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "ParsedParams.Key1",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamskey1_8cl5",
            "title" : "ParsedParams.Key1"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "ParsedParams.Key10",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamskey10_rumo",
            "title" : "ParsedParams.Key10"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "ParsedParams.Key2",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamskey2_bcws",
            "title" : "ParsedParams.Key2"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "ParsedParams.Key3",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamskey3_wnif",
            "title" : "ParsedParams.Key3"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "ParsedParams.Key4",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamskey4_mvzs",
            "title" : "ParsedParams.Key4"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "ParsedParams.Key5",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamskey5_hgvc",
            "title" : "ParsedParams.Key5"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "ParsedParams.Key6",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamskey6_glga",
            "title" : "ParsedParams.Key6"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "ParsedParams.Key7",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamskey7_qjft",
            "title" : "ParsedParams.Key7"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "ParsedParams.Key8",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamskey8_yha4",
            "title" : "ParsedParams.Key8"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "ParsedParams.Key9",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamskey9_itnn",
            "title" : "ParsedParams.Key9"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "ParsedParams.Quantity",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "parsedparamsquantity_07qv",
            "title" : "ParsedParams.Quantity"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.AdvEngineID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventsadvengineid_ab4u",
            "title" : "PublisherEvents.AdvEngineID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.AdvEngineStrID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventsadvenginestrid_imb3",
            "title" : "PublisherEvents.AdvEngineStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.ArticleHeight",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventsarticleheight_g8zw",
            "title" : "PublisherEvents.ArticleHeight"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.ArticleID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventsarticleid_559j",
            "title" : "PublisherEvents.ArticleID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.Chars",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventschars_njbp",
            "title" : "PublisherEvents.Chars"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.EventID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventseventid_pjjr",
            "title" : "PublisherEvents.EventID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.FromArticleID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventsfromarticleid_u3jq",
            "title" : "PublisherEvents.FromArticleID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.HasRecircled",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventshasrecircled_vom8",
            "title" : "PublisherEvents.HasRecircled"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.InvolvedTime",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventsinvolvedtime_5yq7",
            "title" : "PublisherEvents.InvolvedTime"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.MessengerID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventsmessengerid_210z",
            "title" : "PublisherEvents.MessengerID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.MessengerStrID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventsmessengerstrid_9c1j",
            "title" : "PublisherEvents.MessengerStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.RecommendationSystemID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventsrecommendationsystemi_igw2",
            "title" : "PublisherEvents.RecommendationSystemID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.RecommendationSystemStrID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventsrecommendationsystems_5wbl",
            "title" : "PublisherEvents.RecommendationSystemStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.ReferrerDomain",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventsreferrerdomain_hh0m",
            "title" : "PublisherEvents.ReferrerDomain"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.ReferrerPath",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventsreferrerpath_d1nx",
            "title" : "PublisherEvents.ReferrerPath"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.Rubric",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventsrubric_gwov",
            "title" : "PublisherEvents.Rubric"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.Rubric2",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventsrubric2_my5l",
            "title" : "PublisherEvents.Rubric2"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.ScrollDown",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventsscrolldown_v289",
            "title" : "PublisherEvents.ScrollDown"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.SearchEngineID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventssearchengineid_b3is",
            "title" : "PublisherEvents.SearchEngineID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.SearchEngineStrID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventssearchenginestrid_batj",
            "title" : "PublisherEvents.SearchEngineStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.SocialSourceNetworkID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventssocialsourcenetworkid_omf2",
            "title" : "PublisherEvents.SocialSourceNetworkID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.SocialSourceNetworkStrID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventssocialsourcenetworkst_mxnk",
            "title" : "PublisherEvents.SocialSourceNetworkStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.Title",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventstitle_hpop",
            "title" : "PublisherEvents.Title"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.TrafficSourceID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventstrafficsourceid_1hwl",
            "title" : "PublisherEvents.TrafficSourceID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.TrafficSourceStrID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventstrafficsourcestrid_vrvj",
            "title" : "PublisherEvents.TrafficSourceStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.TurboType",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventsturbotype_gcet",
            "title" : "PublisherEvents.TurboType"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.TurboTypeStr",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventsturbotypestr_9o8l",
            "title" : "PublisherEvents.TurboTypeStr"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "PublisherEvents.URLCanonical",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "publishereventsurlcanonical_os87",
            "title" : "PublisherEvents.URLCanonical"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "Referer",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "referer_7nuy",
            "title" : "Referer"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "RegionID",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "regionid_gof6",
            "title" : "RegionID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "ResolutionDepth",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "resolutiondepth_5nqh",
            "title" : "ResolutionDepth"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "ResolutionHeight",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "resolutionheight_wpwb",
            "title" : "ResolutionHeight"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "ResolutionWidth",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "resolutionwidth_nxat",
            "title" : "ResolutionWidth"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "StartURL",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "starturl_7b3l",
            "title" : "StartURL"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.AdvEnginePlaceID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourceadvengineplaceid_mzdh",
            "title" : "TrafficSource.AdvEnginePlaceID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.AdvEnginePlaceStrID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourceadvengineplacestrid_41dm",
            "title" : "TrafficSource.AdvEnginePlaceStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.ClickBannerID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourceclickbannerid_jhpz",
            "title" : "TrafficSource.ClickBannerID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.ClickDirectCampaignID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourceclickdirectcampaignid_gajp",
            "title" : "TrafficSource.ClickDirectCampaignID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.ClickGroupBannerID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourceclickgroupbannerid_xeal",
            "title" : "TrafficSource.ClickGroupBannerID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.ClickTargetType",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourceclicktargettype_u2rc",
            "title" : "TrafficSource.ClickTargetType"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.CLID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourceclid_b09r",
            "title" : "TrafficSource.CLID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.DirectCLID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourcedirectclid_gv0v",
            "title" : "TrafficSource.DirectCLID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.Domain",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourcedomain_n9yn",
            "title" : "TrafficSource.Domain"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.FromTag",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourcefromtag_tcf5",
            "title" : "TrafficSource.FromTag"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.GCLID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourcegclid_7qxb",
            "title" : "TrafficSource.GCLID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.HasGCLID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourcehasgclid_jmwl",
            "title" : "TrafficSource.HasGCLID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.ID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourceid_oaa9",
            "title" : "TrafficSource.ID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.MessengerID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourcemessengerid_b40m",
            "title" : "TrafficSource.MessengerID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.MessengerStrID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourcemessengerstrid_ndhd",
            "title" : "TrafficSource.MessengerStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.Model",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourcemodel_uk2n",
            "title" : "TrafficSource.Model"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.ModelStr",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourcemodelstr_t2mo",
            "title" : "TrafficSource.ModelStr"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.OpenstatAdID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourceopenstatadid_15ib",
            "title" : "TrafficSource.OpenstatAdID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.OpenstatCampaignID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourceopenstatcampaignid_lsil",
            "title" : "TrafficSource.OpenstatCampaignID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.OpenstatServiceName",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourceopenstatservicename_2dj8",
            "title" : "TrafficSource.OpenstatServiceName"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.OpenstatSourceID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourceopenstatsourceid_cl8z",
            "title" : "TrafficSource.OpenstatSourceID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.QRCodeProviderID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourceqrcodeproviderid_t5zg",
            "title" : "TrafficSource.QRCodeProviderID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.QRCodeProviderStrID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourceqrcodeproviderstrid_klpm",
            "title" : "TrafficSource.QRCodeProviderStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.RecommendationSystemID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourcerecommendationsystemid_llkf",
            "title" : "TrafficSource.RecommendationSystemID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.RecommendationSystemStrID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourcerecommendationsystemstr_5bez",
            "title" : "TrafficSource.RecommendationSystemStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.SearchEngineID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourcesearchengineid_wsa1",
            "title" : "TrafficSource.SearchEngineID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.SearchEngineRootID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourcesearchenginerootid_pt9q",
            "title" : "TrafficSource.SearchEngineRootID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.SearchEngineRootStrID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourcesearchenginerootstrid_2qpn",
            "title" : "TrafficSource.SearchEngineRootStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.SearchEngineStrID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourcesearchenginestrid_kcev",
            "title" : "TrafficSource.SearchEngineStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.SocialSourceNetworkID",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourcesocialsourcenetworkid_k6mq",
            "title" : "TrafficSource.SocialSourceNetworkID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.SocialSourceNetworkStrID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourcesocialsourcenetworkstri_2qdc",
            "title" : "TrafficSource.SocialSourceNetworkStrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.SocialSourcePage",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourcesocialsourcepage_4yf3",
            "title" : "TrafficSource.SocialSourcePage"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.StrID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourcestrid_8jiz",
            "title" : "TrafficSource.StrID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.UTMCampaign",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourceutmcampaign_if8a",
            "title" : "TrafficSource.UTMCampaign"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.UTMContent",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourceutmcontent_pn2u",
            "title" : "TrafficSource.UTMContent"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.UTMMedium",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourceutmmedium_4cjz",
            "title" : "TrafficSource.UTMMedium"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.UTMSource",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourceutmsource_0fwz",
            "title" : "TrafficSource.UTMSource"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.UTMTerm",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourceutmterm_z417",
            "title" : "TrafficSource.UTMTerm"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "TrafficSource.YQRID",
              "kind" : "direct"
            },
            "cast" : "array_str",
            "description" : null,
            "hidden" : false,
            "id" : "trafficsourceyqrid_jnqc",
            "title" : "TrafficSource.YQRID"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "UserAgent",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "useragent_609x",
            "title" : "UserAgent"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "UserAgentMajor",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "useragentmajor_ch74",
            "title" : "UserAgentMajor"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "UserAgentStr",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "useragentstr_sjvg",
            "title" : "UserAgentStr"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "UserAgentVersion2",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "useragentversion2_ibdi",
            "title" : "UserAgentVersion2"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "UserAgentVersion3",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "useragentversion3_fiah",
            "title" : "UserAgentVersion3"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "UserAgentVersion4",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "useragentversion4_dnfn",
            "title" : "UserAgentVersion4"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "UTCStartTime",
              "kind" : "direct"
            },
            "cast" : "genericdatetime",
            "description" : null,
            "hidden" : false,
            "id" : "utcstarttime_7ugl",
            "title" : "UTCStartTime"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "WatchIDs",
              "kind" : "direct"
            },
            "cast" : "array_int",
            "description" : null,
            "hidden" : false,
            "id" : "watchids_ulrh",
            "title" : "WatchIDs"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "WindowClientHeight",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "windowclientheight_6zi7",
            "title" : "WindowClientHeight"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "WindowClientWidth",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "windowclientwidth_re4u",
            "title" : "WindowClientWidth"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "CROSS_DEVICE_LAST_SIGNIFICANTTrafficSource",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "cross_device_last_significanttraffic_ldjl",
            "title" : "CROSS_DEVICE_LAST_SIGNIFICANTTrafficSource"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "is_new_user",
              "kind" : "direct"
            },
            "cast" : "integer",
            "description" : null,
            "hidden" : false,
            "id" : "is_new_user_4th4",
            "title" : "is_new_user"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "country_name",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "country_name_73zm",
            "title" : "country_name"
          },
          {
            "aggregation" : "none",
            "calc_spec" : {
              "avatar_id" : "4256b650-1299-11ef-b39f-65937033951d",
              "field_name" : "city_name",
              "kind" : "direct"
            },
            "cast" : "string",
            "description" : null,
            "hidden" : false,
            "id" : "city_name_2o5y",
            "title" : "city_name"
          }
        ],
        "sources" : [
          {
            "connection_ref" : "YaMetrika connection",
            "id" : "3021c332-1299-11ef-b39f-65937033951d",
            "spec" : {
              "kind" : "sql_query",
              "sql" : "SELECT\\n    *,\\n    `TrafficSource.ID`[indexOf(`TrafficSource.Model`, if(NOT has(`TrafficSource.Model`,5),2,5))] AS CROSS_DEVICE_LAST_SIGNIFICANTTrafficSource,\\n    toDate(`TrafficSource.StartTime`[indexOf(`TrafficSource.Model`,3)]) = StartDate AS is_new_user,\\n    toString(RegionID) AS country_name,\\n\\ttoString(RegionID) AS city_name\\nFROM default.visits_${local.table_suffix}"
            },
            "title" : "visits_enriched"
          }
        ]
      },
      "name" : "visits"
    }
  ]
}
