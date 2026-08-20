include: "/views/fct_opportunity_history.view.lkml"
include: "/views/dim_delivery_region.view.lkml"
include: "/views/dim_opportunity.view.lkml"
include: "/views/dim_user.view.lkml"

explore: fct_opportunity_history {
  label: "Fct Opportunity History"
  description: "Conversational BI explore for fct_opportunity_history. Synonyms: [Fct Opportunity History, Explore]"
  view_name: fct_opportunity_history
  join: dim_delivery_region {
    view_label: "Dim Delivery Region"
    type: left_outer
    relationship: many_to_one
    sql_on: ${fct_opportunity_history.id} = ${dim_delivery_region.id} ;;
  }
  join: dim_opportunity {
    view_label: "Dim Opportunity"
    type: left_outer
    relationship: many_to_one
    sql_on: ${fct_opportunity_history.opportunity_id} = ${dim_opportunity.opportunity_id} ;;
  }
  join: dim_user {
    view_label: "Dim User"
    type: left_outer
    relationship: many_to_one
    sql_on: ${fct_opportunity_history.id} = ${dim_user.id} ;;
  }
}
