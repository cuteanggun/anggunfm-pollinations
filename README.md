# AnggunFM Pollinations Integration
This repository contains simplified examples of the integration.

Full production system includes:
- rate limiting
- filtering
- point system
- backend automation

These parts are kept private.

## Project

Non-profit project by AnggunFM  
https://www.anggunfm.my

GitHub:
https://github.com/cuteanggun

AnggunFM is a non-profit IRC-based radio project that integrates AI features using Pollinations AI.

It provides automation tools for IRC radio including AI DJ, image generation, and song metadata formatting.

---

## Features

- 🎧 AI DJ (Text-to-Speech)
- 🖼️ Image generation via IRC command
- 🎵 Song title formatter (artist - title)
- 📻 Radio request system (experimental)

---

## Tech Stack

- mIRC scripting
- Python (requests)
- Pollinations AI API

---

## IRC Commands

### 🖼️ Image Generation

Command:
```text id="img_cmd_01"
!gen <prompt>

Example:

!gen a cute anime girl standing under sunset sky

Result:

https://image.pollinations.ai/prompt/a cute anime girl standing under sunset sky


🎵 Song Title Formatter

Command:

!f <title>

Example:

!f Lara Fabian Je T'aime Lyrics

Result:

Lara Fabian - Je T'aime
📻 Radio Request (Experimental)

Command:

!r <selected song number>


## Notes


