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

Return Example:
```
{
    "jwt": "thisissupposetobelongandjumbledup"
}
``` 

#### Log In

```
POST api/tokens
```
Request Body:

```
{ username: String, password: String }
```

Return Example:
```
{
    "jwt": "thisissupposetobelongandjumbledup"
}
``` 

Test User is already saved in the database to use. 

username: "test"
password: "123456"


#### Get User

```
GET api/users/:id
```
Request Body:

```
N/A
```

Return Example:
```
{
    "id": 1,
    "username": "test"
}
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

Return Example:

```
[
    {
        "id": 1,
        "name": "Music"
    },
    {
        "id": 2,
        "name": "Video Games"
    },
    {
        "id": 3,
        "name": "Films"
    }
]
```
#### Get Items in Category

```
GET api/categories/:categoryId/items
```

Return Example:

```
[
    {
        "id": 1,
        "imageUrl": "https://robohash.org/eumenimquo.png?size=300x300&set=set1",
        "name": "Gears of War",
        "categoryId": 2
    },
    {
        "id": 2,
        "imageUrl": "https://robohash.org/iustopossimusmodi.png?size=300x300&set=set1",
        "name": "Halo 3",
        "categoryId": 2
    }
]
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

Return Example:

```
{
    "id": 5,
    "imageUrl": "https://robohash.org/iustopossimusmodi.png?size=300x300&set=set1",
    "userId": 1,
    "name": "Halo 3",
    "position": 1
}
```
#### Delete a Top Favorite

```
DELETE api/users/:userId/favorites/:id
```

Request Body:

```
N/A
```

Return Example:

```
{
    "id": 5,
    "imageUrl": "https://robohash.org/iustopossimusmodi.png?size=300x300&set=set1",
    "userId": 1,
    "name": "Halo 3",
    "position": 1
}
```


