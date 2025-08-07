# AUTO GENERATED FILE - DO NOT EDIT

export zerocopyfileinput

"""
    zerocopyfileinput(;kwargs...)

A ZeroCopyFileInput component.
ZeroCopyFileInput – a thin Dash wrapper around <input type="file">.

Because it never Base-64-encodes the payload, you can stream multi-GB
files directly from the browser (e.g. to presigned S3 URLs) without
crashing the tab.  Use a client-side callback or assets JS to grab the
real File object:  document.getElementById(id).files[0]
Keyword arguments:
- `id` (String; optional): Dash component id
- `accept` (String; optional): Comma-separated list of MIME types / extensions (e.g. "image/*,.zip")
- `className` (String; optional): CSS class
- `disabled` (Bool; optional): Disable the input
- `multiple` (Bool; optional): Allow selecting more than one file
- `style` (Dict; optional): Inline CSS
- `timestamp` (Real; optional): Timestamp updated on every selection.  Use this as `Input` to
guarantee Dash callbacks fire even if the user chooses the same file.
- `value` (Array of Strings; optional): Array of filenames strings the browser puts in <input>.  Serves only as a
lightweight signal – the real bytes stay in the DOM FileList.
"""
function zerocopyfileinput(; kwargs...)
        available_props = Symbol[:id, :accept, :className, :disabled, :multiple, :style, :timestamp, :value]
        wild_props = Symbol[]
        return Component("zerocopyfileinput", "ZeroCopyFileInput", "zero_copy_file_input", available_props, wild_props; kwargs...)
end

