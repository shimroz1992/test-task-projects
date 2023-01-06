## Install

### Clone the repository

```bash
git clone https://github.com/shimroz1992/test-task-projects.git
cd test-task-projects

```

### Check your Ruby version

```bash
ruby -v
```

The ouput should start with something like `ruby 3.0.0`

If not, install the right ruby version using rvm (it could take a while):

```bash
rvm install "ruby-3.1.2"
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler):

```bash
bundle
```

### Update database.yml file
In database.yml file, edit the database configuration if required.

### Initialize the database

```ruby
rails db:create db:migrate
```

### Serve

```ruby
rails s
```
And now you can visit the site with the URL http://localhost:3000/api-docs/index.html

### Additonal Info
if you create changes in spec folder
run below command

```bash
rake rswag 
```

**Postman collections**

```
{
	"info": {
		"_postman_id": "70ee615b-56f6-48a7-9994-576410fca618",
		"name": "TEST-TASK-PROJECTS",
		"schema": "https://schema.getpostman.com/json/collection/v2.1.0/collection.json",
		"_exporter_id": "24714191"
	},
	"item": [
		{
			"name": "login",
			"request": {
				"method": "POST",
				"header": [],
				"body": {
					"mode": "formdata",
					"formdata": [
						{
							"key": "user['email']",
							"value": "test@yopmail.com",
							"type": "text"
						},
						{
							"key": "user['password']",
							"value": "123456789",
							"type": "text"
						}
					]
				},
				"url": {
					"raw": "http://localhost:3000/login",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "3000",
					"path": [
						"login"
					]
				}
			},
			"response": []
		},
		{
			"name": "Signup",
			"request": {
				"method": "POST",
				"header": [],
				"body": {
					"mode": "formdata",
					"formdata": [
						{
							"key": "user[email]",
							"value": "test-33@yopmail.comw",
							"type": "text"
						},
						{
							"key": "user[password]",
							"value": "123456789",
							"type": "text"
						},
						{
							"key": "user[role]",
							"value": "manager",
							"type": "text"
						}
					]
				},
				"url": {
					"raw": "http://localhost:3000/signup",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "3000",
					"path": [
						"signup"
					],
					"query": [
						{
							"key": "user[email]",
							"value": "sample@gmail.com",
							"disabled": true
						},
						{
							"key": "user[password]",
							"value": "test1234",
							"disabled": true
						}
					]
				}
			},
			"response": []
		},
		{
			"name": "Get Projects LIst",
			"request": {
				"auth": {
					"type": "bearer",
					"bearer": [
						{
							"key": "token",
							"value": "{{beare_token}}",
							"type": "string"
						}
					]
				},
				"method": "GET",
				"header": [
					{
						"key": "Aut",
						"value": "",
						"type": "text"
					}
				],
				"url": {
					"raw": "localhost:3000/api/v1/projects",
					"host": [
						"localhost"
					],
					"port": "3000",
					"path": [
						"api",
						"v1",
						"projects"
					]
				}
			},
			"response": []
		},
		{
			"name": "create project",
			"request": {
				"method": "POST",
				"header": [
					{
						"key": "Authorization",
						"value": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiJlNzY3MzM1ZS1iYTQzLTQzMTctOTQzNy1kNGUyYTMyMTg2NjciLCJzdWIiOiIxIiwic2NwIjoidXNlciIsImF1ZCI6bnVsbCwiaWF0IjoxNjczMDE0Mjk0LCJleHAiOjE2NzMwMTYwOTR9.xyvfE84XJnKS_cvxxOPRU9ZJUkB9t66mcIK6nzVTGbM",
						"type": "text"
					}
				],
				"body": {
					"mode": "formdata",
					"formdata": [
						{
							"key": "project[title]",
							"value": "test",
							"type": "text"
						},
						{
							"key": "project[description]",
							"value": "hello india",
							"type": "text"
						},
						{
							"key": "project[status]",
							"value": "true",
							"type": "text"
						},
						{
							"key": "project[start_date]",
							"value": "06/01/2023",
							"type": "text"
						},
						{
							"key": "project[end_date]",
							"value": "08/11/2024",
							"type": "text"
						}
					]
				},
				"url": {
					"raw": "http://localhost:3000/api/v1/projects",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "3000",
					"path": [
						"api",
						"v1",
						"projects"
					]
				}
			},
			"response": []
		},
		{
			"name": "create task for project",
			"request": {
				"method": "POST",
				"header": []
			},
			"response": []
		},
		{
			"name": "assign task",
			"request": {
				"method": "PUT",
				"header": [],
				"body": {
					"mode": "formdata",
					"formdata": [
						{
							"key": "task[assigned_user_id]",
							"value": "2",
							"type": "text"
						}
					]
				},
				"url": {
					"raw": "http://localhost:3000/api/v1/tasks/1/assign_task",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "3000",
					"path": [
						"api",
						"v1",
						"tasks",
						"1",
						"assign_task"
					]
				}
			},
			"response": []
		},
		{
			"name": "get task of project",
			"request": {
				"method": "GET",
				"header": []
			},
			"response": []
		}
	]
}
```

