- dashboard: sales_pipeline_overview
  title: "Sales Pipeline Overview"
  layout: newspaper
  preferred_viewer: dashboards-next
  description: "Dashboard for use case sales_pipeline."
  filters:
  - name: close_date_year
    title: "Close Date Year"
    type: field_filter
    default_value: "2026"
    explore: fct_opportunity
    field: fct_opportunity.close_year
  - name: close_date_quarter
    title: "Close Date Quarter"
    type: field_filter
    default_value: ""
    explore: fct_opportunity
    field: fct_opportunity.close_quarter
  - name: delivery_region
    title: "Delivery Region"
    type: field_filter
    default_value: ""
    explore: fct_opportunity
    field: dim_delivery_region.delivery_region
  - name: practice_name
    title: "Practice Name"
    type: field_filter
    default_value: ""
    explore: fct_opportunity
    field: dim_practice.practice_name
  elements:
  - title: "Opps Open (Count)"
    name: "sales_pipeline_overview_0"
    model: agentic_idp
    explore: fct_opportunity
    type: single_value
    fields: [fct_opportunity.open_opportunity_count]
    row: 0
    col: 0
    width: 4
    height: 4
    listen:
      close_date_year: fct_opportunity.close_year
      close_date_quarter: fct_opportunity.close_quarter
      delivery_region: dim_delivery_region.delivery_region
      practice_name: dim_practice.practice_name
  - title: "Opps Open (Amount)"
    name: "sales_pipeline_overview_1"
    model: agentic_idp
    explore: fct_opportunity
    type: single_value
    fields: [fct_opportunity.open_amount_gbp]
    row: 0
    col: 4
    width: 4
    height: 4
    listen:
      close_date_year: fct_opportunity.close_year
      close_date_quarter: fct_opportunity.close_quarter
      delivery_region: dim_delivery_region.delivery_region
      practice_name: dim_practice.practice_name
  - title: "Opps Closed Won (Amount)"
    name: "sales_pipeline_overview_2"
    model: agentic_idp
    explore: fct_opportunity
    type: single_value
    fields: [fct_opportunity.total_won_amount_gbp]
    row: 0
    col: 8
    width: 4
    height: 4
    listen:
      close_date_year: fct_opportunity.close_year
      close_date_quarter: fct_opportunity.close_quarter
      delivery_region: dim_delivery_region.delivery_region
      practice_name: dim_practice.practice_name
  - title: "Win Rate"
    name: "sales_pipeline_overview_3"
    model: agentic_idp
    explore: fct_opportunity
    type: single_value
    fields: [fct_opportunity.win_rate_by_region]
    row: 0
    col: 12
    width: 4
    height: 4
    listen:
      close_date_year: fct_opportunity.close_year
      close_date_quarter: fct_opportunity.close_quarter
      delivery_region: dim_delivery_region.delivery_region
      practice_name: dim_practice.practice_name
  - title: "Qualified Win Rate"
    name: "sales_pipeline_overview_4"
    model: agentic_idp
    explore: fct_opportunity
    type: single_value
    fields: [fct_opportunity.qualified_win_rate_gbp]
    row: 0
    col: 16
    width: 4
    height: 4
    listen:
      close_date_year: fct_opportunity.close_year
      close_date_quarter: fct_opportunity.close_quarter
      delivery_region: dim_delivery_region.delivery_region
      practice_name: dim_practice.practice_name
  - title: "Pipeline by Stage \u2014 AME"
    name: "sales_pipeline_overview_5"
    model: agentic_idp
    explore: fct_opportunity
    type: looker_column
    fields: [fct_opportunity.open_amount_gbp, fct_opportunity.close_quarter, fct_opportunity.stage_name]
    pivots: [fct_opportunity.stage_name]
    stacking: normal
    filters:
      dim_delivery_region.delivery_region: "AME"
      fct_opportunity.is_closed_outcome: "No"
    row: 4
    col: 0
    width: 8
    height: 9
    listen:
      close_date_year: fct_opportunity.close_year
      close_date_quarter: fct_opportunity.close_quarter
      practice_name: dim_practice.practice_name
  - title: "Pipeline by Stage \u2014 EUR"
    name: "sales_pipeline_overview_6"
    model: agentic_idp
    explore: fct_opportunity
    type: looker_column
    fields: [fct_opportunity.open_amount_gbp, fct_opportunity.close_quarter, fct_opportunity.stage_name]
    pivots: [fct_opportunity.stage_name]
    stacking: normal
    filters:
      dim_delivery_region.delivery_region: "EUR"
      fct_opportunity.is_closed_outcome: "No"
    row: 4
    col: 8
    width: 8
    height: 9
    listen:
      close_date_year: fct_opportunity.close_year
      close_date_quarter: fct_opportunity.close_quarter
      practice_name: dim_practice.practice_name
  - title: "Pipeline by Stage \u2014 UKI"
    name: "sales_pipeline_overview_7"
    model: agentic_idp
    explore: fct_opportunity
    type: looker_column
    fields: [fct_opportunity.open_amount_gbp, fct_opportunity.close_quarter, fct_opportunity.stage_name]
    pivots: [fct_opportunity.stage_name]
    stacking: normal
    filters:
      dim_delivery_region.delivery_region: "UKI"
      fct_opportunity.is_closed_outcome: "No"
    row: 4
    col: 16
    width: 8
    height: 9
    listen:
      close_date_year: fct_opportunity.close_year
      close_date_quarter: fct_opportunity.close_quarter
      practice_name: dim_practice.practice_name
  - title: "Pipeline Snapshot"
    name: "sales_pipeline_overview_8"
    model: agentic_idp
    explore: fct_opportunity
    type: looker_grid
    fields: [dim_account.name, dim_opportunity.name, dim_practice.practice_name, fct_opportunity.close_date, fct_opportunity.stage_name, dim_delivery_region.delivery_region, fct_opportunity.total_amount_gbp]
    sorts: [dim_account.name]
    total: true
    row: 13
    col: 0
    width: 24
    height: 12
    listen:
      close_date_year: fct_opportunity.close_year
      close_date_quarter: fct_opportunity.close_quarter
      delivery_region: dim_delivery_region.delivery_region
      practice_name: dim_practice.practice_name
