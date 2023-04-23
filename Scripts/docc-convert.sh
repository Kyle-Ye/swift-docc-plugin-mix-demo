if [ ! -d ".output" ]; then
    mkdir .output
fi

DOCC_HTML_DIR="$(dirname $(xcrun --find docc))/../share/docc/render"
$(xcrun --find docc) convert Sources/DemoKit.docc \
    --index \
    --additional-symbol-graph-dir .output/symbol-graph \
    --output-path .output/$1.doccarchive
