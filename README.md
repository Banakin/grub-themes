# Grub Themes
Fork of https://github.com/AdisonCavani/distro-grub-themes, but themes are my own.

Graphics made with [Photopea](https://www.photopea.com/).

## Available Themes
| Theme Name | Theme Preview |
| --- | --- |
| `ray_wave` | ![ray_wave theme preview](preview/ray_wave.png "`ray_wave` Theme Preview") |

## Theme Generation & File Structure
The original repo used nix for generation I think, also tar files were included in the repo? I just made a bash script.

Build the themes to `themes/`:
```shell
./build_themes.sh
```

The script goes through each file in `assets/backgrounds` and makes a theme based on its name.

## License
This project is licensed under [GNU General Public License v3.0](https://github.com/Banakin/grub-themes/blob/master/LICENSE)
