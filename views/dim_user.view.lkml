view: dim_user {
  label: "User"
  sql_table_name: gold.dim_user ;;

  dimension: owner_id {
    label: "Owner ID"
    primary_key: yes
    type: string
    sql: ${TABLE}.owner_id ;;
    description: "Owner ID — business attribute for Conversational Analytics. Synonyms: [Owner Id, User, Owner ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: name {
    label: "User Name"
    type: string
    sql: ${TABLE}.name ;;
    description: "User Name — business attribute for Conversational Analytics. Synonyms: [Name, User, User Name]"
    group_label: "Attributes"
    synonyms: ["Name", "User", "User Name"]
    tags: ["conversational"]
  }

  dimension: is_active {
    label: "Is Active"
    type: yesno
    sql: ${TABLE}.is_active ;;
    description: "Is Active — business attribute for Conversational Analytics. Synonyms: [Is Active, User]"
    group_label: "Classification"
    synonyms: ["Is Active", "User"]
    tags: ["conversational"]
  }

  dimension_group: created {
    label: "Created Date"
    description: "Created Date timeframes (date, month, quarter, year)."
    type: time
    timeframes: [date, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.created_date ;;
    group_label: "Dates"
    synonyms: ["Created Date", "created", "date", "month", "quarter", "year"]
    tags: ["conversational"]
  }

  dimension: title {
    label: "User Title"
    type: string
    sql: ${TABLE}.title ;;
    description: "User Title — business attribute for Conversational Analytics. Synonyms: [Title, User, User Title]"
    group_label: "Attributes"
    synonyms: ["Title", "User", "User Title"]
    tags: ["conversational"]
  }

}
