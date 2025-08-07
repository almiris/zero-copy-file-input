/* src/lib/components/ZeroCopyFileInput.react.js */
import React from "react";
import PropTypes from "prop-types";

/**
 * ZeroCopyFileInput – a thin Dash wrapper around <input type="file">.
 *
 * Because it never Base-64-encodes the payload, you can stream multi-GB
 * files directly from the browser (e.g. to presigned S3 URLs) without
 * crashing the tab.  Use a client-side callback or assets JS to grab the
 * real File object:  document.getElementById(id).files[0]
 */
export default function ZeroCopyFileInput(props) {
  const {
    id,
    accept,
    multiple,
    disabled,
    style,
    className,
    /**
     * Props managed by Dash
     */
    value,
    timestamp,
    setProps,
    ...extra
  } = props;

//   const onClick = (e) => {
//     // Force-reset so Safari will report a change even after Cancel (Safari does not report a change but Chrome does)
//     e.target.value = null;
//   };

  const onChange = (e) => {
    // lightweight trigger for Python callbacks
    // const fakePath = e.target.value; // e.g. "C:\\fakepath\\video.mp4"
    if (setProps) {
      setProps({
        // value: fakePath,
        value: multiple ? Array.from(e.target.files).map(f => f.name) : e.target.files[0].name,
        timestamp: Date.now(), // forces a new event each time
      });
    }
  };

  return (
    <input
      id={id}
      type="file"
      accept={accept}
      multiple={multiple}
      disabled={disabled}
      className={className}
      style={style}
      onChange={onChange}
      onClick={onClick}
      {...extra} // data-* or aria-* props
    />
  );
}

ZeroCopyFileInput.defaultProps = {
  multiple: false,
  disabled: false,
  style: {},
  className: "",
  value: "",
};

ZeroCopyFileInput.propTypes = {
  /** Dash component id */
  id: PropTypes.string,

  /** Comma-separated list of MIME types / extensions (e.g. "image/*,.zip") */
  accept: PropTypes.string,

  /** Allow selecting more than one file */
  multiple: PropTypes.bool,

  /** Disable the input */
  disabled: PropTypes.bool,

  /** Inline CSS */
  style: PropTypes.object,

  /** CSS class */
  className: PropTypes.string,

  /**
   * Filename string (or array of filenames strings if multiple is true) the browser puts in <input>.  Serves only as a
   * lightweight signal – the real bytes stay in the DOM FileList.
   */
  value: PropTypes.oneOfType([
    PropTypes.string,
    PropTypes.arrayOf(PropTypes.string),
  ]),

  /**
   * Timestamp updated on every selection.  Use this as `Input` to
   * guarantee Dash callbacks fire even if the user chooses the same file.
   */
  timestamp: PropTypes.number,

  /** Set by Dash to report prop changes back to Python */
  setProps: PropTypes.func,
};
