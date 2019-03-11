# My Top Nine API

https://my-top-nine.herokuapp.com/api

GET Categories Example:

https://my-top-nine.herokuapp.com/api/categories

#### Sign Up

```
POST api/users
```
Request Body:

```
{ username: String, password: String }
```

Note: Sign Up doesn't return JSON Web Token. Must Login after Signing Up to receive JWT. 

#### Log In

```
POST api/tokens
```
Request Body:

```
{ username: String, password: String }
```


#### Get User

```
GET api/users/:id
```
Request Body:

```
N/A
```

Note: This endpoint should be used after logging in and decoding the JWT
token in the front end to get the userId to retrieve all user attributes.

#### Get Categories

```
GET api/categories
```

Request Body:

```
N/A
```

#### Get Items in Category

```
GET api/categories/:categoryId/items
```

Request Body:

```
N/A
```

#### Create a Top Favorite

```
POST api/users/:userId/favorites
```

Request Body:

```
{ name: String, imageUrl: String, position: Integer }
```
#### Delete a Top Favorite

```
DELETE api/users/:userId/favorites/:id
```

Request Body:

```
N/A
```


