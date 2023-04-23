if [ ! -d ".output" ]; then
    mkdir .output
fi

$(xcrun --find swift) package \
    --allow-writing-to-directory .output/$1.doccarchive \
    generate-documentation --target $1 \
    --output-path .output/$1.doccarchive
