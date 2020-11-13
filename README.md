# Rocket_Elevators_GraphQL_API_Rails

## Members of the team

- **[Alexandre Leblanc](https://github.com/CptnWookie)**

- **[Frimina Zaddi](https://github.com/frimina)**

- **[Rafaela_Schwarz](https://github.com/rafa-3111)**

- **[Saad eddine](https://github.com/saadeddinne)**


**Here is the information you must enter in the sign in page to access the BackOffice :**

- user : `admin@admin.com`
- password : `admin123`



```sh
Query 1:
{
    "query": "query{building(id: 10){ id customer{id companyName companyContactPhone companyContactEmail    technicalAuthorityFullName createdAt } factInterventions{id interventionStart interventionFinish status results }address{id numberAndStreet postalCode city country}}}"
}
```


```sh
Query 2:
{
    "query": "query{building(id: 10){ id customer{id companyName companyContactPhone companyContactEmail    technicalAuthorityFullName createdAt } factInterventions{id interventionStart interventionFinish status results }address{id numberAndStreet postalCode city country}}}"
}
```


```sh
Query : 3
{
    "query": "query{employee(id: 5){firstName lastName email factInterventions{ id interventionStart interventionFinish status results building{id} address{country city postalCode } buildingDetail{ informationKey value}}}}"
}
```
