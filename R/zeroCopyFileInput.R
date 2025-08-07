# AUTO GENERATED FILE - DO NOT EDIT

#' @export
zeroCopyFileInput <- function(id=NULL, accept=NULL, className=NULL, disabled=NULL, multiple=NULL, style=NULL, timestamp=NULL, value=NULL) {
    
    props <- list(id=id, accept=accept, className=className, disabled=disabled, multiple=multiple, style=style, timestamp=timestamp, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'ZeroCopyFileInput',
        namespace = 'zero_copy_file_input',
        propNames = c('id', 'accept', 'className', 'disabled', 'multiple', 'style', 'timestamp', 'value'),
        package = 'zeroCopyFileInput'
        )

    structure(component, class = c('dash_component', 'list'))
}
