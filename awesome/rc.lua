pcall (require, "luarocks.loader")


-- home variable 🏠
home_var        = os.getenv("HOME")


-- user preferences ⚙️
user_likes      = {

    -- aplications
    term        = "alacritty",
    editor      = "alacritty -e " .. "nano",
    code        = "code",
    web         = "firefox",
    music       = "env LD_PRELOAD=/usr/lib/spotify-adblock.so spotify %U",
    files       = "thunar",


    -- your profile
    username = os.getenv("USER"):gsub("^%l", string.upper),
    userdesc = "@bankai"
}



-- theme 🖌️
require("theme")

-- configs ⚙️
require("config")

-- miscallenous ✨
require("misc")

-- signals 📶
require("signal")

-- ui elements 💻
require("layout")