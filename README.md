# My Top Nine API


#### Sign Up

```
POST api/users
```
Request Body:

```
{ username: String, password: String }
```

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
{ id: Integer }
```

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


