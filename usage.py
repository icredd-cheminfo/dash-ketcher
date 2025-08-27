import dash_ketcher
from dash import Dash, callback, html, Input, Output, dcc

app = Dash(__name__, assets_ignore='.js')

app.layout = html.Div([
    html.H1("Dash Ketcher - Usage Page"),
    html.P("Dash Ketcher is a Function Component to use Ketcher drawer with Dash."),
    html.P("It outputs the current drawn structure as a SMILES string, and can \
            also draw the structure corresponding to a provided SMILES string."),
    dash_ketcher.DashKetcher(
        id="ketcher",
        editor_url="assets/standalone-3/index.html",
        editor_id="ketcher",
        editor_height="700px",
        editor_width="90%",
    ),
    html.H3("Structure to SMILES"),
    html.P([
        html.Span(id='output'),
        html.Button("Get SMILES!", id="get-smiles", n_clicks=0),
    ], style={"display": "flex", "gap": "10px"}),
    html.H3("SMILES to structure"),
    html.P([
        "Write a SMILES to depict:",
        dcc.Input(id="input-field", type="text", value='',
                  debounce=True, inputMode='latin', spellCheck=False),
    ], style={"display": "flex", "gap": "10px"}),
])


@app.callback(Output('output', 'children'),
          Input("ketcher", "output_SMILES"))
def display_output_SMILES(value):
    return 'Computed SMILES: '+str(value) if value \
        else "No SMILES computed so far or no structure drawn"


@app.callback(Output("ketcher", "trigger_getSmiles"),
              Input("get-smiles", "n_clicks"))
def trigger_smiles_computation(n_clicks):
    return n_clicks

@app.callback(Output("ketcher", "input_SMILES"),
              Input("input-field", "value"))
def trigger_smiles_draw(value):
    return value

if __name__ == '__main__':
    app.run(debug=True)
