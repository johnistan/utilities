SELECT npi, entity_type_code, provider_last_name_legal_name||', '||provider_first_name as description,  provider_first_line_business_mailing_address,
 provider_second_line_business_mailing_address, provider_business_mailing_address_state_name, provider_business_mailing_address_postal_code,
 provider_business_practice_location_address_city_name, healthcare_provider_taxonomy_code_1,healthcare_provider_taxonomy_code_2,healthcare_provider_taxonomy_code_3  
into npi_registry_info

  from npi_registry npi 

  where npi.entity_type_code = '1'

  --and provider_last_name_legal_name is null

union


SELECT  npi, entity_type_code, provider_organization_name_legal_business_name , provider_first_line_business_mailing_address,
 provider_second_line_business_mailing_address, provider_business_mailing_address_state_name, provider_business_mailing_address_postal_code, 
provider_business_practice_location_address_city_name, healthcare_provider_taxonomy_code_1,healthcare_provider_taxonomy_code_2,healthcare_provider_taxonomy_code_3  from npi_registry npi 

where npi.entity_type_code = '2'

--and provider_organization_name_legal_business_name is null


;
