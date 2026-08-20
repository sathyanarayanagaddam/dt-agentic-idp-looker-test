connection: "your_bigquery_connection"
include: "/explores/*.explore.lkml"
include: "/refinements/*.lkml"

datagroup: reporting_datagroup {
  max_cache_age: "24 hours"
  description: "Conversational analytics reporting refresh cycle"
}
persist_with: reporting_datagroup
