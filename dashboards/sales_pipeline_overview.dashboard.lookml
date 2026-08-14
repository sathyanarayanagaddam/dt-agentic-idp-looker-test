#Test GitHub App
- dashboard: sales_pipeline_overview
  title: "Sales Pipeline Overview"
  layout: newspaper
  preferred_viewer: dashboards-next
  description: "Dashboard for use case sales_pipeline."
  filters:
  - name: quarter
    title: "Quarter"
    type: field_filter
    default_value: ""
    explore: fct_opportunity
    field: fct_opportunity.quarter
  - name: month
    title: "Month"
    type: field_filter
    default_value: ""
    explore: fct_opportunity
    field: fct_opportunity.month
  - name: year
    title: "Year"
    type: field_filter
    default_value: ""
    explore: fct_opportunity
    field: fct_opportunity.year
  elements:
  - title: "forecast_category_contribution_pct"
    name: "sales_pipeline_overview_0"
    model: sales_pipeline
    explore: fct_opportunity
    type: single_value
    fields: [fct_opportunity.forecast_category_contribution_pct]
    listen:
      quarter: fct_opportunity.quarter
      month: fct_opportunity.month
      year: fct_opportunity.year
  - title: "total_weighted_amount_gbp"
    name: "sales_pipeline_overview_1"
    model: sales_pipeline
    explore: fct_opportunity
    type: single_value
    fields: [fct_opportunity.total_weighted_amount_gbp]
    listen:
      quarter: fct_opportunity.quarter
      month: fct_opportunity.month
      year: fct_opportunity.year
  - title: "gap_to_target_gbp"
    name: "sales_pipeline_overview_2"
    model: sales_pipeline
    explore: fct_opportunity
    type: single_value
    fields: [fct_opportunity.gap_to_target_gbp]
    listen:
      quarter: fct_opportunity.quarter
      month: fct_opportunity.month
      year: fct_opportunity.year
  - title: "contribution_ratio_pct"
    name: "sales_pipeline_overview_3"
    model: sales_pipeline
    explore: fct_opportunity
    type: single_value
    fields: [fct_opportunity.contribution_ratio_pct]
    listen:
      quarter: fct_opportunity.quarter
      month: fct_opportunity.month
      year: fct_opportunity.year
  - title: "annual_target_attainment_pct"
    name: "sales_pipeline_overview_4"
    model: sales_pipeline
    explore: fct_opportunity
    type: single_value
    fields: [fct_opportunity.annual_target_attainment_pct]
    listen:
      quarter: fct_opportunity.quarter
      month: fct_opportunity.month
      year: fct_opportunity.year
  - title: "total_closed_gm_amount_gbp"
    name: "sales_pipeline_overview_5"
    model: sales_pipeline
    explore: fct_opportunity
    type: single_value
    fields: [fct_opportunity.total_closed_gm_amount_gbp]
    listen:
      quarter: fct_opportunity.quarter
      month: fct_opportunity.month
      year: fct_opportunity.year
  - title: "average_sales_cycle_days"
    name: "sales_pipeline_overview_6"
    model: sales_pipeline
    explore: fct_opportunity
    type: single_value
    fields: [fct_opportunity.average_sales_cycle_days]
    listen:
      quarter: fct_opportunity.quarter
      month: fct_opportunity.month
      year: fct_opportunity.year
  - title: "median_sales_cycle_days"
    name: "sales_pipeline_overview_7"
    model: sales_pipeline
    explore: fct_opportunity
    type: single_value
    fields: [fct_opportunity.median_sales_cycle_days]
    listen:
      quarter: fct_opportunity.quarter
      month: fct_opportunity.month
      year: fct_opportunity.year
