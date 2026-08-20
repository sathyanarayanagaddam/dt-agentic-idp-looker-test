include: "/views/fct_sales_target.view.lkml"
include: "/views/dim_delivery_region.view.lkml"
include: "/views/dim_opportunity.view.lkml"
include: "/views/dim_user.view.lkml"

explore: fct_sales_target {
  label: "Fct Sales Target"
  description: "Conversational BI explore for fct_sales_target. Synonyms: [Fct Sales Target, Explore]"
  view_name: fct_sales_target
  join: dim_user {
    view_label: "User"
    type: left_outer
    relationship: many_to_one
    sql_on: ${fct_sales_target.id} = ${dim_user.id} ;;
  }
  join: dim_delivery_region {
    view_label: "Dim Delivery Region"
    type: left_outer
    relationship: many_to_one
    sql_on: ${fct_sales_target.id} = ${dim_delivery_region.id} ;;
  }
  join: dim_opportunity {
    view_label: "Dim Opportunity"
    type: left_outer
    relationship: many_to_one
    sql_on: ${fct_sales_target.id} = ${dim_opportunity.id} ;;
  }
}
