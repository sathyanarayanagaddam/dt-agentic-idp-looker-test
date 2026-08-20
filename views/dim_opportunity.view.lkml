view: dim_opportunity {
  label: "Opportunity"
  sql_table_name: gold.dim_opportunity ;;

  dimension: opportunity_id {
    label: "Opportunity ID"
    primary_key: yes
    type: string
    sql: ${TABLE}.opportunity_id ;;
    description: "Opportunity ID — business attribute for Conversational Analytics. Synonyms: [Opportunity Id, Opportunity, Opportunity ID]"
    group_label: "Attributes"
    synonyms: ["Opportunity Id", "Opportunity"]
    tags: ["conversational"]
    html: "<a href=\"https://datatonic.lightning.force.com/${opportunity_id}\" target=\"_blank\">{{ value }}</a>" ;;
  }

  dimension: is_private {
    label: "Is Private"
    type: yesno
    sql: ${TABLE}.isprivate ;;
    description: "Is Private — business attribute for Conversational Analytics. Synonyms: [Isprivate, Opportunity, Is Private]"
    group_label: "Classification"
    synonyms: ["Isprivate", "Opportunity", "Is Private"]
    tags: ["conversational"]
  }

  dimension: name {
    label: "Opportunity Name"
    type: string
    sql: ${TABLE}.name ;;
    description: "Opportunity Name — business attribute for Conversational Analytics. Synonyms: [Name, Opportunity, Opportunity Name]"
    group_label: "Attributes"
    synonyms: ["Name", "Opportunity", "Opportunity Name"]
    tags: ["conversational"]
    html: "<a href=\"https://datatonic.lightning.force.com/${opportunity_id}\" target=\"_blank\">{{ value }}</a>" ;;
  }

  dimension: is_closed {
    label: "Is Closed"
    type: yesno
    sql: ${TABLE}.isclosed ;;
    description: "Is Closed — business attribute for Conversational Analytics. Synonyms: [Isclosed, Opportunity, Is Closed]"
    group_label: "Dates"
    synonyms: ["Isclosed", "Opportunity", "Is Closed"]
    tags: ["conversational"]
  }

  dimension: is_won {
    label: "Is Won"
    type: yesno
    sql: ${TABLE}.iswon ;;
    description: "Is Won — business attribute for Conversational Analytics. Synonyms: [Iswon, Opportunity, Is Won]"
    group_label: "Classification"
    synonyms: ["Iswon", "Opportunity", "Is Won"]
    tags: ["conversational"]
  }

  dimension: has_opportunity_line_item {
    label: "Has Opportunity Line Item"
    type: yesno
    sql: ${TABLE}.hasopportunitylineitem ;;
    description: "Has Opportunity Line Item — business attribute for Conversational Analytics. Synonyms: [Hasopportunitylineitem, Opportunity, Has Opportunity Line Item]"
    group_label: "Attributes"
    synonyms: ["Hasopportunitylineitem", "Opportunity", "Has Opportunity Line Item"]
    tags: ["conversational"]
  }

  dimension: has_open_activity {
    label: "Has Open Activity"
    type: yesno
    sql: ${TABLE}.hasopenactivity ;;
    description: "Has Open Activity — business attribute for Conversational Analytics. Synonyms: [Hasopenactivity, Opportunity, Has Open Activity]"
    group_label: "Attributes"
    synonyms: ["Hasopenactivity", "Opportunity", "Has Open Activity"]
    tags: ["conversational"]
  }

  dimension: has_overdue_task {
    label: "Has Overdue Task"
    type: yesno
    sql: ${TABLE}.hasoverduetask ;;
    description: "Has Overdue Task — business attribute for Conversational Analytics. Synonyms: [Hasoverduetask, Opportunity, Has Overdue Task]"
    group_label: "Attributes"
    synonyms: ["Hasoverduetask", "Opportunity", "Has Overdue Task"]
    tags: ["conversational"]
  }

  dimension: is_priority_record {
    label: "Is Priority Record"
    type: yesno
    sql: ${TABLE}.ispriorityrecord ;;
    description: "Is Priority Record — business attribute for Conversational Analytics. Synonyms: [Ispriorityrecord, Opportunity, Is Priority Record]"
    group_label: "Classification"
    synonyms: ["Ispriorityrecord", "Opportunity", "Is Priority Record"]
    tags: ["conversational"]
  }

}
