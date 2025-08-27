# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dashKetcher <- function(id=NULL, editor_height=NULL, editor_id=NULL, editor_url=NULL, editor_width=NULL, input_SMILES=NULL, output_SMILES=NULL, trigger_getSmiles=NULL) {
    
    props <- list(id=id, editor_height=editor_height, editor_id=editor_id, editor_url=editor_url, editor_width=editor_width, input_SMILES=input_SMILES, output_SMILES=output_SMILES, trigger_getSmiles=trigger_getSmiles)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'DashKetcher',
        namespace = 'dash_ketcher',
        propNames = c('id', 'editor_height', 'editor_id', 'editor_url', 'editor_width', 'input_SMILES', 'output_SMILES', 'trigger_getSmiles'),
        package = 'dashKetcher'
        )

    structure(component, class = c('dash_component', 'list'))
}
