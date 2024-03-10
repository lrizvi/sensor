final: prev: let
  addNativeBuildInputs = drvName: inputs: {
    "${drvName}" = prev.${drvName}.overridePythonAttrs (
      old: {
        nativeBuildInputs = (old.nativeBuildInputs or []) ++ inputs;
      }
    );
  };
in
  {}
  // addNativeBuildInputs "editables" [final.flit-core]
  // addNativeBuildInputs "pathspec"  [final.flit-core]
  // addNativeBuildInputs "pygments"  [final.hatchling]
