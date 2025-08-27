# AUTO GENERATED FILE - DO NOT EDIT

export dashketcher

"""
    dashketcher(;kwargs...)

A DashKetcher component.
DashKetcher is a Function Component to use Ketcher drawer with Dash.
It outputs the current drawn structure as a SMILES string,
and can also draw the structure corresponding to a provided
SMILES string.
Keyword arguments:
- `id` (String; required): The ID used to identify this component in Dash callbacks.
- `editor_height` (String; optional): The height of the module. Unit is required (eg: %, px)
- `editor_id` (String; required): The title of the Ketch iframe.
- `editor_url` (String; required): The URL of sketcher html webpage.
- `editor_width` (String; optional): The width of the module. Unit is required (eg: %, px)
- `input_SMILES` (String; optional): The SMILES string for which Ketcher should draw the structure.
- `output_SMILES` (String; optional): The computed SMILES string by Ketcher - output only.
- `trigger_getSmiles` (Real; optional): When this prop changes, the component runs getSmiles
and updates output_SMILES.
"""
function dashketcher(; kwargs...)
        available_props = Symbol[:id, :editor_height, :editor_id, :editor_url, :editor_width, :input_SMILES, :output_SMILES, :trigger_getSmiles]
        wild_props = Symbol[]
        return Component("dashketcher", "DashKetcher", "dash_ketcher", available_props, wild_props; kwargs...)
end

