view: dim_sales_representative {
  label: "Sales Representative"
  sql_table_name: gold.dim_sales_representative ;;
  description: "Logical entity Sales Representative. Synonyms: [Sales Representative, Dim Sales Representative]"

  dimension: sales_rep_id {
    label: "Sales Rep ID"
    primary_key: yes
    type: string
    sql: ${TABLE}.sales_rep_id ;;
    description: "Sales Rep ID — business attribute for Conversational Analytics. Synonyms: [Sales Rep Id, Sales Representative, Sales Rep ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: contact_id {
    label: "Contact ID"
    type: string
    sql: ${TABLE}.contact_id ;;
    description: "Contact ID — business attribute for Conversational Analytics. Synonyms: [Contact Id, Sales Representative, Contact ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: name {
    label: "Name"
    type: string
    sql: ${TABLE}.Name ;;
    description: "Name — business attribute for Conversational Analytics. Synonyms: [Name, C2g Codabankaccountname C, C2g Codabankname C, Scmc Payment Terms Name C, Scmffa Company Name C, Ffx Smc Firstname C, Ffx Smc Lastname C, Region Name, Pse Region Name Chain C, Practice Name, Sales Representative]"
    group_label: "Attributes"
    synonyms: ["Name", "C2g Codabankaccountname C", "C2g Codabankname C", "Scmc Payment Terms Name C", "Scmffa Company Name C", "Ffx Smc Firstname C", "Ffx Smc Lastname C", "Region Name", "Pse Region Name Chain C", "Practice Name", "Sales Representative"]
    tags: ["conversational"]
    suggest_dimension: name
  }

  dimension: is_resource {
    label: "Is Resource"
    type: string
    sql: ${TABLE}.is_resource ;;
    description: "Is Resource — business attribute for Conversational Analytics. Synonyms: [Is Resource, Sales Representative]"
    group_label: "Classification"
    synonyms: ["Is Resource", "Sales Representative"]
    tags: ["conversational"]
  }

}
