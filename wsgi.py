from subprocess import check_output

stdout = check_output(["./preparations_db.sh"]).decode("utf-8")
print(stdout)

from app import create_app

app = create_app()
