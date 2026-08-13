view: dim_account {
  label: "Account"
  sql_table_name: gold.dim_account ;;
  description: "Logical entity Account. Synonyms: [Account, Accounts, Accounts Data, Customer Account, accounts_data, Dim Account]"

  dimension: account_id {
    label: "Account ID"
    primary_key: yes
    type: string
    sql: ${TABLE}.account_id ;;
    description: "Account ID — business attribute for Conversational Analytics. Synonyms: [Account Id, Account, Accounts, Accounts Data, Customer Account, accounts_data, Account ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: master_record_id {
    label: "Masterrecordid"
    type: string
    sql: ${TABLE}.MasterRecordId ;;
    description: "Masterrecordid — business attribute for Conversational Analytics. Synonyms: [Masterrecordid, Account, Master Record ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: name {
    label: "Name"
    type: string
    sql: ${TABLE}.Name ;;
    description: "Name — business attribute for Conversational Analytics. Synonyms: [Name, Account]"
    group_label: "Attributes"
    synonyms: ["Name", "Account"]
    tags: ["conversational"]
    suggest_dimension: name
  }

  dimension: type {
    label: "Type"
    type: string
    sql: ${TABLE}.Type ;;
    description: "Type — business attribute for Conversational Analytics. Synonyms: [Type, Account]"
    group_label: "Classification"
    synonyms: ["Type", "Account"]
    tags: ["conversational"]
  }

  dimension: record_type_id {
    label: "Recordtypeid"
    type: string
    sql: ${TABLE}.RecordTypeId ;;
    description: "Recordtypeid — business attribute for Conversational Analytics. Synonyms: [Recordtypeid, Type, Account, Record Type ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: parent_id {
    label: "Parentid"
    type: string
    sql: ${TABLE}.ParentId ;;
    description: "Parentid — business attribute for Conversational Analytics. Synonyms: [Parentid, Account, Parent ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: billing_street {
    label: "Billingstreet"
    type: string
    sql: ${TABLE}.BillingStreet ;;
    description: "Billingstreet — business attribute for Conversational Analytics. Synonyms: [Billingstreet, Account, Billing Street]"
    group_label: "Attributes"
    synonyms: ["Billingstreet", "Account", "Billing Street"]
    tags: ["conversational"]
  }

  dimension: billing_city {
    label: "Billingcity"
    type: string
    sql: ${TABLE}.BillingCity ;;
    description: "Billingcity — business attribute for Conversational Analytics. Synonyms: [Billingcity, Account, Billing City]"
    group_label: "Attributes"
    synonyms: ["Billingcity", "Account", "Billing City"]
    tags: ["conversational"]
  }

  dimension: billing_state {
    label: "Billingstate"
    type: string
    sql: ${TABLE}.BillingState ;;
    description: "Billingstate — business attribute for Conversational Analytics. Synonyms: [Billingstate, Account, Billing State]"
    group_label: "Attributes"
    synonyms: ["Billingstate", "Account", "Billing State"]
    tags: ["conversational"]
  }

  dimension: billing_postal_code {
    label: "Billingpostalcode"
    type: string
    sql: ${TABLE}.BillingPostalCode ;;
    description: "Billingpostalcode — business attribute for Conversational Analytics. Synonyms: [Billingpostalcode, Account, Billing Postal Code]"
    group_label: "Attributes"
    synonyms: ["Billingpostalcode", "Account", "Billing Postal Code"]
    tags: ["conversational"]
  }

  dimension: billing_country {
    label: "Billingcountry"
    type: string
    sql: ${TABLE}.BillingCountry ;;
    description: "Billingcountry — business attribute for Conversational Analytics. Synonyms: [Billingcountry, Account, Billing Country]"
    group_label: "Amounts"
    synonyms: ["Billingcountry", "Account", "Billing Country"]
    tags: ["conversational"]
  }

  dimension: billing_latitude {
    label: "Billinglatitude"
    type: string
    sql: ${TABLE}.BillingLatitude ;;
    description: "Billinglatitude — business attribute for Conversational Analytics. Synonyms: [Billinglatitude, Account, Billing Latitude]"
    group_label: "Attributes"
    synonyms: ["Billinglatitude", "Account", "Billing Latitude"]
    tags: ["conversational"]
  }

  dimension: billing_longitude {
    label: "Billinglongitude"
    type: string
    sql: ${TABLE}.BillingLongitude ;;
    description: "Billinglongitude — business attribute for Conversational Analytics. Synonyms: [Billinglongitude, Account, Billing Longitude]"
    group_label: "Attributes"
    synonyms: ["Billinglongitude", "Account", "Billing Longitude"]
    tags: ["conversational"]
  }

  dimension: billing_geocode_accuracy {
    label: "Billinggeocodeaccuracy"
    type: string
    sql: ${TABLE}.BillingGeocodeAccuracy ;;
    description: "Billinggeocodeaccuracy — business attribute for Conversational Analytics. Synonyms: [Billinggeocodeaccuracy, Account, Billing Geocode Accuracy]"
    group_label: "Attributes"
    synonyms: ["Billinggeocodeaccuracy", "Account", "Billing Geocode Accuracy"]
    tags: ["conversational"]
  }

  dimension: shipping_street {
    label: "Shippingstreet"
    type: string
    sql: ${TABLE}.ShippingStreet ;;
    description: "Shippingstreet — business attribute for Conversational Analytics. Synonyms: [Shippingstreet, Account, Shipping Street]"
    group_label: "Attributes"
    synonyms: ["Shippingstreet", "Account", "Shipping Street"]
    tags: ["conversational"]
  }

  dimension: shipping_city {
    label: "Shippingcity"
    type: string
    sql: ${TABLE}.ShippingCity ;;
    description: "Shippingcity — business attribute for Conversational Analytics. Synonyms: [Shippingcity, Account, Shipping City]"
    group_label: "Attributes"
    synonyms: ["Shippingcity", "Account", "Shipping City"]
    tags: ["conversational"]
  }

  dimension: shipping_state {
    label: "Shippingstate"
    type: string
    sql: ${TABLE}.ShippingState ;;
    description: "Shippingstate — business attribute for Conversational Analytics. Synonyms: [Shippingstate, Account, Shipping State]"
    group_label: "Attributes"
    synonyms: ["Shippingstate", "Account", "Shipping State"]
    tags: ["conversational"]
  }

  dimension: shipping_postal_code {
    label: "Shippingpostalcode"
    type: string
    sql: ${TABLE}.ShippingPostalCode ;;
    description: "Shippingpostalcode — business attribute for Conversational Analytics. Synonyms: [Shippingpostalcode, Account, Shipping Postal Code]"
    group_label: "Attributes"
    synonyms: ["Shippingpostalcode", "Account", "Shipping Postal Code"]
    tags: ["conversational"]
  }

  dimension: shipping_country {
    label: "Shippingcountry"
    type: string
    sql: ${TABLE}.ShippingCountry ;;
    description: "Shippingcountry — business attribute for Conversational Analytics. Synonyms: [Shippingcountry, Account, Shipping Country]"
    group_label: "Amounts"
    synonyms: ["Shippingcountry", "Account", "Shipping Country"]
    tags: ["conversational"]
  }

  dimension: shipping_latitude {
    label: "Shippinglatitude"
    type: string
    sql: ${TABLE}.ShippingLatitude ;;
    description: "Shippinglatitude — business attribute for Conversational Analytics. Synonyms: [Shippinglatitude, Account, Shipping Latitude]"
    group_label: "Attributes"
    synonyms: ["Shippinglatitude", "Account", "Shipping Latitude"]
    tags: ["conversational"]
  }

  dimension: shipping_longitude {
    label: "Shippinglongitude"
    type: string
    sql: ${TABLE}.ShippingLongitude ;;
    description: "Shippinglongitude — business attribute for Conversational Analytics. Synonyms: [Shippinglongitude, Account, Shipping Longitude]"
    group_label: "Attributes"
    synonyms: ["Shippinglongitude", "Account", "Shipping Longitude"]
    tags: ["conversational"]
  }

  dimension: shipping_geocode_accuracy {
    label: "Shippinggeocodeaccuracy"
    type: string
    sql: ${TABLE}.ShippingGeocodeAccuracy ;;
    description: "Shippinggeocodeaccuracy — business attribute for Conversational Analytics. Synonyms: [Shippinggeocodeaccuracy, Account, Shipping Geocode Accuracy]"
    group_label: "Attributes"
    synonyms: ["Shippinggeocodeaccuracy", "Account", "Shipping Geocode Accuracy"]
    tags: ["conversational"]
  }

  dimension: phone {
    label: "Phone"
    type: string
    sql: ${TABLE}.Phone ;;
    description: "Phone — business attribute for Conversational Analytics. Synonyms: [Phone, Account]"
    group_label: "Attributes"
    synonyms: ["Phone", "Account"]
    tags: ["conversational"]
    suggest_dimension: phone
  }

  dimension: fax {
    label: "Fax"
    type: string
    sql: ${TABLE}.Fax ;;
    description: "Fax — business attribute for Conversational Analytics. Synonyms: [Fax, Account]"
    group_label: "Attributes"
    synonyms: ["Fax", "Account"]
    tags: ["conversational"]
  }

  dimension: account_number {
    label: "Accountnumber"
    type: string
    sql: ${TABLE}.AccountNumber ;;
    description: "Accountnumber — business attribute for Conversational Analytics. Synonyms: [Accountnumber, Account, Accounts, Accounts Data, Customer Account, accounts_data, Account Number]"
    group_label: "Amounts"
    synonyms: ["Accountnumber", "Account", "Accounts", "Accounts Data", "Customer Account", "accounts_data", "Account Number"]
    tags: ["conversational"]
  }

  dimension: website {
    label: "Website"
    type: string
    sql: ${TABLE}.Website ;;
    description: "Website — business attribute for Conversational Analytics. Synonyms: [Website, Account]"
    group_label: "Attributes"
    synonyms: ["Website", "Account"]
    tags: ["conversational"]
  }

  dimension: photo_url {
    label: "Photourl"
    type: string
    sql: ${TABLE}.PhotoUrl ;;
    description: "Photourl — business attribute for Conversational Analytics. Synonyms: [Photourl, Account, Photo Url]"
    group_label: "Attributes"
    synonyms: ["Photourl", "Account", "Photo Url"]
    tags: ["conversational"]
  }

  dimension: sic {
    label: "Sic"
    type: string
    sql: ${TABLE}.Sic ;;
    description: "Sic — business attribute for Conversational Analytics. Synonyms: [Sic, Account]"
    group_label: "Attributes"
    synonyms: ["Sic", "Account"]
    tags: ["conversational"]
  }

  dimension: industry {
    label: "Industry"
    type: string
    sql: ${TABLE}.Industry ;;
    description: "Industry — business attribute for Conversational Analytics. Synonyms: [Industry, Account]"
    group_label: "Attributes"
    synonyms: ["Industry", "Account"]
    tags: ["conversational"]
  }

  dimension: annual_revenue {
    label: "Annualrevenue"
    type: string
    sql: ${TABLE}.AnnualRevenue ;;
    description: "Annualrevenue — business attribute for Conversational Analytics. Synonyms: [Annualrevenue, Account, Annual Revenue]"
    group_label: "Amounts"
    value_format_name: decimal_0
    synonyms: ["Annualrevenue", "Account", "Annual Revenue"]
    tags: ["conversational"]
  }

  dimension: number_of_employees {
    label: "Numberofemployees"
    type: string
    sql: ${TABLE}.NumberOfEmployees ;;
    description: "Numberofemployees — business attribute for Conversational Analytics. Synonyms: [Numberofemployees, Account, Number Of Employees]"
    group_label: "Attributes"
    synonyms: ["Numberofemployees", "Account", "Number Of Employees"]
    tags: ["conversational"]
  }

  dimension: ownership {
    label: "Ownership"
    type: string
    sql: ${TABLE}.Ownership ;;
    description: "Ownership — business attribute for Conversational Analytics. Synonyms: [Ownership, Account]"
    group_label: "Attributes"
    synonyms: ["Ownership", "Account"]
    tags: ["conversational"]
  }

  dimension: ticker_symbol {
    label: "Tickersymbol"
    type: string
    sql: ${TABLE}.TickerSymbol ;;
    description: "Tickersymbol — business attribute for Conversational Analytics. Synonyms: [Tickersymbol, Account, Ticker Symbol]"
    group_label: "Attributes"
    synonyms: ["Tickersymbol", "Account", "Ticker Symbol"]
    tags: ["conversational"]
  }

  dimension: description {
    label: "Description"
    type: string
    sql: ${TABLE}.Description ;;
    description: "Description — business attribute for Conversational Analytics. Synonyms: [Description, Account]"
    group_label: "Attributes"
    synonyms: ["Description", "Account"]
    tags: ["conversational"]
    suggest_dimension: description
  }

  dimension: rating {
    label: "Rating"
    type: string
    sql: ${TABLE}.Rating ;;
    description: "Rating — business attribute for Conversational Analytics. Synonyms: [Rating, Account]"
    group_label: "Attributes"
    synonyms: ["Rating", "Account"]
    tags: ["conversational"]
  }

  dimension: site {
    label: "Site"
    type: string
    sql: ${TABLE}.Site ;;
    description: "Site — business attribute for Conversational Analytics. Synonyms: [Site, Website, Account]"
    group_label: "Attributes"
    synonyms: ["Site", "Website", "Account"]
    tags: ["conversational"]
  }

  dimension: currency_iso_code {
    label: "Currencyisocode"
    type: string
    sql: ${TABLE}.CurrencyIsoCode ;;
    description: "Currencyisocode — business attribute for Conversational Analytics. Synonyms: [Currencyisocode, Account, Currency Iso Code]"
    group_label: "Attributes"
    synonyms: ["Currencyisocode", "Account", "Currency Iso Code"]
    tags: ["conversational"]
    suggestions: ["GBP"]
  }

  dimension: owner_id {
    label: "Ownerid"
    type: string
    sql: ${TABLE}.OwnerId ;;
    description: "Ownerid — business attribute for Conversational Analytics. Synonyms: [Ownerid, Account, Owner ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: created_date {
    label: "Createddate"
    type: string
    sql: ${TABLE}.CreatedDate ;;
    description: "Createddate — business attribute for Conversational Analytics. Synonyms: [Createddate, Account, Created Date]"
    group_label: "Dates"
    synonyms: ["Createddate", "Account", "Created Date"]
    tags: ["conversational"]
  }

  dimension: last_modified_date {
    label: "Lastmodifieddate"
    type: string
    sql: ${TABLE}.LastModifiedDate ;;
    description: "Lastmodifieddate — business attribute for Conversational Analytics. Synonyms: [Lastmodifieddate, Account, Last Modified Date]"
    group_label: "Dates"
    synonyms: ["Lastmodifieddate", "Account", "Last Modified Date"]
    tags: ["conversational"]
  }

  dimension: last_activity_date {
    label: "Lastactivitydate"
    type: string
    sql: ${TABLE}.LastActivityDate ;;
    description: "Lastactivitydate — business attribute for Conversational Analytics. Synonyms: [Lastactivitydate, Account, Last Activity Date]"
    group_label: "Dates"
    synonyms: ["Lastactivitydate", "Account", "Last Activity Date"]
    tags: ["conversational"]
  }

  dimension: jigsaw {
    label: "Jigsaw"
    type: string
    sql: ${TABLE}.Jigsaw ;;
    description: "Jigsaw — business attribute for Conversational Analytics. Synonyms: [Jigsaw, Account]"
    group_label: "Attributes"
    synonyms: ["Jigsaw", "Account"]
    tags: ["conversational"]
  }

  dimension: jigsaw_company_id {
    label: "Jigsawcompanyid"
    type: string
    sql: ${TABLE}.JigsawCompanyId ;;
    description: "Jigsawcompanyid — business attribute for Conversational Analytics. Synonyms: [Jigsawcompanyid, Jigsaw, Account, Jigsaw Company ID]"
    hidden: yes
    tags: ["internal"]
  }

  dimension: account_source {
    label: "Accountsource"
    type: string
    sql: ${TABLE}.AccountSource ;;
    description: "Accountsource — business attribute for Conversational Analytics. Synonyms: [Accountsource, Account, Accounts, Accounts Data, Customer Account, accounts_data, Account Source]"
    group_label: "Amounts"
    synonyms: ["Accountsource", "Account", "Accounts", "Accounts Data", "Customer Account", "accounts_data", "Account Source"]
    tags: ["conversational"]
  }

  dimension: sic_desc {
    label: "Sicdesc"
    type: string
    sql: ${TABLE}.SicDesc ;;
    description: "Sicdesc — business attribute for Conversational Analytics. Synonyms: [Sicdesc, Sic, Account, Sic Desc]"
    group_label: "Attributes"
    synonyms: ["Sicdesc", "Sic", "Account", "Sic Desc"]
    tags: ["conversational"]
  }

  dimension: is_priority_record {
    label: "Ispriorityrecord"
    type: string
    sql: ${TABLE}.IsPriorityRecord ;;
    description: "Ispriorityrecord — business attribute for Conversational Analytics. Synonyms: [Ispriorityrecord, Account, Is Priority Record]"
    group_label: "Classification"
    synonyms: ["Ispriorityrecord", "Account", "Is Priority Record"]
    tags: ["conversational"]
  }

  dimension: fferpcore_exemption_certificate_c {
    label: "Fferpcore Exemptioncertificate C"
    type: string
    sql: ${TABLE}.fferpcore__ExemptionCertificate__c ;;
    description: "Fferpcore Exemptioncertificate C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Exemptioncertificate C, Account, Fferpcore Exemption Certificate C]"
    group_label: "Attributes"
    synonyms: ["Fferpcore Exemptioncertificate C", "Account", "Fferpcore Exemption Certificate C"]
    tags: ["conversational"]
  }

  dimension: fferpcore_materialized_billing_address_validated_c {
    label: "Fferpcore Materializedbillingaddressvalidated C"
    type: string
    sql: ${TABLE}.fferpcore__MaterializedBillingAddressValidated__c ;;
    description: "Fferpcore Materializedbillingaddressvalidated C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Materializedbillingaddressvalidated C, Account, Fferpcore Materialized Billing Address Validated C]"
    group_label: "Dates"
    synonyms: ["Fferpcore Materializedbillingaddressvalidated C", "Account", "Fferpcore Materialized Billing Address Validated C"]
    tags: ["conversational"]
    suggest_dimension: fferpcore_materialized_billing_address_validated_c
  }

  dimension: fferpcore_materialized_shipping_address_validated_c {
    label: "Fferpcore Materializedshippingaddressvalidated C"
    type: string
    sql: ${TABLE}.fferpcore__MaterializedShippingAddressValidated__c ;;
    description: "Fferpcore Materializedshippingaddressvalidated C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Materializedshippingaddressvalidated C, Account, Fferpcore Materialized Shipping Address Validated C]"
    group_label: "Dates"
    synonyms: ["Fferpcore Materializedshippingaddressvalidated C", "Account", "Fferpcore Materialized Shipping Address Validated C"]
    tags: ["conversational"]
    suggest_dimension: fferpcore_materialized_shipping_address_validated_c
  }

  dimension: fferpcore_output_vat_code_c {
    label: "Fferpcore Outputvatcode C"
    type: string
    sql: ${TABLE}.fferpcore__OutputVatCode__c ;;
    description: "Fferpcore Outputvatcode C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Outputvatcode C, Account, Fferpcore Output Vat Code C]"
    group_label: "Attributes"
    synonyms: ["Fferpcore Outputvatcode C", "Account", "Fferpcore Output Vat Code C"]
    tags: ["conversational"]
  }

  dimension: fferpcore_sales_tax_status_c {
    label: "Fferpcore Salestaxstatus C"
    type: string
    sql: ${TABLE}.fferpcore__SalesTaxStatus__c ;;
    description: "Fferpcore Salestaxstatus C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Salestaxstatus C, Account, Fferpcore Sales Tax Status C]"
    group_label: "Classification"
    synonyms: ["Fferpcore Salestaxstatus C", "Account", "Fferpcore Sales Tax Status C"]
    tags: ["conversational"]
  }

  dimension: fferpcore_tax_code1_c {
    label: "Fferpcore Taxcode1 C"
    type: string
    sql: ${TABLE}.fferpcore__TaxCode1__c ;;
    description: "Fferpcore Taxcode1 C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Taxcode1 C, Account, Fferpcore Tax Code1 C]"
    group_label: "Attributes"
    synonyms: ["Fferpcore Taxcode1 C", "Account", "Fferpcore Tax Code1 C"]
    tags: ["conversational"]
  }

  dimension: fferpcore_tax_code2_c {
    label: "Fferpcore Taxcode2 C"
    type: string
    sql: ${TABLE}.fferpcore__TaxCode2__c ;;
    description: "Fferpcore Taxcode2 C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Taxcode2 C, Account, Fferpcore Tax Code2 C]"
    group_label: "Attributes"
    synonyms: ["Fferpcore Taxcode2 C", "Account", "Fferpcore Tax Code2 C"]
    tags: ["conversational"]
  }

  dimension: fferpcore_tax_code3_c {
    label: "Fferpcore Taxcode3 C"
    type: string
    sql: ${TABLE}.fferpcore__TaxCode3__c ;;
    description: "Fferpcore Taxcode3 C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Taxcode3 C, Account, Fferpcore Tax Code3 C]"
    group_label: "Attributes"
    synonyms: ["Fferpcore Taxcode3 C", "Account", "Fferpcore Tax Code3 C"]
    tags: ["conversational"]
  }

  dimension: fferpcore_tax_country_code_c {
    label: "Fferpcore Taxcountrycode C"
    type: string
    sql: ${TABLE}.fferpcore__TaxCountryCode__c ;;
    description: "Fferpcore Taxcountrycode C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Taxcountrycode C, Account, Fferpcore Tax Country Code C]"
    group_label: "Amounts"
    synonyms: ["Fferpcore Taxcountrycode C", "Account", "Fferpcore Tax Country Code C"]
    tags: ["conversational"]
  }

  dimension: fferpcore_validated_billing_city_c {
    label: "Fferpcore Validatedbillingcity C"
    type: string
    sql: ${TABLE}.fferpcore__ValidatedBillingCity__c ;;
    description: "Fferpcore Validatedbillingcity C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Validatedbillingcity C, Billingcity, Account, Fferpcore Validated Billing City C]"
    group_label: "Dates"
    synonyms: ["Fferpcore Validatedbillingcity C", "Billingcity", "Account", "Fferpcore Validated Billing City C"]
    tags: ["conversational"]
  }

  dimension: fferpcore_validated_billing_country_c {
    label: "Fferpcore Validatedbillingcountry C"
    type: string
    sql: ${TABLE}.fferpcore__ValidatedBillingCountry__c ;;
    description: "Fferpcore Validatedbillingcountry C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Validatedbillingcountry C, Billingcountry, Account, Fferpcore Validated Billing Country C]"
    group_label: "Dates"
    synonyms: ["Fferpcore Validatedbillingcountry C", "Billingcountry", "Account", "Fferpcore Validated Billing Country C"]
    tags: ["conversational"]
  }

  dimension: fferpcore_validated_billing_postal_code_c {
    label: "Fferpcore Validatedbillingpostalcode C"
    type: string
    sql: ${TABLE}.fferpcore__ValidatedBillingPostalCode__c ;;
    description: "Fferpcore Validatedbillingpostalcode C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Validatedbillingpostalcode C, Billingpostalcode, Account, Fferpcore Validated Billing Postal Code C]"
    group_label: "Dates"
    synonyms: ["Fferpcore Validatedbillingpostalcode C", "Billingpostalcode", "Account", "Fferpcore Validated Billing Postal Code C"]
    tags: ["conversational"]
  }

  dimension: fferpcore_validated_billing_state_c {
    label: "Fferpcore Validatedbillingstate C"
    type: string
    sql: ${TABLE}.fferpcore__ValidatedBillingState__c ;;
    description: "Fferpcore Validatedbillingstate C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Validatedbillingstate C, Billingstate, Account, Fferpcore Validated Billing State C]"
    group_label: "Dates"
    synonyms: ["Fferpcore Validatedbillingstate C", "Billingstate", "Account", "Fferpcore Validated Billing State C"]
    tags: ["conversational"]
  }

  dimension: fferpcore_validated_billing_street_c {
    label: "Fferpcore Validatedbillingstreet C"
    type: string
    sql: ${TABLE}.fferpcore__ValidatedBillingStreet__c ;;
    description: "Fferpcore Validatedbillingstreet C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Validatedbillingstreet C, Billingstreet, Account, Fferpcore Validated Billing Street C]"
    group_label: "Dates"
    synonyms: ["Fferpcore Validatedbillingstreet C", "Billingstreet", "Account", "Fferpcore Validated Billing Street C"]
    tags: ["conversational"]
  }

  dimension: fferpcore_validated_shipping_city_c {
    label: "Fferpcore Validatedshippingcity C"
    type: string
    sql: ${TABLE}.fferpcore__ValidatedShippingCity__c ;;
    description: "Fferpcore Validatedshippingcity C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Validatedshippingcity C, Shippingcity, Account, Fferpcore Validated Shipping City C]"
    group_label: "Dates"
    synonyms: ["Fferpcore Validatedshippingcity C", "Shippingcity", "Account", "Fferpcore Validated Shipping City C"]
    tags: ["conversational"]
  }

  dimension: fferpcore_validated_shipping_country_c {
    label: "Fferpcore Validatedshippingcountry C"
    type: string
    sql: ${TABLE}.fferpcore__ValidatedShippingCountry__c ;;
    description: "Fferpcore Validatedshippingcountry C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Validatedshippingcountry C, Shippingcountry, Account, Fferpcore Validated Shipping Country C]"
    group_label: "Dates"
    synonyms: ["Fferpcore Validatedshippingcountry C", "Shippingcountry", "Account", "Fferpcore Validated Shipping Country C"]
    tags: ["conversational"]
  }

  dimension: fferpcore_validated_shipping_postal_code_c {
    label: "Fferpcore Validatedshippingpostalcode C"
    type: string
    sql: ${TABLE}.fferpcore__ValidatedShippingPostalCode__c ;;
    description: "Fferpcore Validatedshippingpostalcode C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Validatedshippingpostalcode C, Shippingpostalcode, Account, Fferpcore Validated Shipping Postal Code C]"
    group_label: "Dates"
    synonyms: ["Fferpcore Validatedshippingpostalcode C", "Shippingpostalcode", "Account", "Fferpcore Validated Shipping Postal Code C"]
    tags: ["conversational"]
  }

  dimension: fferpcore_validated_shipping_state_c {
    label: "Fferpcore Validatedshippingstate C"
    type: string
    sql: ${TABLE}.fferpcore__ValidatedShippingState__c ;;
    description: "Fferpcore Validatedshippingstate C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Validatedshippingstate C, Shippingstate, Account, Fferpcore Validated Shipping State C]"
    group_label: "Dates"
    synonyms: ["Fferpcore Validatedshippingstate C", "Shippingstate", "Account", "Fferpcore Validated Shipping State C"]
    tags: ["conversational"]
  }

  dimension: fferpcore_validated_shipping_street_c {
    label: "Fferpcore Validatedshippingstreet C"
    type: string
    sql: ${TABLE}.fferpcore__ValidatedShippingStreet__c ;;
    description: "Fferpcore Validatedshippingstreet C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Validatedshippingstreet C, Shippingstreet, Account, Fferpcore Validated Shipping Street C]"
    group_label: "Dates"
    synonyms: ["Fferpcore Validatedshippingstreet C", "Shippingstreet", "Account", "Fferpcore Validated Shipping Street C"]
    tags: ["conversational"]
  }

  dimension: fferpcore_vat_registration_number_c {
    label: "Fferpcore Vatregistrationnumber C"
    type: string
    sql: ${TABLE}.fferpcore__VatRegistrationNumber__c ;;
    description: "Fferpcore Vatregistrationnumber C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Vatregistrationnumber C, Account, Fferpcore Vat Registration Number C]"
    group_label: "Attributes"
    value_format_name: percent_2
    synonyms: ["Fferpcore Vatregistrationnumber C", "Account", "Fferpcore Vat Registration Number C"]
    tags: ["conversational"]
  }

  dimension: fferpcore_vat_status_c {
    label: "Fferpcore Vatstatus C"
    type: string
    sql: ${TABLE}.fferpcore__VatStatus__c ;;
    description: "Fferpcore Vatstatus C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Vatstatus C, Account, Fferpcore Vat Status C]"
    group_label: "Classification"
    synonyms: ["Fferpcore Vatstatus C", "Account", "Fferpcore Vat Status C"]
    tags: ["conversational"]
  }

  dimension: fferpcore_is_billing_address_validated_c {
    label: "Fferpcore Isbillingaddressvalidated C"
    type: string
    sql: ${TABLE}.fferpcore__IsBillingAddressValidated__c ;;
    description: "Fferpcore Isbillingaddressvalidated C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Isbillingaddressvalidated C, Account, Fferpcore Is Billing Address Validated C]"
    group_label: "Dates"
    synonyms: ["Fferpcore Isbillingaddressvalidated C", "Account", "Fferpcore Is Billing Address Validated C"]
    tags: ["conversational"]
    suggest_dimension: fferpcore_is_billing_address_validated_c
  }

  dimension: fferpcore_is_shipping_address_validated_c {
    label: "Fferpcore Isshippingaddressvalidated C"
    type: string
    sql: ${TABLE}.fferpcore__IsShippingAddressValidated__c ;;
    description: "Fferpcore Isshippingaddressvalidated C — business attribute for Conversational Analytics. Synonyms: [Fferpcore Isshippingaddressvalidated C, Account, Fferpcore Is Shipping Address Validated C]"
    group_label: "Dates"
    synonyms: ["Fferpcore Isshippingaddressvalidated C", "Account", "Fferpcore Is Shipping Address Validated C"]
    tags: ["conversational"]
    suggest_dimension: fferpcore_is_shipping_address_validated_c
  }

  dimension: c2g_average_days_to_pay_c {
    label: "C2g Averagedaystopay C"
    type: string
    sql: ${TABLE}.c2g__AverageDaysToPay__c ;;
    description: "C2g Averagedaystopay C — business attribute for Conversational Analytics. Synonyms: [C2g Averagedaystopay C, Account, C2g Average Days To Pay C]"
    group_label: "Dates"
    synonyms: ["C2g Averagedaystopay C", "Account", "C2g Average Days To Pay C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_account_trading_currency_c {
    label: "C2g Codaaccounttradingcurrency C"
    type: string
    sql: ${TABLE}.c2g__CODAAccountTradingCurrency__c ;;
    description: "C2g Codaaccounttradingcurrency C — business attribute for Conversational Analytics. Synonyms: [C2g Codaaccounttradingcurrency C, Account, Accounts, Accounts Data, Customer Account, accounts_data, C2g Coda Account Trading Currency C]"
    group_label: "Amounts"
    synonyms: ["C2g Codaaccounttradingcurrency C", "Account", "Accounts", "Accounts Data", "Customer Account", "accounts_data", "C2g Coda Account Trading Currency C"]
    tags: ["conversational"]
    suggestions: ["GBP"]
  }

  dimension: c2g_coda_accounts_payable_control_c {
    label: "C2g Codaaccountspayablecontrol C"
    type: string
    sql: ${TABLE}.c2g__CODAAccountsPayableControl__c ;;
    description: "C2g Codaaccountspayablecontrol C — business attribute for Conversational Analytics. Synonyms: [C2g Codaaccountspayablecontrol C, Account, Accounts, Accounts Data, Customer Account, accounts_data, C2g Coda Accounts Payable Control C]"
    group_label: "Amounts"
    synonyms: ["C2g Codaaccountspayablecontrol C", "Account", "Accounts", "Accounts Data", "Customer Account", "accounts_data", "C2g Coda Accounts Payable Control C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_accounts_receivable_control_c {
    label: "C2g Codaaccountsreceivablecontrol C"
    type: string
    sql: ${TABLE}.c2g__CODAAccountsReceivableControl__c ;;
    description: "C2g Codaaccountsreceivablecontrol C — business attribute for Conversational Analytics. Synonyms: [C2g Codaaccountsreceivablecontrol C, Account, Accounts, Accounts Data, Customer Account, accounts_data, C2g Coda Accounts Receivable Control C]"
    group_label: "Amounts"
    synonyms: ["C2g Codaaccountsreceivablecontrol C", "Account", "Accounts", "Accounts Data", "Customer Account", "accounts_data", "C2g Coda Accounts Receivable Control C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_allow_delete_in_use_c {
    label: "C2g Codaallowdeleteinuse C"
    type: string
    sql: ${TABLE}.c2g__CODAAllowDeleteInUse__c ;;
    description: "C2g Codaallowdeleteinuse C — business attribute for Conversational Analytics. Synonyms: [C2g Codaallowdeleteinuse C, Account, C2g Coda Allow Delete In Use C]"
    group_label: "Attributes"
    synonyms: ["C2g Codaallowdeleteinuse C", "Account", "C2g Coda Allow Delete In Use C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_bank_account_name_c {
    label: "C2g Codabankaccountname C"
    type: string
    sql: ${TABLE}.c2g__CODABankAccountName__c ;;
    description: "C2g Codabankaccountname C — business attribute for Conversational Analytics. Synonyms: [C2g Codabankaccountname C, Account, Accounts, Accounts Data, Customer Account, accounts_data, Name, C2g Coda Bank Account Name C]"
    group_label: "Amounts"
    synonyms: ["C2g Codabankaccountname C", "Account", "Accounts", "Accounts Data", "Customer Account", "accounts_data", "Name", "C2g Coda Bank Account Name C"]
    tags: ["conversational"]
    suggest_dimension: c2g_coda_bank_account_name_c
  }

  dimension: c2g_coda_bank_account_number_c {
    label: "C2g Codabankaccountnumber C"
    type: string
    sql: ${TABLE}.c2g__CODABankAccountNumber__c ;;
    description: "C2g Codabankaccountnumber C — business attribute for Conversational Analytics. Synonyms: [C2g Codabankaccountnumber C, Account, Accounts, Accounts Data, Customer Account, accounts_data, Accountnumber, C2g Coda Bank Account Number C]"
    group_label: "Amounts"
    synonyms: ["C2g Codabankaccountnumber C", "Account", "Accounts", "Accounts Data", "Customer Account", "accounts_data", "Accountnumber", "C2g Coda Bank Account Number C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_bank_account_reference_c {
    label: "C2g Codabankaccountreference C"
    type: string
    sql: ${TABLE}.c2g__CODABankAccountReference__c ;;
    description: "C2g Codabankaccountreference C — business attribute for Conversational Analytics. Synonyms: [C2g Codabankaccountreference C, Account, Accounts, Accounts Data, Customer Account, accounts_data, C2g Coda Bank Account Reference C]"
    group_label: "Amounts"
    synonyms: ["C2g Codabankaccountreference C", "Account", "Accounts", "Accounts Data", "Customer Account", "accounts_data", "C2g Coda Bank Account Reference C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_bank_city_c {
    label: "C2g Codabankcity C"
    type: string
    sql: ${TABLE}.c2g__CODABankCity__c ;;
    description: "C2g Codabankcity C — business attribute for Conversational Analytics. Synonyms: [C2g Codabankcity C, Account, C2g Coda Bank City C]"
    group_label: "Attributes"
    synonyms: ["C2g Codabankcity C", "Account", "C2g Coda Bank City C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_bank_country_c {
    label: "C2g Codabankcountry C"
    type: string
    sql: ${TABLE}.c2g__CODABankCountry__c ;;
    description: "C2g Codabankcountry C — business attribute for Conversational Analytics. Synonyms: [C2g Codabankcountry C, Account, C2g Coda Bank Country C]"
    group_label: "Amounts"
    synonyms: ["C2g Codabankcountry C", "Account", "C2g Coda Bank Country C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_bank_fax_c {
    label: "C2g Codabankfax C"
    type: string
    sql: ${TABLE}.c2g__CODABankFax__c ;;
    description: "C2g Codabankfax C — business attribute for Conversational Analytics. Synonyms: [C2g Codabankfax C, Fax, Account, C2g Coda Bank Fax C]"
    group_label: "Attributes"
    synonyms: ["C2g Codabankfax C", "Fax", "Account", "C2g Coda Bank Fax C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_bank_iban_number_c {
    label: "C2g Codabankibannumber C"
    type: string
    sql: ${TABLE}.c2g__CODABankIBANNumber__c ;;
    description: "C2g Codabankibannumber C — business attribute for Conversational Analytics. Synonyms: [C2g Codabankibannumber C, Account, C2g Coda Bank Iban Number C]"
    group_label: "Attributes"
    synonyms: ["C2g Codabankibannumber C", "Account", "C2g Coda Bank Iban Number C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_bank_name_c {
    label: "C2g Codabankname C"
    type: string
    sql: ${TABLE}.c2g__CODABankName__c ;;
    description: "C2g Codabankname C — business attribute for Conversational Analytics. Synonyms: [C2g Codabankname C, Name, Account, C2g Coda Bank Name C]"
    group_label: "Attributes"
    synonyms: ["C2g Codabankname C", "Name", "Account", "C2g Coda Bank Name C"]
    tags: ["conversational"]
    suggest_dimension: c2g_coda_bank_name_c
  }

  dimension: c2g_coda_bank_phone_c {
    label: "C2g Codabankphone C"
    type: string
    sql: ${TABLE}.c2g__CODABankPhone__c ;;
    description: "C2g Codabankphone C — business attribute for Conversational Analytics. Synonyms: [C2g Codabankphone C, Phone, Account, C2g Coda Bank Phone C]"
    group_label: "Attributes"
    synonyms: ["C2g Codabankphone C", "Phone", "Account", "C2g Coda Bank Phone C"]
    tags: ["conversational"]
    suggest_dimension: c2g_coda_bank_phone_c
  }

  dimension: c2g_coda_bank_swift_number_c {
    label: "C2g Codabankswiftnumber C"
    type: string
    sql: ${TABLE}.c2g__CODABankSWIFTNumber__c ;;
    description: "C2g Codabankswiftnumber C — business attribute for Conversational Analytics. Synonyms: [C2g Codabankswiftnumber C, Account, C2g Coda Bank Swift Number C]"
    group_label: "Attributes"
    synonyms: ["C2g Codabankswiftnumber C", "Account", "C2g Coda Bank Swift Number C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_bank_sort_code_c {
    label: "C2g Codabanksortcode C"
    type: string
    sql: ${TABLE}.c2g__CODABankSortCode__c ;;
    description: "C2g Codabanksortcode C — business attribute for Conversational Analytics. Synonyms: [C2g Codabanksortcode C, Account, C2g Coda Bank Sort Code C]"
    group_label: "Attributes"
    synonyms: ["C2g Codabanksortcode C", "Account", "C2g Coda Bank Sort Code C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_bank_state_province_c {
    label: "C2g Codabankstateprovince C"
    type: string
    sql: ${TABLE}.c2g__CODABankStateProvince__c ;;
    description: "C2g Codabankstateprovince C — business attribute for Conversational Analytics. Synonyms: [C2g Codabankstateprovince C, Account, C2g Coda Bank State Province C]"
    group_label: "Attributes"
    synonyms: ["C2g Codabankstateprovince C", "Account", "C2g Coda Bank State Province C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_bank_street_c {
    label: "C2g Codabankstreet C"
    type: string
    sql: ${TABLE}.c2g__CODABankStreet__c ;;
    description: "C2g Codabankstreet C — business attribute for Conversational Analytics. Synonyms: [C2g Codabankstreet C, Account, C2g Coda Bank Street C]"
    group_label: "Attributes"
    synonyms: ["C2g Codabankstreet C", "Account", "C2g Coda Bank Street C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_bank_zip_postal_code_c {
    label: "C2g Codabankzippostalcode C"
    type: string
    sql: ${TABLE}.c2g__CODABankZipPostalCode__c ;;
    description: "C2g Codabankzippostalcode C — business attribute for Conversational Analytics. Synonyms: [C2g Codabankzippostalcode C, Account, C2g Coda Bank Zip Postal Code C]"
    group_label: "Attributes"
    synonyms: ["C2g Codabankzippostalcode C", "Account", "C2g Coda Bank Zip Postal Code C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_base_date1_c {
    label: "C2g Codabasedate1 C"
    type: string
    sql: ${TABLE}.c2g__CODABaseDate1__c ;;
    description: "C2g Codabasedate1 C — business attribute for Conversational Analytics. Synonyms: [C2g Codabasedate1 C, Account, C2g Coda Base Date1 C]"
    group_label: "Dates"
    synonyms: ["C2g Codabasedate1 C", "Account", "C2g Coda Base Date1 C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_base_date2_c {
    label: "C2g Codabasedate2 C"
    type: string
    sql: ${TABLE}.c2g__CODABaseDate2__c ;;
    description: "C2g Codabasedate2 C — business attribute for Conversational Analytics. Synonyms: [C2g Codabasedate2 C, Account, C2g Coda Base Date2 C]"
    group_label: "Dates"
    synonyms: ["C2g Codabasedate2 C", "Account", "C2g Coda Base Date2 C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_base_date3_c {
    label: "C2g Codabasedate3 C"
    type: string
    sql: ${TABLE}.c2g__CODABaseDate3__c ;;
    description: "C2g Codabasedate3 C — business attribute for Conversational Analytics. Synonyms: [C2g Codabasedate3 C, Account, C2g Coda Base Date3 C]"
    group_label: "Dates"
    synonyms: ["C2g Codabasedate3 C", "Account", "C2g Coda Base Date3 C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_base_date4_c {
    label: "C2g Codabasedate4 C"
    type: string
    sql: ${TABLE}.c2g__CODABaseDate4__c ;;
    description: "C2g Codabasedate4 C — business attribute for Conversational Analytics. Synonyms: [C2g Codabasedate4 C, Account, C2g Coda Base Date4 C]"
    group_label: "Dates"
    synonyms: ["C2g Codabasedate4 C", "Account", "C2g Coda Base Date4 C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_billing_method_c {
    label: "C2g Codabillingmethod C"
    type: string
    sql: ${TABLE}.c2g__CODABillingMethod__c ;;
    description: "C2g Codabillingmethod C — business attribute for Conversational Analytics. Synonyms: [C2g Codabillingmethod C, Account, C2g Coda Billing Method C]"
    group_label: "Attributes"
    synonyms: ["C2g Codabillingmethod C", "Account", "C2g Coda Billing Method C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_credit_agency_c {
    label: "C2g Codacreditagency C"
    type: string
    sql: ${TABLE}.c2g__CODACreditAgency__c ;;
    description: "C2g Codacreditagency C — business attribute for Conversational Analytics. Synonyms: [C2g Codacreditagency C, Account, C2g Coda Credit Agency C]"
    group_label: "Attributes"
    synonyms: ["C2g Codacreditagency C", "Account", "C2g Coda Credit Agency C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_credit_limit_enabled_c {
    label: "C2g Codacreditlimitenabled C"
    type: string
    sql: ${TABLE}.c2g__CODACreditLimitEnabled__c ;;
    description: "C2g Codacreditlimitenabled C — business attribute for Conversational Analytics. Synonyms: [C2g Codacreditlimitenabled C, Account, C2g Coda Credit Limit Enabled C]"
    group_label: "Attributes"
    synonyms: ["C2g Codacreditlimitenabled C", "Account", "C2g Coda Credit Limit Enabled C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_credit_limit_reviewed_c {
    label: "C2g Codacreditlimitreviewed C"
    type: string
    sql: ${TABLE}.c2g__CODACreditLimitReviewed__c ;;
    description: "C2g Codacreditlimitreviewed C — business attribute for Conversational Analytics. Synonyms: [C2g Codacreditlimitreviewed C, Account, C2g Coda Credit Limit Reviewed C]"
    group_label: "Attributes"
    synonyms: ["C2g Codacreditlimitreviewed C", "Account", "C2g Coda Credit Limit Reviewed C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_credit_limit_c {
    label: "C2g Codacreditlimit C"
    type: string
    sql: ${TABLE}.c2g__CODACreditLimit__c ;;
    description: "C2g Codacreditlimit C — business attribute for Conversational Analytics. Synonyms: [C2g Codacreditlimit C, Account, C2g Coda Credit Limit C]"
    group_label: "Attributes"
    synonyms: ["C2g Codacreditlimit C", "Account", "C2g Coda Credit Limit C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_credit_manager_c {
    label: "C2g Codacreditmanager C"
    type: string
    sql: ${TABLE}.c2g__CODACreditManager__c ;;
    description: "C2g Codacreditmanager C — business attribute for Conversational Analytics. Synonyms: [C2g Codacreditmanager C, Account, C2g Coda Credit Manager C]"
    group_label: "Attributes"
    synonyms: ["C2g Codacreditmanager C", "Account", "C2g Coda Credit Manager C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_credit_rating_reviewed_c {
    label: "C2g Codacreditratingreviewed C"
    type: string
    sql: ${TABLE}.c2g__CODACreditRatingReviewed__c ;;
    description: "C2g Codacreditratingreviewed C — business attribute for Conversational Analytics. Synonyms: [C2g Codacreditratingreviewed C, Rating, Account, C2g Coda Credit Rating Reviewed C]"
    group_label: "Attributes"
    synonyms: ["C2g Codacreditratingreviewed C", "Rating", "Account", "C2g Coda Credit Rating Reviewed C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_credit_rating_c {
    label: "C2g Codacreditrating C"
    type: string
    sql: ${TABLE}.c2g__CODACreditRating__c ;;
    description: "C2g Codacreditrating C — business attribute for Conversational Analytics. Synonyms: [C2g Codacreditrating C, Rating, Account, C2g Coda Credit Rating C]"
    group_label: "Attributes"
    synonyms: ["C2g Codacreditrating C", "Rating", "Account", "C2g Coda Credit Rating C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_credit_reference_c {
    label: "C2g Codacreditreference C"
    type: string
    sql: ${TABLE}.c2g__CODACreditReference__c ;;
    description: "C2g Codacreditreference C — business attribute for Conversational Analytics. Synonyms: [C2g Codacreditreference C, Account, C2g Coda Credit Reference C]"
    group_label: "Attributes"
    synonyms: ["C2g Codacreditreference C", "Account", "C2g Coda Credit Reference C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_credit_status_c {
    label: "C2g Codacreditstatus C"
    type: string
    sql: ${TABLE}.c2g__CODACreditStatus__c ;;
    description: "C2g Codacreditstatus C — business attribute for Conversational Analytics. Synonyms: [C2g Codacreditstatus C, Account, C2g Coda Credit Status C]"
    group_label: "Classification"
    synonyms: ["C2g Codacreditstatus C", "Account", "C2g Coda Credit Status C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_days_offset1_c {
    label: "C2g Codadaysoffset1 C"
    type: string
    sql: ${TABLE}.c2g__CODADaysOffset1__c ;;
    description: "C2g Codadaysoffset1 C — business attribute for Conversational Analytics. Synonyms: [C2g Codadaysoffset1 C, Account, C2g Coda Days Offset1 C]"
    group_label: "Dates"
    synonyms: ["C2g Codadaysoffset1 C", "Account", "C2g Coda Days Offset1 C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_days_offset2_c {
    label: "C2g Codadaysoffset2 C"
    type: string
    sql: ${TABLE}.c2g__CODADaysOffset2__c ;;
    description: "C2g Codadaysoffset2 C — business attribute for Conversational Analytics. Synonyms: [C2g Codadaysoffset2 C, Account, C2g Coda Days Offset2 C]"
    group_label: "Dates"
    synonyms: ["C2g Codadaysoffset2 C", "Account", "C2g Coda Days Offset2 C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_days_offset3_c {
    label: "C2g Codadaysoffset3 C"
    type: string
    sql: ${TABLE}.c2g__CODADaysOffset3__c ;;
    description: "C2g Codadaysoffset3 C — business attribute for Conversational Analytics. Synonyms: [C2g Codadaysoffset3 C, Account, C2g Coda Days Offset3 C]"
    group_label: "Dates"
    synonyms: ["C2g Codadaysoffset3 C", "Account", "C2g Coda Days Offset3 C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_days_offset4_c {
    label: "C2g Codadaysoffset4 C"
    type: string
    sql: ${TABLE}.c2g__CODADaysOffset4__c ;;
    description: "C2g Codadaysoffset4 C — business attribute for Conversational Analytics. Synonyms: [C2g Codadaysoffset4 C, Account, C2g Coda Days Offset4 C]"
    group_label: "Dates"
    synonyms: ["C2g Codadaysoffset4 C", "Account", "C2g Coda Days Offset4 C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_default_expense_account_c {
    label: "C2g Codadefaultexpenseaccount C"
    type: string
    sql: ${TABLE}.c2g__CODADefaultExpenseAccount__c ;;
    description: "C2g Codadefaultexpenseaccount C — business attribute for Conversational Analytics. Synonyms: [C2g Codadefaultexpenseaccount C, Account, Accounts, Accounts Data, Customer Account, accounts_data, C2g Coda Default Expense Account C]"
    group_label: "Amounts"
    synonyms: ["C2g Codadefaultexpenseaccount C", "Account", "Accounts", "Accounts Data", "Customer Account", "accounts_data", "C2g Coda Default Expense Account C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_description1_c {
    label: "C2g Codadescription1 C"
    type: string
    sql: ${TABLE}.c2g__CODADescription1__c ;;
    description: "C2g Codadescription1 C — business attribute for Conversational Analytics. Synonyms: [C2g Codadescription1 C, Description, Account, C2g Coda Description1 C]"
    group_label: "Attributes"
    synonyms: ["C2g Codadescription1 C", "Description", "Account", "C2g Coda Description1 C"]
    tags: ["conversational"]
    suggest_dimension: c2g_coda_description1_c
  }

  dimension: c2g_coda_description2_c {
    label: "C2g Codadescription2 C"
    type: string
    sql: ${TABLE}.c2g__CODADescription2__c ;;
    description: "C2g Codadescription2 C — business attribute for Conversational Analytics. Synonyms: [C2g Codadescription2 C, Description, Account, C2g Coda Description2 C]"
    group_label: "Attributes"
    synonyms: ["C2g Codadescription2 C", "Description", "Account", "C2g Coda Description2 C"]
    tags: ["conversational"]
    suggest_dimension: c2g_coda_description2_c
  }

  dimension: c2g_coda_description3_c {
    label: "C2g Codadescription3 C"
    type: string
    sql: ${TABLE}.c2g__CODADescription3__c ;;
    description: "C2g Codadescription3 C — business attribute for Conversational Analytics. Synonyms: [C2g Codadescription3 C, Description, Account, C2g Coda Description3 C]"
    group_label: "Attributes"
    synonyms: ["C2g Codadescription3 C", "Description", "Account", "C2g Coda Description3 C"]
    tags: ["conversational"]
    suggest_dimension: c2g_coda_description3_c
  }

  dimension: c2g_coda_description4_c {
    label: "C2g Codadescription4 C"
    type: string
    sql: ${TABLE}.c2g__CODADescription4__c ;;
    description: "C2g Codadescription4 C — business attribute for Conversational Analytics. Synonyms: [C2g Codadescription4 C, Description, Account, C2g Coda Description4 C]"
    group_label: "Attributes"
    synonyms: ["C2g Codadescription4 C", "Description", "Account", "C2g Coda Description4 C"]
    tags: ["conversational"]
    suggest_dimension: c2g_coda_description4_c
  }

  dimension: c2g_coda_dimension1_c {
    label: "C2g Codadimension1 C"
    type: string
    sql: ${TABLE}.c2g__CODADimension1__c ;;
    description: "C2g Codadimension1 C — business attribute for Conversational Analytics. Synonyms: [C2g Codadimension1 C, Account, C2g Coda Dimension1 C]"
    group_label: "Attributes"
    synonyms: ["C2g Codadimension1 C", "Account", "C2g Coda Dimension1 C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_dimension2_c {
    label: "C2g Codadimension2 C"
    type: string
    sql: ${TABLE}.c2g__CODADimension2__c ;;
    description: "C2g Codadimension2 C — business attribute for Conversational Analytics. Synonyms: [C2g Codadimension2 C, Account, C2g Coda Dimension2 C]"
    group_label: "Attributes"
    synonyms: ["C2g Codadimension2 C", "Account", "C2g Coda Dimension2 C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_dimension3_c {
    label: "C2g Codadimension3 C"
    type: string
    sql: ${TABLE}.c2g__CODADimension3__c ;;
    description: "C2g Codadimension3 C — business attribute for Conversational Analytics. Synonyms: [C2g Codadimension3 C, Account, C2g Coda Dimension3 C]"
    group_label: "Attributes"
    synonyms: ["C2g Codadimension3 C", "Account", "C2g Coda Dimension3 C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_dimension4_c {
    label: "C2g Codadimension4 C"
    type: string
    sql: ${TABLE}.c2g__CODADimension4__c ;;
    description: "C2g Codadimension4 C — business attribute for Conversational Analytics. Synonyms: [C2g Codadimension4 C, Account, C2g Coda Dimension4 C]"
    group_label: "Attributes"
    synonyms: ["C2g Codadimension4 C", "Account", "C2g Coda Dimension4 C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_discount1_c {
    label: "C2g Codadiscount1 C"
    type: string
    sql: ${TABLE}.c2g__CODADiscount1__c ;;
    description: "C2g Codadiscount1 C — business attribute for Conversational Analytics. Synonyms: [C2g Codadiscount1 C, Account, C2g Coda Discount1 C]"
    group_label: "Amounts"
    synonyms: ["C2g Codadiscount1 C", "Account", "C2g Coda Discount1 C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_discount2_c {
    label: "C2g Codadiscount2 C"
    type: string
    sql: ${TABLE}.c2g__CODADiscount2__c ;;
    description: "C2g Codadiscount2 C — business attribute for Conversational Analytics. Synonyms: [C2g Codadiscount2 C, Account, C2g Coda Discount2 C]"
    group_label: "Amounts"
    synonyms: ["C2g Codadiscount2 C", "Account", "C2g Coda Discount2 C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_discount3_c {
    label: "C2g Codadiscount3 C"
    type: string
    sql: ${TABLE}.c2g__CODADiscount3__c ;;
    description: "C2g Codadiscount3 C — business attribute for Conversational Analytics. Synonyms: [C2g Codadiscount3 C, Account, C2g Coda Discount3 C]"
    group_label: "Amounts"
    synonyms: ["C2g Codadiscount3 C", "Account", "C2g Coda Discount3 C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_discount4_c {
    label: "C2g Codadiscount4 C"
    type: string
    sql: ${TABLE}.c2g__CODADiscount4__c ;;
    description: "C2g Codadiscount4 C — business attribute for Conversational Analytics. Synonyms: [C2g Codadiscount4 C, Account, C2g Coda Discount4 C]"
    group_label: "Amounts"
    synonyms: ["C2g Codadiscount4 C", "Account", "C2g Coda Discount4 C"]
    tags: ["conversational"]
  }

  dimension: c2g_codaec_country_code_c {
    label: "C2g Codaeccountrycode C"
    type: string
    sql: ${TABLE}.c2g__CODAECCountryCode__c ;;
    description: "C2g Codaeccountrycode C — business attribute for Conversational Analytics. Synonyms: [C2g Codaeccountrycode C, Account, C2g Codaec Country Code C]"
    group_label: "Amounts"
    synonyms: ["C2g Codaeccountrycode C", "Account", "C2g Codaec Country Code C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_entity_use_code_c {
    label: "C2g Codaentityusecode C"
    type: string
    sql: ${TABLE}.c2g__CODAEntityUseCode__c ;;
    description: "C2g Codaentityusecode C — business attribute for Conversational Analytics. Synonyms: [C2g Codaentityusecode C, Account, C2g Coda Entity Use Code C]"
    group_label: "Attributes"
    synonyms: ["C2g Codaentityusecode C", "Account", "C2g Coda Entity Use Code C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_exemption_certificate_c {
    label: "C2g Codaexemptioncertificate C"
    type: string
    sql: ${TABLE}.c2g__CODAExemptionCertificate__c ;;
    description: "C2g Codaexemptioncertificate C — business attribute for Conversational Analytics. Synonyms: [C2g Codaexemptioncertificate C, Account, C2g Coda Exemption Certificate C]"
    group_label: "Attributes"
    synonyms: ["C2g Codaexemptioncertificate C", "Account", "C2g Coda Exemption Certificate C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_external_id_c {
    label: "C2g Codaexternalid C"
    type: string
    sql: ${TABLE}.c2g__CODAExternalId__c ;;
    description: "C2g Codaexternalid C — business attribute for Conversational Analytics. Synonyms: [C2g Codaexternalid C, Account, C2g Coda External ID C]"
    group_label: "Attributes"
    synonyms: ["C2g Codaexternalid C", "Account", "C2g Coda External ID C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_federally_reportable1099_c {
    label: "C2g Codafederallyreportable1099 C"
    type: string
    sql: ${TABLE}.c2g__CODAFederallyReportable1099__c ;;
    description: "C2g Codafederallyreportable1099 C — business attribute for Conversational Analytics. Synonyms: [C2g Codafederallyreportable1099 C, Account, C2g Coda Federally Reportable1099 C]"
    group_label: "Attributes"
    synonyms: ["C2g Codafederallyreportable1099 C", "Account", "C2g Coda Federally Reportable1099 C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_finance_contact_c {
    label: "C2g Codafinancecontact C"
    type: string
    sql: ${TABLE}.c2g__CODAFinanceContact__c ;;
    description: "C2g Codafinancecontact C — business attribute for Conversational Analytics. Synonyms: [C2g Codafinancecontact C, Account, C2g Coda Finance Contact C]"
    group_label: "Attributes"
    synonyms: ["C2g Codafinancecontact C", "Account", "C2g Coda Finance Contact C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_income_tax_type_c {
    label: "C2g Codaincometaxtype C"
    type: string
    sql: ${TABLE}.c2g__CODAIncomeTaxType__c ;;
    description: "C2g Codaincometaxtype C — business attribute for Conversational Analytics. Synonyms: [C2g Codaincometaxtype C, Type, Account, C2g Coda Income Tax Type C]"
    group_label: "Classification"
    synonyms: ["C2g Codaincometaxtype C", "Type", "Account", "C2g Coda Income Tax Type C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_input_vat_code_c {
    label: "C2g Codainputvatcode C"
    type: string
    sql: ${TABLE}.c2g__CODAInputVATCode__c ;;
    description: "C2g Codainputvatcode C — business attribute for Conversational Analytics. Synonyms: [C2g Codainputvatcode C, Account, C2g Coda Input Vat Code C]"
    group_label: "Attributes"
    synonyms: ["C2g Codainputvatcode C", "Account", "C2g Coda Input Vat Code C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_intercompany_account_c {
    label: "C2g Codaintercompanyaccount C"
    type: string
    sql: ${TABLE}.c2g__CODAIntercompanyAccount__c ;;
    description: "C2g Codaintercompanyaccount C — business attribute for Conversational Analytics. Synonyms: [C2g Codaintercompanyaccount C, Account, Accounts, Accounts Data, Customer Account, accounts_data, C2g Coda Intercompany Account C]"
    group_label: "Amounts"
    synonyms: ["C2g Codaintercompanyaccount C", "Account", "Accounts", "Accounts Data", "Customer Account", "accounts_data", "C2g Coda Intercompany Account C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_invoice_email_c {
    label: "C2g Codainvoiceemail C"
    type: string
    sql: ${TABLE}.c2g__CODAInvoiceEmail__c ;;
    description: "C2g Codainvoiceemail C — business attribute for Conversational Analytics. Synonyms: [C2g Codainvoiceemail C, Account, C2g Coda Invoice Email C]"
    group_label: "Attributes"
    synonyms: ["C2g Codainvoiceemail C", "Account", "C2g Coda Invoice Email C"]
    tags: ["conversational"]
    suggest_dimension: c2g_coda_invoice_email_c
  }

  dimension: c2g_coda_merge_id_c {
    label: "C2g Codamergeid C"
    type: string
    sql: ${TABLE}.c2g__CODAMergeId__c ;;
    description: "C2g Codamergeid C — business attribute for Conversational Analytics. Synonyms: [C2g Codamergeid C, Account, C2g Coda Merge ID C]"
    group_label: "Attributes"
    synonyms: ["C2g Codamergeid C", "Account", "C2g Coda Merge ID C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_output_vat_code_c {
    label: "C2g Codaoutputvatcode C"
    type: string
    sql: ${TABLE}.c2g__CODAOutputVATCode__c ;;
    description: "C2g Codaoutputvatcode C — business attribute for Conversational Analytics. Synonyms: [C2g Codaoutputvatcode C, Account, C2g Coda Output Vat Code C]"
    group_label: "Attributes"
    synonyms: ["C2g Codaoutputvatcode C", "Account", "C2g Coda Output Vat Code C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_payment_method_c {
    label: "C2g Codapaymentmethod C"
    type: string
    sql: ${TABLE}.c2g__CODAPaymentMethod__c ;;
    description: "C2g Codapaymentmethod C — business attribute for Conversational Analytics. Synonyms: [C2g Codapaymentmethod C, Account, C2g Coda Payment Method C]"
    group_label: "Attributes"
    synonyms: ["C2g Codapaymentmethod C", "Account", "C2g Coda Payment Method C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_reporting_code_c {
    label: "C2g Codareportingcode C"
    type: string
    sql: ${TABLE}.c2g__CODAReportingCode__c ;;
    description: "C2g Codareportingcode C — business attribute for Conversational Analytics. Synonyms: [C2g Codareportingcode C, Account, C2g Coda Reporting Code C]"
    group_label: "Attributes"
    synonyms: ["C2g Codareportingcode C", "Account", "C2g Coda Reporting Code C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_sales_tax_status_c {
    label: "C2g Codasalestaxstatus C"
    type: string
    sql: ${TABLE}.c2g__CODASalesTaxStatus__c ;;
    description: "C2g Codasalestaxstatus C — business attribute for Conversational Analytics. Synonyms: [C2g Codasalestaxstatus C, Account, C2g Coda Sales Tax Status C]"
    group_label: "Classification"
    synonyms: ["C2g Codasalestaxstatus C", "Account", "C2g Coda Sales Tax Status C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_tax_calculation_method_c {
    label: "C2g Codataxcalculationmethod C"
    type: string
    sql: ${TABLE}.c2g__CODATaxCalculationMethod__c ;;
    description: "C2g Codataxcalculationmethod C — business attribute for Conversational Analytics. Synonyms: [C2g Codataxcalculationmethod C, Account, C2g Coda Tax Calculation Method C]"
    group_label: "Attributes"
    synonyms: ["C2g Codataxcalculationmethod C", "Account", "C2g Coda Tax Calculation Method C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_tax_code1_c {
    label: "C2g Codataxcode1 C"
    type: string
    sql: ${TABLE}.c2g__CODATaxCode1__c ;;
    description: "C2g Codataxcode1 C — business attribute for Conversational Analytics. Synonyms: [C2g Codataxcode1 C, Account, C2g Coda Tax Code1 C]"
    group_label: "Attributes"
    synonyms: ["C2g Codataxcode1 C", "Account", "C2g Coda Tax Code1 C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_tax_code2_c {
    label: "C2g Codataxcode2 C"
    type: string
    sql: ${TABLE}.c2g__CODATaxCode2__c ;;
    description: "C2g Codataxcode2 C — business attribute for Conversational Analytics. Synonyms: [C2g Codataxcode2 C, Account, C2g Coda Tax Code2 C]"
    group_label: "Attributes"
    synonyms: ["C2g Codataxcode2 C", "Account", "C2g Coda Tax Code2 C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_tax_code3_c {
    label: "C2g Codataxcode3 C"
    type: string
    sql: ${TABLE}.c2g__CODATaxCode3__c ;;
    description: "C2g Codataxcode3 C — business attribute for Conversational Analytics. Synonyms: [C2g Codataxcode3 C, Account, C2g Coda Tax Code3 C]"
    group_label: "Attributes"
    synonyms: ["C2g Codataxcode3 C", "Account", "C2g Coda Tax Code3 C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_taxpayer_identification_number_c {
    label: "C2g Codataxpayeridentificationnumber C"
    type: string
    sql: ${TABLE}.c2g__CODATaxpayerIdentificationNumber__c ;;
    description: "C2g Codataxpayeridentificationnumber C — business attribute for Conversational Analytics. Synonyms: [C2g Codataxpayeridentificationnumber C, Account, C2g Coda Taxpayer Identification Number C]"
    group_label: "Attributes"
    synonyms: ["C2g Codataxpayeridentificationnumber C", "Account", "C2g Coda Taxpayer Identification Number C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_unit_of_work_c {
    label: "C2g Codaunitofwork C"
    type: string
    sql: ${TABLE}.c2g__CODAUnitOfWork__c ;;
    description: "C2g Codaunitofwork C — business attribute for Conversational Analytics. Synonyms: [C2g Codaunitofwork C, Account, C2g Coda Unit Of Work C]"
    group_label: "Attributes"
    synonyms: ["C2g Codaunitofwork C", "Account", "C2g Coda Unit Of Work C"]
    tags: ["conversational"]
  }

  dimension: c2g_codavat_registration_number_c {
    label: "C2g Codavatregistrationnumber C"
    type: string
    sql: ${TABLE}.c2g__CODAVATRegistrationNumber__c ;;
    description: "C2g Codavatregistrationnumber C — business attribute for Conversational Analytics. Synonyms: [C2g Codavatregistrationnumber C, Account, C2g Codavat Registration Number C]"
    group_label: "Attributes"
    value_format_name: percent_2
    synonyms: ["C2g Codavatregistrationnumber C", "Account", "C2g Codavat Registration Number C"]
    tags: ["conversational"]
  }

  dimension: c2g_codavat_status_c {
    label: "C2g Codavatstatus C"
    type: string
    sql: ${TABLE}.c2g__CODAVATStatus__c ;;
    description: "C2g Codavatstatus C — business attribute for Conversational Analytics. Synonyms: [C2g Codavatstatus C, Account, C2g Codavat Status C]"
    group_label: "Classification"
    synonyms: ["C2g Codavatstatus C", "Account", "C2g Codavat Status C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_validated_billing_city_c {
    label: "C2g Codavalidatedbillingcity C"
    type: string
    sql: ${TABLE}.c2g__CODAValidatedBillingCity__c ;;
    description: "C2g Codavalidatedbillingcity C — business attribute for Conversational Analytics. Synonyms: [C2g Codavalidatedbillingcity C, Billingcity, Account, C2g Coda Validated Billing City C]"
    group_label: "Dates"
    synonyms: ["C2g Codavalidatedbillingcity C", "Billingcity", "Account", "C2g Coda Validated Billing City C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_validated_billing_country_c {
    label: "C2g Codavalidatedbillingcountry C"
    type: string
    sql: ${TABLE}.c2g__CODAValidatedBillingCountry__c ;;
    description: "C2g Codavalidatedbillingcountry C — business attribute for Conversational Analytics. Synonyms: [C2g Codavalidatedbillingcountry C, Billingcountry, Account, C2g Coda Validated Billing Country C]"
    group_label: "Dates"
    synonyms: ["C2g Codavalidatedbillingcountry C", "Billingcountry", "Account", "C2g Coda Validated Billing Country C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_validated_billing_post_code_c {
    label: "C2g Codavalidatedbillingpostcode C"
    type: string
    sql: ${TABLE}.c2g__CODAValidatedBillingPostCode__c ;;
    description: "C2g Codavalidatedbillingpostcode C — business attribute for Conversational Analytics. Synonyms: [C2g Codavalidatedbillingpostcode C, Account, C2g Coda Validated Billing Post Code C]"
    group_label: "Dates"
    synonyms: ["C2g Codavalidatedbillingpostcode C", "Account", "C2g Coda Validated Billing Post Code C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_validated_billing_state_c {
    label: "C2g Codavalidatedbillingstate C"
    type: string
    sql: ${TABLE}.c2g__CODAValidatedBillingState__c ;;
    description: "C2g Codavalidatedbillingstate C — business attribute for Conversational Analytics. Synonyms: [C2g Codavalidatedbillingstate C, Billingstate, Account, C2g Coda Validated Billing State C]"
    group_label: "Dates"
    synonyms: ["C2g Codavalidatedbillingstate C", "Billingstate", "Account", "C2g Coda Validated Billing State C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_validated_billing_street_c {
    label: "C2g Codavalidatedbillingstreet C"
    type: string
    sql: ${TABLE}.c2g__CODAValidatedBillingStreet__c ;;
    description: "C2g Codavalidatedbillingstreet C — business attribute for Conversational Analytics. Synonyms: [C2g Codavalidatedbillingstreet C, Billingstreet, Account, C2g Coda Validated Billing Street C]"
    group_label: "Dates"
    synonyms: ["C2g Codavalidatedbillingstreet C", "Billingstreet", "Account", "C2g Coda Validated Billing Street C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_validated_shipping_city_c {
    label: "C2g Codavalidatedshippingcity C"
    type: string
    sql: ${TABLE}.c2g__CODAValidatedShippingCity__c ;;
    description: "C2g Codavalidatedshippingcity C — business attribute for Conversational Analytics. Synonyms: [C2g Codavalidatedshippingcity C, Shippingcity, Account, C2g Coda Validated Shipping City C]"
    group_label: "Dates"
    synonyms: ["C2g Codavalidatedshippingcity C", "Shippingcity", "Account", "C2g Coda Validated Shipping City C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_validated_shipping_country_c {
    label: "C2g Codavalidatedshippingcountry C"
    type: string
    sql: ${TABLE}.c2g__CODAValidatedShippingCountry__c ;;
    description: "C2g Codavalidatedshippingcountry C — business attribute for Conversational Analytics. Synonyms: [C2g Codavalidatedshippingcountry C, Shippingcountry, Account, C2g Coda Validated Shipping Country C]"
    group_label: "Dates"
    synonyms: ["C2g Codavalidatedshippingcountry C", "Shippingcountry", "Account", "C2g Coda Validated Shipping Country C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_validated_shipping_post_code_c {
    label: "C2g Codavalidatedshippingpostcode C"
    type: string
    sql: ${TABLE}.c2g__CODAValidatedShippingPostCode__c ;;
    description: "C2g Codavalidatedshippingpostcode C — business attribute for Conversational Analytics. Synonyms: [C2g Codavalidatedshippingpostcode C, Account, C2g Coda Validated Shipping Post Code C]"
    group_label: "Dates"
    synonyms: ["C2g Codavalidatedshippingpostcode C", "Account", "C2g Coda Validated Shipping Post Code C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_validated_shipping_state_c {
    label: "C2g Codavalidatedshippingstate C"
    type: string
    sql: ${TABLE}.c2g__CODAValidatedShippingState__c ;;
    description: "C2g Codavalidatedshippingstate C — business attribute for Conversational Analytics. Synonyms: [C2g Codavalidatedshippingstate C, Shippingstate, Account, C2g Coda Validated Shipping State C]"
    group_label: "Dates"
    synonyms: ["C2g Codavalidatedshippingstate C", "Shippingstate", "Account", "C2g Coda Validated Shipping State C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_validated_shipping_street_c {
    label: "C2g Codavalidatedshippingstreet C"
    type: string
    sql: ${TABLE}.c2g__CODAValidatedShippingStreet__c ;;
    description: "C2g Codavalidatedshippingstreet C — business attribute for Conversational Analytics. Synonyms: [C2g Codavalidatedshippingstreet C, Shippingstreet, Account, C2g Coda Validated Shipping Street C]"
    group_label: "Dates"
    synonyms: ["C2g Codavalidatedshippingstreet C", "Shippingstreet", "Account", "C2g Coda Validated Shipping Street C"]
    tags: ["conversational"]
  }

  dimension: c2g_collections_on_hold_reason_c {
    label: "C2g Collectionsonholdreason C"
    type: string
    sql: ${TABLE}.c2g__CollectionsOnHoldReason__c ;;
    description: "C2g Collectionsonholdreason C — business attribute for Conversational Analytics. Synonyms: [C2g Collectionsonholdreason C, Account, C2g Collections On Hold Reason C]"
    group_label: "Attributes"
    synonyms: ["C2g Collectionsonholdreason C", "Account", "C2g Collections On Hold Reason C"]
    tags: ["conversational"]
  }

  dimension: c2g_collections_on_hold_c {
    label: "C2g Collectionsonhold C"
    type: string
    sql: ${TABLE}.c2g__CollectionsOnHold__c ;;
    description: "C2g Collectionsonhold C — business attribute for Conversational Analytics. Synonyms: [C2g Collectionsonhold C, Account, C2g Collections On Hold C]"
    group_label: "Attributes"
    synonyms: ["C2g Collectionsonhold C", "Account", "C2g Collections On Hold C"]
    tags: ["conversational"]
  }

  dimension: c2g_days_sales_outstanding_c {
    label: "C2g Dayssalesoutstanding C"
    type: string
    sql: ${TABLE}.c2g__DaysSalesOutstanding__c ;;
    description: "C2g Dayssalesoutstanding C — business attribute for Conversational Analytics. Synonyms: [C2g Dayssalesoutstanding C, Account, C2g Days Sales Outstanding C]"
    group_label: "Dates"
    synonyms: ["C2g Dayssalesoutstanding C", "Account", "C2g Days Sales Outstanding C"]
    tags: ["conversational"]
  }

  dimension: c2g_coda_billing_address_is_valid_c {
    label: "C2g Codabillingaddressisvalid C"
    type: string
    sql: ${TABLE}.c2g__CODABillingAddressIsValid__c ;;
    description: "C2g Codabillingaddressisvalid C — business attribute for Conversational Analytics. Synonyms: [C2g Codabillingaddressisvalid C, Account, C2g Coda Billing Address Is Valid C]"
    group_label: "Classification"
    synonyms: ["C2g Codabillingaddressisvalid C", "Account", "C2g Coda Billing Address Is Valid C"]
    tags: ["conversational"]
    suggest_dimension: c2g_coda_billing_address_is_valid_c
  }

  dimension: c2g_coda_shipping_address_is_valid_c {
    label: "C2g Codashippingaddressisvalid C"
    type: string
    sql: ${TABLE}.c2g__CODAShippingAddressIsValid__c ;;
    description: "C2g Codashippingaddressisvalid C — business attribute for Conversational Analytics. Synonyms: [C2g Codashippingaddressisvalid C, Account, C2g Coda Shipping Address Is Valid C]"
    group_label: "Classification"
    synonyms: ["C2g Codashippingaddressisvalid C", "Account", "C2g Coda Shipping Address Is Valid C"]
    tags: ["conversational"]
    suggest_dimension: c2g_coda_shipping_address_is_valid_c
  }

  dimension: ffbf_account_particulars_c {
    label: "Ffbf Accountparticulars C"
    type: string
    sql: ${TABLE}.ffbf__AccountParticulars__c ;;
    description: "Ffbf Accountparticulars C — business attribute for Conversational Analytics. Synonyms: [Ffbf Accountparticulars C, Account, Accounts, Accounts Data, Customer Account, accounts_data, Ffbf Account Particulars C]"
    group_label: "Amounts"
    synonyms: ["Ffbf Accountparticulars C", "Account", "Accounts", "Accounts Data", "Customer Account", "accounts_data", "Ffbf Account Particulars C"]
    tags: ["conversational"]
  }

  dimension: ffbf_bank_bic_c {
    label: "Ffbf Bankbic C"
    type: string
    sql: ${TABLE}.ffbf__BankBIC__c ;;
    description: "Ffbf Bankbic C — business attribute for Conversational Analytics. Synonyms: [Ffbf Bankbic C, Account, Ffbf Bank Bic C]"
    group_label: "Attributes"
    synonyms: ["Ffbf Bankbic C", "Account", "Ffbf Bank Bic C"]
    tags: ["conversational"]
  }

  dimension: ffbf_payment_code_c {
    label: "Ffbf Paymentcode C"
    type: string
    sql: ${TABLE}.ffbf__PaymentCode__c ;;
    description: "Ffbf Paymentcode C — business attribute for Conversational Analytics. Synonyms: [Ffbf Paymentcode C, Account, Ffbf Payment Code C]"
    group_label: "Attributes"
    synonyms: ["Ffbf Paymentcode C", "Account", "Ffbf Payment Code C"]
    tags: ["conversational"]
  }

  dimension: ffbf_payment_country_iso_c {
    label: "Ffbf Paymentcountryiso C"
    type: string
    sql: ${TABLE}.ffbf__PaymentCountryISO__c ;;
    description: "Ffbf Paymentcountryiso C — business attribute for Conversational Analytics. Synonyms: [Ffbf Paymentcountryiso C, Account, Ffbf Payment Country Iso C]"
    group_label: "Amounts"
    synonyms: ["Ffbf Paymentcountryiso C", "Account", "Ffbf Payment Country Iso C"]
    tags: ["conversational"]
  }

  dimension: ffbf_payment_priority_c {
    label: "Ffbf Paymentpriority C"
    type: string
    sql: ${TABLE}.ffbf__PaymentPriority__c ;;
    description: "Ffbf Paymentpriority C — business attribute for Conversational Analytics. Synonyms: [Ffbf Paymentpriority C, Account, Ffbf Payment Priority C]"
    group_label: "Classification"
    synonyms: ["Ffbf Paymentpriority C", "Account", "Ffbf Payment Priority C"]
    tags: ["conversational"]
  }

  dimension: ffbf_payment_routing_method_c {
    label: "Ffbf Paymentroutingmethod C"
    type: string
    sql: ${TABLE}.ffbf__PaymentRoutingMethod__c ;;
    description: "Ffbf Paymentroutingmethod C — business attribute for Conversational Analytics. Synonyms: [Ffbf Paymentroutingmethod C, Account, Ffbf Payment Routing Method C]"
    group_label: "Attributes"
    synonyms: ["Ffbf Paymentroutingmethod C", "Account", "Ffbf Payment Routing Method C"]
    tags: ["conversational"]
  }

  dimension: pse_add_be_is_to_existing_batches_c {
    label: "Pse Add Beis To Existing Batches C"
    type: string
    sql: ${TABLE}.pse__Add_BEIs_To_Existing_Batches__c ;;
    description: "Pse Add Beis To Existing Batches C — business attribute for Conversational Analytics. Synonyms: [Pse Add Beis To Existing Batches C, Account, Pse Add Be Is To Existing Batches C]"
    group_label: "Classification"
    synonyms: ["Pse Add Beis To Existing Batches C", "Account", "Pse Add Be Is To Existing Batches C"]
    tags: ["conversational"]
  }

  dimension: pse_erp_worker_correlation_id_c {
    label: "Pse Erp Worker Correlation ID C"
    type: string
    sql: ${TABLE}.pse__ERP_Worker_Correlation_Id__c ;;
    description: "Pse Erp Worker Correlation ID C — business attribute for Conversational Analytics. Synonyms: [Pse Erp Worker Correlation Id C, Account, Pse Erp Worker Correlation ID C]"
    group_label: "Attributes"
    synonyms: ["Pse Erp Worker Correlation Id C", "Account", "Pse Erp Worker Correlation ID C"]
    tags: ["conversational"]
  }

  dimension: pse_services_billing_time_period_type_c {
    label: "Pse Services Billing Time Period Type C"
    type: string
    sql: ${TABLE}.pse__Services_Billing_Time_Period_Type__c ;;
    description: "Pse Services Billing Time Period Type C — business attribute for Conversational Analytics. Synonyms: [Pse Services Billing Time Period Type C, Type, Account]"
    group_label: "Dates"
    synonyms: ["Pse Services Billing Time Period Type C", "Type", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_active_c {
    label: "Scmc Active C"
    type: string
    sql: ${TABLE}.SCMC__Active__c ;;
    description: "Scmc Active C — business attribute for Conversational Analytics. Synonyms: [Scmc Active C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Active C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_auto_quote_c {
    label: "Scmc Auto Quote C"
    type: string
    sql: ${TABLE}.SCMC__Auto_Quote__c ;;
    description: "Scmc Auto Quote C — business attribute for Conversational Analytics. Synonyms: [Scmc Auto Quote C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Auto Quote C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_bill_to_e_mail_c {
    label: "Scmc Bill To E Mail C"
    type: string
    sql: ${TABLE}.SCMC__Bill_to_E_mail__c ;;
    description: "Scmc Bill To E Mail C — business attribute for Conversational Analytics. Synonyms: [Scmc Bill To E Mail C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Bill To E Mail C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_cage_code_c {
    label: "Scmc Cage Code C"
    type: string
    sql: ${TABLE}.SCMC__CAGE_Code__c ;;
    description: "Scmc Cage Code C — business attribute for Conversational Analytics. Synonyms: [Scmc Cage Code C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Cage Code C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_capability_listing_c {
    label: "Scmc Capability Listing C"
    type: string
    sql: ${TABLE}.SCMC__Capability_Listing__c ;;
    description: "Scmc Capability Listing C — business attribute for Conversational Analytics. Synonyms: [Scmc Capability Listing C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Capability Listing C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_certifications_c {
    label: "Scmc Certifications C"
    type: string
    sql: ${TABLE}.SCMC__Certifications__c ;;
    description: "Scmc Certifications C — business attribute for Conversational Analytics. Synonyms: [Scmc Certifications C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Certifications C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_corp_city_c {
    label: "Scmc Corp City C"
    type: string
    sql: ${TABLE}.SCMC__Corp_City__c ;;
    description: "Scmc Corp City C — business attribute for Conversational Analytics. Synonyms: [Scmc Corp City C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Corp City C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_corp_country_c {
    label: "Scmc Corp Country C"
    type: string
    sql: ${TABLE}.SCMC__Corp_Country__c ;;
    description: "Scmc Corp Country C — business attribute for Conversational Analytics. Synonyms: [Scmc Corp Country C, Account]"
    group_label: "Amounts"
    synonyms: ["Scmc Corp Country C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_corp_line1_c {
    label: "Scmc Corp Line1 C"
    type: string
    sql: ${TABLE}.SCMC__Corp_Line1__c ;;
    description: "Scmc Corp Line1 C — business attribute for Conversational Analytics. Synonyms: [Scmc Corp Line1 C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Corp Line1 C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_corp_line2_c {
    label: "Scmc Corp Line2 C"
    type: string
    sql: ${TABLE}.SCMC__Corp_Line2__c ;;
    description: "Scmc Corp Line2 C — business attribute for Conversational Analytics. Synonyms: [Scmc Corp Line2 C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Corp Line2 C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_corp_postal_code_c {
    label: "Scmc Corp Postalcode C"
    type: string
    sql: ${TABLE}.SCMC__Corp_PostalCode__c ;;
    description: "Scmc Corp Postalcode C — business attribute for Conversational Analytics. Synonyms: [Scmc Corp Postalcode C, Account, Scmc Corp Postal Code C]"
    group_label: "Attributes"
    synonyms: ["Scmc Corp Postalcode C", "Account", "Scmc Corp Postal Code C"]
    tags: ["conversational"]
  }

  dimension: scmc_corp_state_province_c {
    label: "Scmc Corp State Province C"
    type: string
    sql: ${TABLE}.SCMC__Corp_State_Province__c ;;
    description: "Scmc Corp State Province C — business attribute for Conversational Analytics. Synonyms: [Scmc Corp State Province C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Corp State Province C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_credit_card_expiration_date_c {
    label: "Scmc Credit Card Expiration Date C"
    type: string
    sql: ${TABLE}.SCMC__Credit_Card_Expiration_Date__c ;;
    description: "Scmc Credit Card Expiration Date C — business attribute for Conversational Analytics. Synonyms: [Scmc Credit Card Expiration Date C, Account]"
    group_label: "Dates"
    value_format_name: percent_2
    synonyms: ["Scmc Credit Card Expiration Date C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_credit_card_number_c {
    label: "Scmc Credit Card Number C"
    type: string
    sql: ${TABLE}.SCMC__Credit_Card_Number__c ;;
    description: "Scmc Credit Card Number C — business attribute for Conversational Analytics. Synonyms: [Scmc Credit Card Number C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Credit Card Number C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_credit_card_type_c {
    label: "Scmc Credit Card Type C"
    type: string
    sql: ${TABLE}.SCMC__Credit_Card_Type__c ;;
    description: "Scmc Credit Card Type C — business attribute for Conversational Analytics. Synonyms: [Scmc Credit Card Type C, Type, Account]"
    group_label: "Classification"
    synonyms: ["Scmc Credit Card Type C", "Type", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_credit_card_validation_code_c {
    label: "Scmc Credit Card Validation Code C"
    type: string
    sql: ${TABLE}.SCMC__Credit_Card_Validation_Code__c ;;
    description: "Scmc Credit Card Validation Code C — business attribute for Conversational Analytics. Synonyms: [Scmc Credit Card Validation Code C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Credit Card Validation Code C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_currency_c {
    label: "Scmc Currency C"
    type: string
    sql: ${TABLE}.SCMC__Currency__c ;;
    description: "Scmc Currency C — business attribute for Conversational Analytics. Synonyms: [Scmc Currency C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Currency C", "Account"]
    tags: ["conversational"]
    suggestions: ["GBP"]
  }

  dimension: scmc_customer_priority_c {
    label: "Scmc Customerpriority C"
    type: string
    sql: ${TABLE}.SCMC__CustomerPriority__c ;;
    description: "Scmc Customerpriority C — business attribute for Conversational Analytics. Synonyms: [Scmc Customerpriority C, Account, Scmc Customer Priority C]"
    group_label: "Classification"
    synonyms: ["Scmc Customerpriority C", "Account", "Scmc Customer Priority C"]
    tags: ["conversational"]
  }

  dimension: scmc_customer_site_id_c {
    label: "Scmc Customer Site ID C"
    type: string
    sql: ${TABLE}.SCMC__Customer_Site_Id__c ;;
    description: "Scmc Customer Site ID C — business attribute for Conversational Analytics. Synonyms: [Scmc Customer Site Id C, Site, Account, Scmc Customer Site ID C]"
    group_label: "Attributes"
    synonyms: ["Scmc Customer Site Id C", "Site", "Account", "Scmc Customer Site ID C"]
    tags: ["conversational"]
  }

  dimension: scmc_customer_type_c {
    label: "Scmc Customer Type C"
    type: string
    sql: ${TABLE}.SCMC__Customer_Type__c ;;
    description: "Scmc Customer Type C — business attribute for Conversational Analytics. Synonyms: [Scmc Customer Type C, Type, Account]"
    group_label: "Classification"
    synonyms: ["Scmc Customer Type C", "Type", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_customer_c {
    label: "Scmc Customer C"
    type: string
    sql: ${TABLE}.SCMC__Customer__c ;;
    description: "Scmc Customer C — business attribute for Conversational Analytics. Synonyms: [Scmc Customer C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Customer C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_duns_number_c {
    label: "Scmc Duns Number C"
    type: string
    sql: ${TABLE}.SCMC__DUNS_Number__c ;;
    description: "Scmc Duns Number C — business attribute for Conversational Analytics. Synonyms: [Scmc Duns Number C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Duns Number C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_default_payment_type_c {
    label: "Scmc Default Payment Type C"
    type: string
    sql: ${TABLE}.SCMC__Default_Payment_Type__c ;;
    description: "Scmc Default Payment Type C — business attribute for Conversational Analytics. Synonyms: [Scmc Default Payment Type C, Type, Account]"
    group_label: "Classification"
    synonyms: ["Scmc Default Payment Type C", "Type", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_discount_off_standard_c {
    label: "Scmc Discount Off Standard C"
    type: string
    sql: ${TABLE}.SCMC__Discount_off_Standard__c ;;
    description: "Scmc Discount Off Standard C — business attribute for Conversational Analytics. Synonyms: [Scmc Discount Off Standard C, Account]"
    group_label: "Amounts"
    synonyms: ["Scmc Discount Off Standard C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_e_mail_c {
    label: "Scmc E Mail C"
    type: string
    sql: ${TABLE}.SCMC__E_Mail__c ;;
    description: "Scmc E Mail C — business attribute for Conversational Analytics. Synonyms: [Scmc E Mail C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc E Mail C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_fob_c {
    label: "Scmc Fob C"
    type: string
    sql: ${TABLE}.SCMC__FOB__c ;;
    description: "Scmc Fob C — business attribute for Conversational Analytics. Synonyms: [Scmc Fob C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Fob C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_freight_c {
    label: "Scmc Freight C"
    type: string
    sql: ${TABLE}.SCMC__Freight__c ;;
    description: "Scmc Freight C — business attribute for Conversational Analytics. Synonyms: [Scmc Freight C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Freight C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_invoice_format_c {
    label: "Scmc Invoice Format C"
    type: string
    sql: ${TABLE}.SCMC__Invoice_Format__c ;;
    description: "Scmc Invoice Format C — business attribute for Conversational Analytics. Synonyms: [Scmc Invoice Format C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Invoice Format C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_language_c {
    label: "Scmc Language C"
    type: string
    sql: ${TABLE}.SCMC__Language__c ;;
    description: "Scmc Language C — business attribute for Conversational Analytics. Synonyms: [Scmc Language C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Language C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_no_response_c {
    label: "Scmc No Response C"
    type: string
    sql: ${TABLE}.SCMC__No_Response__c ;;
    description: "Scmc No Response C — business attribute for Conversational Analytics. Synonyms: [Scmc No Response C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc No Response C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_numberof_locations_c {
    label: "Scmc Numberoflocations C"
    type: string
    sql: ${TABLE}.SCMC__NumberofLocations__c ;;
    description: "Scmc Numberoflocations C — business attribute for Conversational Analytics. Synonyms: [Scmc Numberoflocations C, Account, Scmc Numberof Locations C]"
    group_label: "Attributes"
    synonyms: ["Scmc Numberoflocations C", "Account", "Scmc Numberof Locations C"]
    tags: ["conversational"]
  }

  dimension: scmc_packslip_format_c {
    label: "Scmc Packslip Format C"
    type: string
    sql: ${TABLE}.SCMC__Packslip_Format__c ;;
    description: "Scmc Packslip Format C — business attribute for Conversational Analytics. Synonyms: [Scmc Packslip Format C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Packslip Format C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_payment_terms_c {
    label: "Scmc Payment Terms C"
    type: string
    sql: ${TABLE}.SCMC__Payment_Terms__c ;;
    description: "Scmc Payment Terms C — business attribute for Conversational Analytics. Synonyms: [Scmc Payment Terms C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Payment Terms C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_preferred_communication_c {
    label: "Scmc Preferred Communication C"
    type: string
    sql: ${TABLE}.SCMC__Preferred_Communication__c ;;
    description: "Scmc Preferred Communication C — business attribute for Conversational Analytics. Synonyms: [Scmc Preferred Communication C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Preferred Communication C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_price_type_c {
    label: "Scmc Price Type C"
    type: string
    sql: ${TABLE}.SCMC__Price_Type__c ;;
    description: "Scmc Price Type C — business attribute for Conversational Analytics. Synonyms: [Scmc Price Type C, Type, Account]"
    group_label: "Amounts"
    value_format_name: decimal_0
    synonyms: ["Scmc Price Type C", "Type", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_provide_advanced_ship_notice_c {
    label: "Scmc Provide Advanced Ship Notice C"
    type: string
    sql: ${TABLE}.SCMC__Provide_Advanced_Ship_Notice__c ;;
    description: "Scmc Provide Advanced Ship Notice C — business attribute for Conversational Analytics. Synonyms: [Scmc Provide Advanced Ship Notice C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Provide Advanced Ship Notice C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_provide_electronic_invoice_c {
    label: "Scmc Provide Electronic Invoice C"
    type: string
    sql: ${TABLE}.SCMC__Provide_Electronic_Invoice__c ;;
    description: "Scmc Provide Electronic Invoice C — business attribute for Conversational Analytics. Synonyms: [Scmc Provide Electronic Invoice C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Provide Electronic Invoice C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_reason_for_temporary_hold_c {
    label: "Scmc Reason For Temporary Hold C"
    type: string
    sql: ${TABLE}.SCMC__Reason_for_Temporary_Hold__c ;;
    description: "Scmc Reason For Temporary Hold C — business attribute for Conversational Analytics. Synonyms: [Scmc Reason For Temporary Hold C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Reason For Temporary Hold C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_sales_rep_c {
    label: "Scmc Sales Rep C"
    type: string
    sql: ${TABLE}.SCMC__Sales_Rep__c ;;
    description: "Scmc Sales Rep C — business attribute for Conversational Analytics. Synonyms: [Scmc Sales Rep C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Sales Rep C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_sales_responsibility_c {
    label: "Scmc Sales Responsibility C"
    type: string
    sql: ${TABLE}.SCMC__Sales_Responsibility__c ;;
    description: "Scmc Sales Responsibility C — business attribute for Conversational Analytics. Synonyms: [Scmc Sales Responsibility C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Sales Responsibility C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_ship_via_c {
    label: "Scmc Ship Via C"
    type: string
    sql: ${TABLE}.SCMC__Ship_Via__c ;;
    description: "Scmc Ship Via C — business attribute for Conversational Analytics. Synonyms: [Scmc Ship Via C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Ship Via C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_shipping_account_c {
    label: "Scmc Shipping Account C"
    type: string
    sql: ${TABLE}.SCMC__Shipping_Account__c ;;
    description: "Scmc Shipping Account C — business attribute for Conversational Analytics. Synonyms: [Scmc Shipping Account C, Account, Accounts, Accounts Data, Customer Account, accounts_data]"
    group_label: "Amounts"
    synonyms: ["Scmc Shipping Account C", "Account", "Accounts", "Accounts Data", "Customer Account", "accounts_data"]
    tags: ["conversational"]
  }

  dimension: scmc_small_business_designations_c {
    label: "Scmc Small Business Designations C"
    type: string
    sql: ${TABLE}.SCMC__Small_Business_Designations__c ;;
    description: "Scmc Small Business Designations C — business attribute for Conversational Analytics. Synonyms: [Scmc Small Business Designations C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Small Business Designations C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_standard_order_detail_c {
    label: "Scmc Standard Order Detail C"
    type: string
    sql: ${TABLE}.SCMC__Standard_Order_Detail__c ;;
    description: "Scmc Standard Order Detail C — business attribute for Conversational Analytics. Synonyms: [Scmc Standard Order Detail C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Standard Order Detail C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_tax_exemption_group_c {
    label: "Scmc Tax Exemption Group C"
    type: string
    sql: ${TABLE}.SCMC__Tax_Exemption_Group__c ;;
    description: "Scmc Tax Exemption Group C — business attribute for Conversational Analytics. Synonyms: [Scmc Tax Exemption Group C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Tax Exemption Group C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_temporary_hold_c {
    label: "Scmc Temporary Hold C"
    type: string
    sql: ${TABLE}.SCMC__Temporary_Hold__c ;;
    description: "Scmc Temporary Hold C — business attribute for Conversational Analytics. Synonyms: [Scmc Temporary Hold C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Temporary Hold C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_terms_c {
    label: "Scmc Terms C"
    type: string
    sql: ${TABLE}.SCMC__Terms__c ;;
    description: "Scmc Terms C — business attribute for Conversational Analytics. Synonyms: [Scmc Terms C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Terms C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_warehouse_c {
    label: "Scmc Warehouse C"
    type: string
    sql: ${TABLE}.SCMC__Warehouse__c ;;
    description: "Scmc Warehouse C — business attribute for Conversational Analytics. Synonyms: [Scmc Warehouse C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Warehouse C", "Account"]
    tags: ["conversational"]
  }

  dimension: scmc_default_address_c {
    label: "Scmc Default Address C"
    type: string
    sql: ${TABLE}.SCMC__Default_Address__c ;;
    description: "Scmc Default Address C — business attribute for Conversational Analytics. Synonyms: [Scmc Default Address C, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Default Address C", "Account"]
    tags: ["conversational"]
    suggest_dimension: scmc_default_address_c
  }

  dimension: scmc_payment_terms_name_c {
    label: "Scmc Payment Terms Name C"
    type: string
    sql: ${TABLE}.SCMC__Payment_Terms_Name__c ;;
    description: "Scmc Payment Terms Name C — business attribute for Conversational Analytics. Synonyms: [Scmc Payment Terms Name C, Name, Account]"
    group_label: "Attributes"
    synonyms: ["Scmc Payment Terms Name C", "Name", "Account"]
    tags: ["conversational"]
    suggest_dimension: scmc_payment_terms_name_c
  }

  dimension: scmffa_company_name_c {
    label: "Scmffa Company Name C"
    type: string
    sql: ${TABLE}.SCMFFA__Company_Name__c ;;
    description: "Scmffa Company Name C — business attribute for Conversational Analytics. Synonyms: [Scmffa Company Name C, Name, Account]"
    group_label: "Attributes"
    synonyms: ["Scmffa Company Name C", "Name", "Account"]
    tags: ["conversational"]
    suggest_dimension: scmffa_company_name_c
  }

  dimension: ffaci_currency_culture_c {
    label: "Ffaci Currencyculture C"
    type: string
    sql: ${TABLE}.ffaci__CurrencyCulture__c ;;
    description: "Ffaci Currencyculture C — business attribute for Conversational Analytics. Synonyms: [Ffaci Currencyculture C, Account, Ffaci Currency Culture C]"
    group_label: "Attributes"
    synonyms: ["Ffaci Currencyculture C", "Account", "Ffaci Currency Culture C"]
    tags: ["conversational"]
    suggestions: ["GBP"]
  }

  dimension: ffx_case_safe_account_id_c {
    label: "Ffx Casesafeaccountid C"
    type: string
    sql: ${TABLE}.FFX_CaseSafeAccountID__c ;;
    description: "Ffx Casesafeaccountid C — business attribute for Conversational Analytics. Synonyms: [Ffx Casesafeaccountid C, Account, Accounts, Accounts Data, Customer Account, accounts_data, Account Id, Ffx Case Safe Account ID C]"
    group_label: "Amounts"
    synonyms: ["Ffx Casesafeaccountid C", "Account", "Accounts", "Accounts Data", "Customer Account", "accounts_data", "Account Id", "Ffx Case Safe Account ID C"]
    tags: ["conversational"]
  }

  dimension: ffx_input_tax_code_fdn_c {
    label: "Ffx Inputtaxcodefdn C"
    type: string
    sql: ${TABLE}.FFX_InputTaxCodeFDN__c ;;
    description: "Ffx Inputtaxcodefdn C — business attribute for Conversational Analytics. Synonyms: [Ffx Inputtaxcodefdn C, Account, Ffx Input Tax Code Fdn C]"
    group_label: "Attributes"
    synonyms: ["Ffx Inputtaxcodefdn C", "Account", "Ffx Input Tax Code Fdn C"]
    tags: ["conversational"]
  }

  dimension: msg_link_smsasc_errors_c {
    label: "Msg Link Smsasc Errors C"
    type: string
    sql: ${TABLE}.msg_link_SMSASC_errors__c ;;
    description: "Msg Link Smsasc Errors C — business attribute for Conversational Analytics. Synonyms: [Msg Link Smsasc Errors C, Account]"
    group_label: "Attributes"
    synonyms: ["Msg Link Smsasc Errors C", "Account"]
    tags: ["conversational"]
  }

  dimension: msg_link_smsasc_id_c {
    label: "Msg Link Smsasc ID C"
    type: string
    sql: ${TABLE}.msg_link_SMSASC_id__c ;;
    description: "Msg Link Smsasc ID C — business attribute for Conversational Analytics. Synonyms: [Msg Link Smsasc Id C, Account, Msg Link Smsasc ID C]"
    group_label: "Attributes"
    synonyms: ["Msg Link Smsasc Id C", "Account", "Msg Link Smsasc ID C"]
    tags: ["conversational"]
  }

  dimension: msg_link_smsasc_state_c {
    label: "Msg Link Smsasc State C"
    type: string
    sql: ${TABLE}.msg_link_SMSASC_state__c ;;
    description: "Msg Link Smsasc State C — business attribute for Conversational Analytics. Synonyms: [Msg Link Smsasc State C, Account]"
    group_label: "Attributes"
    synonyms: ["Msg Link Smsasc State C", "Account"]
    tags: ["conversational"]
  }

  dimension: msg_link_smsass_errors_c {
    label: "Msg Link Smsass Errors C"
    type: string
    sql: ${TABLE}.msg_link_SMSASS_errors__c ;;
    description: "Msg Link Smsass Errors C — business attribute for Conversational Analytics. Synonyms: [Msg Link Smsass Errors C, Account]"
    group_label: "Attributes"
    synonyms: ["Msg Link Smsass Errors C", "Account"]
    tags: ["conversational"]
  }

  dimension: msg_link_smsass_id_c {
    label: "Msg Link Smsass ID C"
    type: string
    sql: ${TABLE}.msg_link_SMSASS_id__c ;;
    description: "Msg Link Smsass ID C — business attribute for Conversational Analytics. Synonyms: [Msg Link Smsass Id C, Account, Msg Link Smsass ID C]"
    group_label: "Attributes"
    synonyms: ["Msg Link Smsass Id C", "Account", "Msg Link Smsass ID C"]
    tags: ["conversational"]
  }

  dimension: msg_link_smsass_state_c {
    label: "Msg Link Smsass State C"
    type: string
    sql: ${TABLE}.msg_link_SMSASS_state__c ;;
    description: "Msg Link Smsass State C — business attribute for Conversational Analytics. Synonyms: [Msg Link Smsass State C, Account]"
    group_label: "Attributes"
    synonyms: ["Msg Link Smsass State C", "Account"]
    tags: ["conversational"]
  }

  dimension: ffx_contact_correlation_id_c {
    label: "Ffx Contactcorrelationid C"
    type: string
    sql: ${TABLE}.FFX_ContactCorrelationID__c ;;
    description: "Ffx Contactcorrelationid C — business attribute for Conversational Analytics. Synonyms: [Ffx Contactcorrelationid C, Account, Ffx Contact Correlation ID C]"
    group_label: "Attributes"
    synonyms: ["Ffx Contactcorrelationid C", "Account", "Ffx Contact Correlation ID C"]
    tags: ["conversational"]
  }

  dimension: ffx_smc_city_c {
    label: "Ffx Smc City C"
    type: string
    sql: ${TABLE}.FFX_SMC_City__c ;;
    description: "Ffx Smc City C — business attribute for Conversational Analytics. Synonyms: [Ffx Smc City C, Account]"
    group_label: "Attributes"
    synonyms: ["Ffx Smc City C", "Account"]
    tags: ["conversational"]
  }

  dimension: ffx_smc_country_c {
    label: "Ffx Smc Country C"
    type: string
    sql: ${TABLE}.FFX_SMC_Country__c ;;
    description: "Ffx Smc Country C — business attribute for Conversational Analytics. Synonyms: [Ffx Smc Country C, Account]"
    group_label: "Amounts"
    synonyms: ["Ffx Smc Country C", "Account"]
    tags: ["conversational"]
  }

  dimension: ffx_smc_email_c {
    label: "Ffx Smc Email C"
    type: string
    sql: ${TABLE}.FFX_SMC_Email__c ;;
    description: "Ffx Smc Email C — business attribute for Conversational Analytics. Synonyms: [Ffx Smc Email C, Account]"
    group_label: "Attributes"
    synonyms: ["Ffx Smc Email C", "Account"]
    tags: ["conversational"]
    suggest_dimension: ffx_smc_email_c
  }

  dimension: ffx_smc_fax_c {
    label: "Ffx Smc Fax C"
    type: string
    sql: ${TABLE}.FFX_SMC_Fax__c ;;
    description: "Ffx Smc Fax C — business attribute for Conversational Analytics. Synonyms: [Ffx Smc Fax C, Fax, Account]"
    group_label: "Attributes"
    synonyms: ["Ffx Smc Fax C", "Fax", "Account"]
    tags: ["conversational"]
  }

  dimension: ffx_smc_first_name_c {
    label: "Ffx Smc Firstname C"
    type: string
    sql: ${TABLE}.FFX_SMC_FirstName__c ;;
    description: "Ffx Smc Firstname C — business attribute for Conversational Analytics. Synonyms: [Ffx Smc Firstname C, Name, Account, Ffx Smc First Name C]"
    group_label: "Attributes"
    synonyms: ["Ffx Smc Firstname C", "Name", "Account", "Ffx Smc First Name C"]
    tags: ["conversational"]
    suggest_dimension: ffx_smc_first_name_c
  }

  dimension: ffx_smc_last_name_c {
    label: "Ffx Smc Lastname C"
    type: string
    sql: ${TABLE}.FFX_SMC_LastName__c ;;
    description: "Ffx Smc Lastname C — business attribute for Conversational Analytics. Synonyms: [Ffx Smc Lastname C, Name, Account, Ffx Smc Last Name C]"
    group_label: "Attributes"
    synonyms: ["Ffx Smc Lastname C", "Name", "Account", "Ffx Smc Last Name C"]
    tags: ["conversational"]
    suggest_dimension: ffx_smc_last_name_c
  }

  dimension: ffx_smc_state_c {
    label: "Ffx Smc State C"
    type: string
    sql: ${TABLE}.FFX_SMC_State__c ;;
    description: "Ffx Smc State C — business attribute for Conversational Analytics. Synonyms: [Ffx Smc State C, Account]"
    group_label: "Attributes"
    synonyms: ["Ffx Smc State C", "Account"]
    tags: ["conversational"]
  }

  dimension: ffx_smc_street_c {
    label: "Ffx Smc Street C"
    type: string
    sql: ${TABLE}.FFX_SMC_Street__c ;;
    description: "Ffx Smc Street C — business attribute for Conversational Analytics. Synonyms: [Ffx Smc Street C, Account]"
    group_label: "Attributes"
    synonyms: ["Ffx Smc Street C", "Account"]
    tags: ["conversational"]
  }

  dimension: ffx_smc_tel_c {
    label: "Ffx Smc Tel C"
    type: string
    sql: ${TABLE}.FFX_SMC_Tel__c ;;
    description: "Ffx Smc Tel C — business attribute for Conversational Analytics. Synonyms: [Ffx Smc Tel C, Account]"
    group_label: "Attributes"
    synonyms: ["Ffx Smc Tel C", "Account"]
    tags: ["conversational"]
  }

  dimension: ffx_smc_zip_pc_c {
    label: "Ffx Smc Zippc C"
    type: string
    sql: ${TABLE}.FFX_SMC_ZipPC__c ;;
    description: "Ffx Smc Zippc C — business attribute for Conversational Analytics. Synonyms: [Ffx Smc Zippc C, Account, Ffx Smc Zip Pc C]"
    group_label: "Attributes"
    synonyms: ["Ffx Smc Zippc C", "Account", "Ffx Smc Zip Pc C"]
    tags: ["conversational"]
  }

  dimension: ffx_sm_cis_finance_contact_c {
    label: "Ffx Smcisfinancecontact C"
    type: string
    sql: ${TABLE}.FFX_SMCisFinanceContact__c ;;
    description: "Ffx Smcisfinancecontact C — business attribute for Conversational Analytics. Synonyms: [Ffx Smcisfinancecontact C, Account, Ffx Sm Cis Finance Contact C]"
    group_label: "Classification"
    synonyms: ["Ffx Smcisfinancecontact C", "Account", "Ffx Sm Cis Finance Contact C"]
    tags: ["conversational"]
  }

  dimension: region_c {
    label: "Region C"
    type: string
    sql: ${TABLE}.Region__c ;;
    description: "Region C — business attribute for Conversational Analytics. Synonyms: [Region C, Account]"
    group_label: "Attributes"
    synonyms: ["Region C", "Account"]
    tags: ["conversational"]
    suggestions: ["EUR"]
  }

  dimension: segment_c {
    label: "Segment C"
    type: string
    sql: ${TABLE}.Segment__c ;;
    description: "Segment C — business attribute for Conversational Analytics. Synonyms: [Segment C, Account]"
    group_label: "Amounts"
    value_format_name: decimal_0
    synonyms: ["Segment C", "Account"]
    tags: ["conversational"]
  }

  dimension: sub_region_c {
    label: "Sub Region C"
    type: string
    sql: ${TABLE}.Sub_Region__c ;;
    description: "Sub Region C — business attribute for Conversational Analytics. Synonyms: [Sub Region C, Region C, Account]"
    group_label: "Attributes"
    synonyms: ["Sub Region C", "Region C", "Account"]
    tags: ["conversational"]
    suggestions: ["EUR"]
  }

  dimension: stack_existing_c {
    label: "Stack Existing C"
    type: string
    sql: ${TABLE}.Stack_Existing__c ;;
    description: "Stack Existing C — business attribute for Conversational Analytics. Synonyms: [Stack Existing C, Account]"
    group_label: "Attributes"
    synonyms: ["Stack Existing C", "Account"]
    tags: ["conversational"]
  }

  dimension: stack_desired_c {
    label: "Stack Desired C"
    type: string
    sql: ${TABLE}.Stack_Desired__c ;;
    description: "Stack Desired C — business attribute for Conversational Analytics. Synonyms: [Stack Desired C, Account]"
    group_label: "Attributes"
    synonyms: ["Stack Desired C", "Account"]
    tags: ["conversational"]
  }

  dimension: business_summary_c {
    label: "Business Summary C"
    type: string
    sql: ${TABLE}.Business_Summary__c ;;
    description: "Business Summary C — business attribute for Conversational Analytics. Synonyms: [Business Summary C, Account]"
    group_label: "Attributes"
    synonyms: ["Business Summary C", "Account"]
    tags: ["conversational"]
  }

  dimension: partner_account_priority_list_c {
    label: "Partner Account Priority List C"
    type: string
    sql: ${TABLE}.Partner_Account_Priority_List__c ;;
    description: "Partner Account Priority List C — business attribute for Conversational Analytics. Synonyms: [Partner Account Priority List C, Account, Accounts, Accounts Data, Customer Account, accounts_data]"
    group_label: "Amounts"
    synonyms: ["Partner Account Priority List C", "Account", "Accounts", "Accounts Data", "Customer Account", "accounts_data"]
    tags: ["conversational"]
  }

  dimension: cnps_c {
    label: "Cnps C"
    type: string
    sql: ${TABLE}.CNPS__c ;;
    description: "Cnps C — business attribute for Conversational Analytics. Synonyms: [Cnps C, Account]"
    group_label: "Attributes"
    synonyms: ["Cnps C", "Account"]
    tags: ["conversational"]
  }

  dimension: group_account_c {
    label: "Group Account C"
    type: string
    sql: ${TABLE}.Group_Account__c ;;
    description: "Group Account C — business attribute for Conversational Analytics. Synonyms: [Group Account C, Account, Accounts, Accounts Data, Customer Account, accounts_data]"
    group_label: "Amounts"
    synonyms: ["Group Account C", "Account", "Accounts", "Accounts Data", "Customer Account", "accounts_data"]
    tags: ["conversational"]
  }

  dimension: pipedrive_account_id_c {
    label: "Pipedrive Account ID C"
    type: string
    sql: ${TABLE}.Pipedrive_Account_ID__c ;;
    description: "Pipedrive Account ID C — business attribute for Conversational Analytics. Synonyms: [Pipedrive Account Id C, Account, Accounts, Accounts Data, Customer Account, accounts_data, Account Id, Pipedrive Account ID C]"
    group_label: "Amounts"
    synonyms: ["Pipedrive Account Id C", "Account", "Accounts", "Accounts Data", "Customer Account", "accounts_data", "Account Id", "Pipedrive Account ID C"]
    tags: ["conversational"]
  }

  dimension: recipient_type_c {
    label: "Recipient Type C"
    type: string
    sql: ${TABLE}.Recipient_Type__c ;;
    description: "Recipient Type C — business attribute for Conversational Analytics. Synonyms: [Recipient Type C, Type, Account]"
    group_label: "Classification"
    synonyms: ["Recipient Type C", "Type", "Account"]
    tags: ["conversational"]
  }

  dimension: send_french_template_c {
    label: "Send French Template C"
    type: string
    sql: ${TABLE}.Send_French_Template__c ;;
    description: "Send French Template C — business attribute for Conversational Analytics. Synonyms: [Send French Template C, Account]"
    group_label: "Dates"
    synonyms: ["Send French Template C", "Account"]
    tags: ["conversational"]
  }

  dimension: send_french_conga_document_c {
    label: "Send French Conga Document C"
    type: string
    sql: ${TABLE}.Send_French_Conga_Document__c ;;
    description: "Send French Conga Document C — business attribute for Conversational Analytics. Synonyms: [Send French Conga Document C, Account]"
    group_label: "Dates"
    synonyms: ["Send French Conga Document C", "Account"]
    tags: ["conversational"]
  }

  dimension: micro_region_c {
    label: "Micro Region C"
    type: string
    sql: ${TABLE}.Micro_Region__c ;;
    description: "Micro Region C — business attribute for Conversational Analytics. Synonyms: [Micro Region C, Region C, Account]"
    group_label: "Attributes"
    synonyms: ["Micro Region C", "Region C", "Account"]
    tags: ["conversational"]
    suggestions: ["EUR"]
  }

  dimension: pod_cluster_c {
    label: "Pod Cluster C"
    type: string
    sql: ${TABLE}.Pod_Cluster__c ;;
    description: "Pod Cluster C — business attribute for Conversational Analytics. Synonyms: [Pod Cluster C, Account]"
    group_label: "Attributes"
    synonyms: ["Pod Cluster C", "Account"]
    tags: ["conversational"]
  }

  dimension: msa_link_c {
    label: "Msa Link C"
    type: string
    sql: ${TABLE}.MSA_Link__c ;;
    description: "Msa Link C — business attribute for Conversational Analytics. Synonyms: [Msa Link C, Account]"
    group_label: "Attributes"
    synonyms: ["Msa Link C", "Account"]
    tags: ["conversational"]
  }

  dimension: ctpisa_balance_sheet_gla_prepaid_expenses_c {
    label: "Ctpisa Balance Sheet Gla Prepaid Expenses C"
    type: string
    sql: ${TABLE}.CTPISA__Balance_Sheet_GLA_Prepaid_Expenses__c ;;
    description: "Ctpisa Balance Sheet Gla Prepaid Expenses C — business attribute for Conversational Analytics. Synonyms: [Ctpisa Balance Sheet Gla Prepaid Expenses C, Account]"
    group_label: "Attributes"
    synonyms: ["Ctpisa Balance Sheet Gla Prepaid Expenses C", "Account"]
    tags: ["conversational"]
  }

  dimension: ctpisa_company_registration_number_c {
    label: "Ctpisa Companyregistrationnumber C"
    type: string
    sql: ${TABLE}.CTPISA__CompanyRegistrationNumber__c ;;
    description: "Ctpisa Companyregistrationnumber C — business attribute for Conversational Analytics. Synonyms: [Ctpisa Companyregistrationnumber C, Account, Ctpisa Company Registration Number C]"
    group_label: "Attributes"
    value_format_name: percent_2
    synonyms: ["Ctpisa Companyregistrationnumber C", "Account", "Ctpisa Company Registration Number C"]
    tags: ["conversational"]
  }

  dimension: ctpisa_peppol_identifier_c {
    label: "Ctpisa Peppol Identifier C"
    type: string
    sql: ${TABLE}.CTPISA__Peppol_Identifier__c ;;
    description: "Ctpisa Peppol Identifier C — business attribute for Conversational Analytics. Synonyms: [Ctpisa Peppol Identifier C, Account]"
    group_label: "Attributes"
    synonyms: ["Ctpisa Peppol Identifier C", "Account"]
    tags: ["conversational"]
  }

  dimension: ctpisa_peppol_schemes_c {
    label: "Ctpisa Peppol Schemes C"
    type: string
    sql: ${TABLE}.CTPISA__Peppol_schemes__c ;;
    description: "Ctpisa Peppol Schemes C — business attribute for Conversational Analytics. Synonyms: [Ctpisa Peppol Schemes C, Account]"
    group_label: "Attributes"
    synonyms: ["Ctpisa Peppol Schemes C", "Account"]
    tags: ["conversational"]
  }

  dimension: ctpisa_vendor_base_date1_c {
    label: "Ctpisa Vendorbasedate1 C"
    type: string
    sql: ${TABLE}.CTPISA__VendorBaseDate1__c ;;
    description: "Ctpisa Vendorbasedate1 C — business attribute for Conversational Analytics. Synonyms: [Ctpisa Vendorbasedate1 C, Account, Ctpisa Vendor Base Date1 C]"
    group_label: "Dates"
    synonyms: ["Ctpisa Vendorbasedate1 C", "Account", "Ctpisa Vendor Base Date1 C"]
    tags: ["conversational"]
  }

  dimension: ctpisa_vendor_days_offset1_c {
    label: "Ctpisa Vendordaysoffset1 C"
    type: string
    sql: ${TABLE}.CTPISA__VendorDaysOffset1__c ;;
    description: "Ctpisa Vendordaysoffset1 C — business attribute for Conversational Analytics. Synonyms: [Ctpisa Vendordaysoffset1 C, Account, Ctpisa Vendor Days Offset1 C]"
    group_label: "Dates"
    synonyms: ["Ctpisa Vendordaysoffset1 C", "Account", "Ctpisa Vendor Days Offset1 C"]
    tags: ["conversational"]
  }

  dimension: ctpisa_vendor_emails_cc_for_invoice_scan_rejection_c {
    label: "Ctpisa Vendoremails Cc For Invoicescanrejection C"
    type: string
    sql: ${TABLE}.CTPISA__VendorEmails_Cc_for_InvoiceScanRejection__c ;;
    description: "Ctpisa Vendoremails Cc For Invoicescanrejection C — business attribute for Conversational Analytics. Synonyms: [Ctpisa Vendoremails Cc For Invoicescanrejection C, Account, Ctpisa Vendor Emails Cc For Invoice Scan Rejection C]"
    group_label: "Dates"
    synonyms: ["Ctpisa Vendoremails Cc For Invoicescanrejection C", "Account", "Ctpisa Vendor Emails Cc For Invoice Scan Rejection C"]
    tags: ["conversational"]
    suggest_dimension: ctpisa_vendor_emails_cc_for_invoice_scan_rejection_c
  }

  dimension: ctpisa_invert_locale_invoicescan_recognizd_date_c {
    label: "Ctpisa Invert Locale Invoicescan Recognizd Date C"
    type: string
    sql: ${TABLE}.CTPISA__invert_locale_invoicescan_recognizd_date__c ;;
    description: "Ctpisa Invert Locale Invoicescan Recognizd Date C — business attribute for Conversational Analytics. Synonyms: [Ctpisa Invert Locale Invoicescan Recognizd Date C, Account]"
    group_label: "Dates"
    synonyms: ["Ctpisa Invert Locale Invoicescan Recognizd Date C", "Account"]
    tags: ["conversational"]
  }

  dimension: permit_datatonic_trust_center_access_c {
    label: "Permit Datatonic Trust Center Access C"
    type: string
    sql: ${TABLE}.Permit_Datatonic_Trust_Center_Access__c ;;
    description: "Permit Datatonic Trust Center Access C — business attribute for Conversational Analytics. Synonyms: [Permit Datatonic Trust Center Access C, Account]"
    group_label: "Attributes"
    synonyms: ["Permit Datatonic Trust Center Access C", "Account"]
    tags: ["conversational"]
  }

  dimension: bypass_datatonic_trust_center_nda_requir_c {
    label: "Bypass Datatonic Trust Center Nda Requir C"
    type: string
    sql: ${TABLE}.Bypass_Datatonic_Trust_Center_NDA_Requir__c ;;
    description: "Bypass Datatonic Trust Center Nda Requir C — business attribute for Conversational Analytics. Synonyms: [Bypass Datatonic Trust Center Nda Requir C, Account]"
    group_label: "Attributes"
    synonyms: ["Bypass Datatonic Trust Center Nda Requir C", "Account"]
    tags: ["conversational"]
  }

  dimension: account_status_c {
    label: "Account Status C"
    type: string
    sql: ${TABLE}.Account_Status__c ;;
    description: "Account Status C — business attribute for Conversational Analytics. Synonyms: [Account Status C, Account, Accounts, Accounts Data, Customer Account, accounts_data]"
    group_label: "Amounts"
    synonyms: ["Account Status C", "Account", "Accounts", "Accounts Data", "Customer Account", "accounts_data"]
    tags: ["conversational"]
  }

  dimension: contractors_permitted_c {
    label: "Contractors Permitted C"
    type: string
    sql: ${TABLE}.Contractors_permitted__c ;;
    description: "Contractors Permitted C — business attribute for Conversational Analytics. Synonyms: [Contractors Permitted C, Account]"
    group_label: "Attributes"
    synonyms: ["Contractors Permitted C", "Account"]
    tags: ["conversational"]
  }

  dimension: strategic_account_c {
    label: "Strategic Account C"
    type: string
    sql: ${TABLE}.Strategic_Account__c ;;
    description: "Strategic Account C — business attribute for Conversational Analytics. Synonyms: [Strategic Account C, Account, Accounts, Accounts Data, Customer Account, accounts_data]"
    group_label: "Amounts"
    value_format_name: percent_2
    synonyms: ["Strategic Account C", "Account", "Accounts", "Accounts Data", "Customer Account", "accounts_data"]
    tags: ["conversational"]
  }

  dimension: strategic_account_type_c {
    label: "Strategic Account Type C"
    type: string
    sql: ${TABLE}.Strategic_Account_Type__c ;;
    description: "Strategic Account Type C — business attribute for Conversational Analytics. Synonyms: [Strategic Account Type C, Account, Accounts, Accounts Data, Customer Account, accounts_data, Type]"
    group_label: "Amounts"
    value_format_name: percent_2
    synonyms: ["Strategic Account Type C", "Account", "Accounts", "Accounts Data", "Customer Account", "accounts_data", "Type"]
    tags: ["conversational"]
  }

  dimension: global_resourcing_c {
    label: "Global Resourcing C"
    type: string
    sql: ${TABLE}.Global_Resourcing__c ;;
    description: "Global Resourcing C — business attribute for Conversational Analytics. Synonyms: [Global Resourcing C, Account]"
    group_label: "Attributes"
    synonyms: ["Global Resourcing C", "Account"]
    tags: ["conversational"]
  }

  dimension: msa_expiry_date_c {
    label: "Msa Expiry Date C"
    type: string
    sql: ${TABLE}.MSA_Expiry_Date__c ;;
    description: "Msa Expiry Date C — business attribute for Conversational Analytics. Synonyms: [Msa Expiry Date C, Account]"
    group_label: "Dates"
    synonyms: ["Msa Expiry Date C", "Account"]
    tags: ["conversational"]
  }

}
