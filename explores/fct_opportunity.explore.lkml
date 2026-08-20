include: "/views/fct_opportunity.view.lkml"
include: "/views/dim_delivery_region.view.lkml"
include: "/views/dim_opportunity.view.lkml"
include: "/views/dim_practice.view.lkml"
include: "/views/dim_user.view.lkml"

explore: fct_opportunity {
  label: "Fct Opportunity"
  description: "Conversational BI explore for fct_opportunity. Synonyms: [Fct Opportunity, Explore]"
  view_name: fct_opportunity
  join: dim_practice {
    view_label: "Practice"
    type: left_outer
    relationship: many_to_one
    sql_on: ${fct_opportunity.practice_id} = ${dim_practice.practice_id} ;;
  }
  join: dim_delivery_region {
    view_label: "Delivery Region"
    type: left_outer
    relationship: many_to_one
    sql_on: ${fct_opportunity.region_id} = ${dim_delivery_region.region_id} ;;
  }
  join: dim_user {
    view_label: "User"
    type: left_outer
    relationship: many_to_one
    sql_on: ${fct_opportunity.owner_id} = ${dim_user.owner_id} ;;
  }
  join: dim_opportunity {
    view_label: "Dim Opportunity"
    type: left_outer
    relationship: many_to_one
    sql_on: ${fct_opportunity.opportunity_id} = ${dim_opportunity.opportunity_id} ;;
  }
}
