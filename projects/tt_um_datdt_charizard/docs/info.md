<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->



# VGA Charizard Flamethrower

![Picture preview](preview.png)

## How it works

Outputs Charizard on VGA with a flamethrower animation!

Colors and animation are inspired by classic retro pixel-art styles.

The animation system combines sprite ROM lookups, palette mapping, and state-based rendering logic to display Charizard, flame effects, and projectile animations in real time.

Originally, this project was planned to include the full evolution line animation. However, that required four large sprite ROMs, and fitting all four would likely have pushed the design close to a 4x4 tile area, so I eventually gave up on that idea to keep the project small enough to route successfully.

With the deadline approaching, I was forced to using 1x2 to complete timing and routing closure.

## Why Charizard

My first Pokémon from Kanto - Gen 1

## Why rain?  

Inspired by the scene in Pokémon where Ash/Satoshi first finds Charizard during a rainy scene. The rain adds a dramatic mood to the moment, emphasizing the intensity of the encounter and Charizard’s wild, untamed behavior at that time.

## How to test

Set clock to 25.175MHz or thereabouts, give reset pulse, and enjoy

## External hardware

All built-in, we are all in-house, no need to outsource, because we are strong enough.

## Acknowledgements

Thanks to the Tiny Tapeout community for help!!!

Special thanks to a1k0n and his nyan cat repo, what a special methodology (I forked from his repo ^^).

And also kohai Pham Van Chien from Vietnam National University for scripts.
