% Auto-generated: do not edit by hand
\name{zeroCopyFileInput}

\alias{zeroCopyFileInput}

\title{ZeroCopyFileInput component}

\description{
ZeroCopyFileInput – a thin Dash wrapper around <input type="file">.  Because it never Base-64-encodes the payload, you can stream multi-GB files directly from the browser (e.g. to presigned S3 URLs) without crashing the tab.  Use a client-side callback or assets JS to grab the real File object:  document.getElementById(id).files[0]
}

\usage{
zeroCopyFileInput(id=NULL, accept=NULL, className=NULL, disabled=NULL,
multiple=NULL, style=NULL, timestamp=NULL, value=NULL)
}

\arguments{
\item{id}{Character. Dash component id}

\item{accept}{Character. Comma-separated list of MIME types / extensions (e.g. "image/*,.zip")}

\item{className}{Character. CSS class}

\item{disabled}{Logical. Disable the input}

\item{multiple}{Logical. Allow selecting more than one file}

\item{style}{Named list. Inline CSS}

\item{timestamp}{Numeric. Timestamp updated on every selection.  Use this as `Input` to
guarantee Dash callbacks fire even if the user chooses the same file.}

\item{value}{List of characters. Array of filenames strings the browser puts in <input>.  Serves only as a
lightweight signal – the real bytes stay in the DOM FileList.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

