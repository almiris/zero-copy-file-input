# AUTO GENERATED FILE - DO NOT EDIT

import typing  # noqa: F401
from typing_extensions import TypedDict, NotRequired, Literal # noqa: F401
from dash.development.base_component import Component, _explicitize_args

ComponentType = typing.Union[
    str,
    int,
    float,
    Component,
    None,
    typing.Sequence[typing.Union[str, int, float, Component, None]],
]

NumberType = typing.Union[
    typing.SupportsFloat, typing.SupportsInt, typing.SupportsComplex
]


class ZeroCopyFileInput(Component):
    """A ZeroCopyFileInput component.
ZeroCopyFileInput – a thin Dash wrapper around <input type="file">.

Because it never Base-64-encodes the payload, you can stream multi-GB
files directly from the browser (e.g. to presigned S3 URLs) without
crashing the tab.  Use a client-side callback or assets JS to grab the
real File object:  document.getElementById(id).files[0]

Keyword arguments:

- id (string; optional):
    Dash component id.

- accept (string; optional):
    Comma-separated list of MIME types / extensions (e.g.
    \"image/*,.zip\").

- className (string; default ""):
    CSS class.

- disabled (boolean; default False):
    Disable the input.

- multiple (boolean; default False):
    Allow selecting more than one file.

- timestamp (number; optional):
    Timestamp updated on every selection.  Use this as `Input` to
    guarantee Dash callbacks fire even if the user chooses the same
    file.

- value (list of strings; optional):
    Array of filenames strings the browser puts in <input>.  Serves
    only as a lightweight signal – the real bytes stay in the DOM
    FileList."""
    _children_props = []
    _base_nodes = ['children']
    _namespace = 'zero_copy_file_input'
    _type = 'ZeroCopyFileInput'


    def __init__(
        self,
        id: typing.Optional[typing.Union[str, dict]] = None,
        accept: typing.Optional[str] = None,
        multiple: typing.Optional[bool] = None,
        disabled: typing.Optional[bool] = None,
        style: typing.Optional[typing.Any] = None,
        className: typing.Optional[str] = None,
        value: typing.Optional[typing.Sequence[str]] = None,
        timestamp: typing.Optional[NumberType] = None,
        **kwargs
    ):
        self._prop_names = ['id', 'accept', 'className', 'disabled', 'multiple', 'style', 'timestamp', 'value']
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'accept', 'className', 'disabled', 'multiple', 'style', 'timestamp', 'value']
        self.available_wildcard_properties =            []
        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs and excess named props
        args = {k: _locals[k] for k in _explicit_args}

        super(ZeroCopyFileInput, self).__init__(**args)

setattr(ZeroCopyFileInput, "__init__", _explicitize_args(ZeroCopyFileInput.__init__))
