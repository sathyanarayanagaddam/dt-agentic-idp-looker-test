include: "/views/fct_opportunity_history.view.lkml"

explore: fct_opportunity_history {
  label: "Fct Opportunity History"
  description: "Conversational BI explore for fct_opportunity_history. Synonyms: [Fct Opportunity History, Explore]"
  view_name: fct_opportunity_history

  aggregate_table: executive_rollup {
    query: {
      dimensions: [forecast_category, created_date]
      measures: [total_weighted_amount_gbp, gap_to_target_gbp]
    }
    materialization: {
      datagroup_trigger: reporting_datagroup
    }
  }
}
