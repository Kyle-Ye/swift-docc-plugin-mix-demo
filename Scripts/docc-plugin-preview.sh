$(xcrun --find swift) package \
    --disable-sandbox preview-documentation \
    --target $1
