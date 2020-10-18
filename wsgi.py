from app import create_app
from subprocess import check_output

app = create_app()

stdout = check_output(["./preparations_db.sh"]).decode("utf-8")
print(stdout)
