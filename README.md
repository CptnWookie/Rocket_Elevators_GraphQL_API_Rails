# Rocket_Elevators_GraphQL_API_Rails

## Members of the team

- **[Alexandre Leblanc](https://github.com/CptnWookie)**

- **[Frimina Zaddi](https://github.com/frimina)**

- **[Rafaela_Schwarz](https://github.com/rafa-3111)**

- **[Saad eddine](https://github.com/saadeddinne)**


**Here is the information you must enter in the sign in page to access the BackOffice :**

- user : `admin@admin.com`
- password : `admin123`

Here is the link to download postman : [POSTMAN](https://www.postman.com/)

Retrieving the address of the building, the beginning and the end of the intervention for a specific intervention. : 

```sh
Query 1:
{
    "query": "query{building(id: 10){ id customer{id companyName companyContactPhone companyContactEmail    technicalAuthorityFullName createdAt } factInterventions{id interventionStart interventionFinish status results }address{id numberAndStreet postalCode city country}}}"
}
```

Retrieving customer information and the list of interventions that took place for a specific building : 
```sh
Query 2:
{
    "query": "query{building(id: 10){ id customer{id companyName companyContactPhone companyContactEmail    technicalAuthorityFullName createdAt } factInterventions{id interventionStart interventionFinish status results }address{id numberAndStreet postalCode city country}}}"
}
```

Retrieval of all interventions carried out by a specified employee with the buildings associated with these interventions including the details (Table BuildingDetails) associated with these buildings : 

```sh
Query : 3
{
    "query": "query{employee(id: 5){firstName lastName email factInterventions{ id interventionStart interventionFinish status results building{id} address{country city postalCode } buildingDetail{ informationKey value}}}}"
}
```


if you want to run the query directly in graphql, here is the code : 

Query 1 :

```sh
query{factIntervention(id:2000){
   buildingId
  employeeId
  interventionStart
  interventionFinish
  address{
    id
    numberAndStreet
    city
    postalCode
    country
  }
}
}
```
Query 2 :

```sh
query{building(id: 10){
  id
  customer{
    id
    companyName
    companyContactPhone
    companyContactEmail
    technicalAuthorityFullName
    createdAt    
  }
  factInterventions{
    id
    interventionStart
    interventionFinish
   status
    results
  }
  address{
    id   
    numberAndStreet
    postalCode
    city
    country
  	}
  }
}
```
Query 3 :

```sh
query{
    employee(id: 5){
  firstName
  lastName
  email
  factInterventions{
    id
    interventionStart
    interventionFinish
    status
    results
    building{
     id
    }
   address{
        country
        city
        postalCode
      } 
     buildingDetail{
        informationKey
      	value
      }
  } 
  }
}
```
