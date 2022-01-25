# White Word Cells

> White Word Cells is a word store app that lets users store words with custom description.

White Word Cells lets you save words with custom descriptions. You can store personal affirmations or motivations, describe your pet or reframe words with bad vibes. It is modelled after the white blood cells to help you fight negative thoughts. We are made of word, what words are you made of? 

## REACT FRONTEND

Check out the White Word Cell Frontend Repo [here](https://github.com/francisuloko/white-word-cells-frontend)

Or sign up at [whitewordcells.com](whitewordcells.com)

## Built With

- Ruby v3.0.3
- Ruby on Rails v6.1.4.4
- Postgres
- Rubocop


## Getting Started

To get a local copy up and running follow these simple steps.

- To get a local copy of this project, run

  `git clone https://github.com/francisuloko/white-word-cells-backend.git`

- Change into the project directory, run

  `cd white-word-cells-backend`


### Setup

Run the following commands to get started

```

bundle install
rails db:create
rails db:migrate
rails server

```


### API Endpoints

Authentication:

Register a new user:

  `curl -H "withCredentials: ture" -X POST -d { "name": "user 1", "email": "example@email.com", "password": "password123" } http://localhost:3001/api/v1/users`

  Login registered user (creates sessions)

  `curl -H "withCredentials: true" -X POST -d { "email": "example@email.com", "password": "password123" } http://localhost:3001/api/v1/login`

  Logout

  `curl -H "withCredentials: true" -X DELETE http://localhost:3001/api/v1/logout`

  Authorization:

  Get current user words:

  `curl -H "withCredentials: true" -X GET http://localhost:3001/api/v1/cells`

  Create new word:

  `curl -H "withCredentials: true" -X POST -d { "title": "Cannot" , "description": "There is nothing you cannot do if you try"} http://localhost:3001/api/v1/cells`

  Edit word:

  `curl -H "withCredentials: true" -X PUT -d { "title": "Can" , "description": "I can do all things through Christ who strengthens me"} http://localhost:3001/api/v1/cells/:id`

  Delete word:

  `curl -H "withCredentials: true" -X DELETE http://localhost:3001/api/v1/cells/:id`



## Authors

👤 **Francis Uloko**

- [Github](https://github.com/francisuloko)
- [Twitter](https://twitter.com/francisuloko)
- [LinkedIn](https://linkedin.com/in/francisuloko)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/francisuloko/white-word-cells-backend/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- TBA

## 📝 License

This project is [MIT](https://mit-license.org) licensed.
