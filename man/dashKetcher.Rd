% Auto-generated: do not edit by hand
\name{dashKetcher}

\alias{dashKetcher}

\title{DashKetcher component}

\description{
DashKetcher is a Function Component to use Ketcher drawer with Dash. It outputs the current drawn structure as a SMILES string, and can also draw the structure corresponding to a provided SMILES string.
}

\usage{
dashKetcher(id=NULL, editor_height=NULL, editor_id=NULL,
editor_url=NULL, editor_width=NULL, input_SMILES=NULL,
output_SMILES=NULL, trigger_getSmiles=NULL)
}

\arguments{
\item{id}{Character. The ID used to identify this component in Dash callbacks.}

\item{editor_height}{Character. The height of the module. Unit is required (eg: \%, px)}

\item{editor_id}{Character. The title of the Ketch iframe.}

\item{editor_url}{Character. The URL of sketcher html webpage.}

\item{editor_width}{Character. The width of the module. Unit is required (eg: \%, px)}

\item{input_SMILES}{Character. The SMILES string for which Ketcher should draw the structure.}

\item{output_SMILES}{Character. The computed SMILES string by Ketcher - output only.}

\item{trigger_getSmiles}{Numeric. When this prop changes, the component runs getSmiles
and updates output_SMILES.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

