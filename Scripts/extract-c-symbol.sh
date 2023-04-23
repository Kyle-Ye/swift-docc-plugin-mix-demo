if [ ! -d ".output" ]; then
    mkdir .output
fi

if [ ! -d ".output/symbol-graph" ]; then
    mkdir .output/symbol-graph
fi

clang -extract-api \
    -o .output/symbol-graph/CDemoKit.symbols.json \
    -x objective-c-header ./Sources/CDemoKit/include/*.h \
    -I . \
    -isysroot $(xcrun --show-sdk-path) \
    -F $(xcrun --show-sdk-path)/System/Library/Frameworks \
    --product-name=CDemoKit