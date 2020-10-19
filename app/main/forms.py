from wtforms import SelectField, Form
from app.main import services


class ChoiceTableForm(Form):
    table = SelectField("Tables", validate_choice=False)

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.table.choices = services.get_all_tables()
