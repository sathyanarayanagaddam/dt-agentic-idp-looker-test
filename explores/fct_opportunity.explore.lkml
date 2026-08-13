include: "/views/fct_opportunity.view.lkml"
include: "/views/dim_account.view.lkml"
include: "/views/dim_delivery_region.view.lkml"
include: "/views/dim_practice.view.lkml"
include: "/views/dim_sales_representative.view.lkml"
include: "/views/fct_opportunity_history.view.lkml"

explore: fct_opportunity {
  label: "Fct Opportunity"
  description: "Conversational BI explore for fct_opportunity. Synonyms: [Fct Opportunity, Explore]"
  view_name: fct_opportunity
  join: dim_account {
    view_label: "Account"
    type: left_outer
    relationship: many_to_one
    sql_on: ${fct_opportunity.account_id} =${dim_account.account_id} ;;
  }
  join: fct_opportunity_history {
    view_label: "Opportunity History"
    type: left_outer
    relationship: many_to_one
    sql_on: ${fct_opportunity.opportunity_id} =${fct_opportunity_history.opportunity_id} ;;
  }
  join: dim_practice {
    view_label: "Practice"
    type: left_outer
    relationship: many_to_one
    sql_on: ${fct_opportunity.practice_id} =${dim_practice.practice_id} ;;
  }
  join: dim_delivery_region {
    view_label: "Delivery Region"
    type: left_outer
    relationship: many_to_one
    sql_on: ${fct_opportunity.region_id} =${dim_delivery_region.region_id} ;;
  }
  join: dim_sales_representative {
    view_label: "Sales Representative"
    type: left_outer
    relationship: many_to_one
    sql_on: ${fct_opportunity.sales_rep_id} =${dim_sales_representative.sales_rep_id} ;;
  }

  aggregate_table: executive_rollup {
    query: {
      dimensions: [stage_name, amount]
      measures: [total_weighted_amount_gbp, gap_to_target_gbp]
    }
    materialization: {
      datagroup_trigger: reporting_datagroup
    }
  }
}
