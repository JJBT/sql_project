from flask import request, jsonify, render_template
from app.main import bp, services, forms


@bp.route("/", methods=["GET", "POST"])
def index():
    """
    Main page. With buttons and tables. Different procedures
    """
    form = forms.ChoiceTableForm()

    if request.method == "POST":
        form = forms.ChoiceTableForm(request.form)
        if form.validate():
            data = services.show_table(form.table.data)
        return render_template("basic.html", form=form, data=data)
    return render_template("basic.html", form=form)
