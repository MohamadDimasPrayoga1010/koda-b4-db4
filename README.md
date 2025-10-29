# ERD SISTEM AUTHENTIFICATION FLOW

```mermaid
erDiagram

users{
    int id
    varchar(100) username
    varchar(100) email
    varchar(100) password
}

password_reset{
    int id
    int user_id
    string token
    varchar(100) reset_password
}

login{
    int id
    int user_id
    sting token
    boolean success
}

users ||--o{ password_reset : "request"
users ||--o{ login : "login"


```