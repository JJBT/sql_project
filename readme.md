[ОЧЕНЬ КЛАССНАЯ ССЫЛКА](https://docs.google.com/document/d/1tnoCu4mVFCMgGdy8yHjnCPF0XmM8RHiWQp5U2-yCimc/edit?usp=sharing)

# Run app

```sh
pip install poetry
git clone https://github.com/JJBT/sql_project.git
cd project_directory
poetry install
```

### Create .env file

```sh
touch .env
echo "export FLASK_ENV=development" >> .env
echo "export DATABASE_USER=your_username" >> .env
echo "export DATABASE_PASSWORD=your_password" >> .env
poetry shell
flask run
```
