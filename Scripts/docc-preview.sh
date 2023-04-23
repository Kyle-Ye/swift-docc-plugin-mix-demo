DOCC_HTML_DIR="$(dirname $(xcrun --find docc))/../share/docc/render"
$(xcrun --find docc) preview Sources/DemoKit.docc \
    --additional-symbol-graph-dir .output/symbol-graph