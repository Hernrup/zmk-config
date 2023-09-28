My Aurora Corne Split KB  

# Installation

1. Clone repo.
2. Setup ZMK toolchain
3. cd into zmk repo (clone first) `zmk/app`
4. Run the command below (replace absolute path, shall point to this repo `zmk-config/config`). Also choose between left/right.   
`west build --pristine -b nice_nano_v2 -- -DSHIELD=splitkb_aurora_corne_<left/right> -DZMK_CONFIG="<ABSOLUTE-PATH>/zmk-config/config"`

## Encountered issues
Not renaming the `.keymap` & `.conf` files. Results in the "default" keymap being written.  
Also the absolute path **must** contain fortward slahes. Backslashes will result in `Invalid character escape '\U'`.