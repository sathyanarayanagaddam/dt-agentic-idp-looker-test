view: dim_account {
  label: "Account"
  sql_table_name: gold.dim_account ;;

  dimension: account_id {
    label: "Account ID"
    primary_key: yes
    type: number
    sql: ${TABLE}.account_id ;;
    description: "Account ID — business attribute for Conversational Analytics. Synonyms: [Account Id, Account, Account ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: name {
    label: "Account Name"
    type: string
    sql: ${TABLE}.name ;;
    description: "Account Name — business attribute for Conversational Analytics. Synonyms: [Name, Account, Account Name]"
    group_label: "Attributes"
    synonyms: ["Name", "Account", "Account Name"]
    tags: ["conversational"]
    html: "<a href=\"https://datatonic.lightning.force.com/${account_id}\" target=\"_blank\">{{ value }}</a>" ;;
  }

  dimension: is_priority_record {
    label: "Is Priority Record"
    type: yesno
    sql: ${TABLE}.ispriorityrecord ;;
    description: "Is Priority Record — business attribute for Conversational Analytics. Synonyms: [Ispriorityrecord, Account, Is Priority Record]"
    group_label: "Classification"
    synonyms: ["Ispriorityrecord", "Account", "Is Priority Record"]
    tags: ["conversational"]
  }

  dimension: account_id {
    label: "Account ID"
    primary_key: yes
    type: number
    sql: ${TABLE}.account_id ;;
    description: "Account ID — business attribute for Conversational Analytics. Synonyms: [Account Id, Account, Account ID]"
    hidden: yes
    tags: ["internal"]
  }

}
