mkdir -p /src/out
chmod 777 /src/out
west build -d /src/build/left -b nice_nano_v2 -s /zmk/app -- -DSHIELD="splitkb_aurora_corne_left nice_view_adapter nice_view" -DZMK_CONFIG="/app"
west build -d /src/build/right -b nice_nano_v2 -s /zmk/app -- -DSHIELD="splitkb_aurora_corne_right" -DZMK_CONFIG="/app" 
cp /src/build/left/zephyr/zmk.uf2 /src/out/left.uf2
cp /src/build/right/zephyr/zmk.uf2 /src/out/right.uf2