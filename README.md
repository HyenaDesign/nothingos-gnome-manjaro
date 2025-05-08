# ✨ NothingOS GNOME – A Minimalist Manjaro Desktop Experience

This is a **NothingOS-inspired desktop build** for **Manjaro Linux (GNOME edition)**. It's designed to bring the clean, monochrome aesthetic of Nothing's design philosophy to the Linux desktop — with polished widgets, blurred transparency, and a cohesive theme setup.

---

## 📷 Screenshots



---

## 🚀 Features

- ⚙️ **GNOME Shell Theme** — Clean, flat, and monochrome with subtle animations  
- 🎨 **GTK Theme** — Matches the Shell theme for a unified look  
- 🖥 **Alacritty Config** — Transparency, blur, and font matching NothingOS style  
- 🧱 **Eww Widgets** — Interactive status bar with time, date, weather, system stats, and music  
- 📈 **Conky Setup** — Optional low-resource alternative to Eww  
- 📦 **Fonts & Icons** — Sleek, minimal set that complements the overall aesthetic  
- 🖼 **Wallpapers** — Custom and curated Nothing-style backgrounds  

---

## 🛠 Installation

> ⚠️ **Use at your own risk.** This is a personal config and may require adjustments based on your system.

### 1. Clone the Repo

```bash
git clone https://github.com/YOUR_USERNAME/nothingos-gnome
cd nothingos-gnome
```
### 2. Copy the configs

Configs are modular. Copy only what you want:

```bash
cp -r .config/alacritty ~/.config/
cp -r .config/eww ~/.config/
cp -r .config/conky ~/.config/
cp -r .themes/NothingOS-GTK ~/.themes/
cp -r .icons/NothingOS-Icons ~/.icons/
```
> Replace `~` with your actual home path if needed.
---

### 3. Apply Themes

Use **GNOME Tweaks** to apply:

- GTK Theme: `NothingOS-GTK`  
- Shell Theme: `NothingOS-Shell`  
- Icons: `NothingOS-Icons`  
- Font: `Inter`, `Product Sans`, or `Roboto`  

---

## 🌦 API Keys

If you're using the weather widget (Eww or Conky), replace the placeholder in:

`eww/scripts/get-weather.sh`

With your own API key:

API_KEY="YOUR_API_KEY_HERE"


You can get a free key from:
- https://weatherapi.com  
- https://openweathermap.org  

---

## 🙋 FAQ

**Q: Will this work on other distros?**  
A: Yes, with tweaks. It's built for Manjaro GNOME but works on most GNOME-based setups.

**Q: What if Eww doesn't show up properly?**  
A: Make sure you're using X11 (not Wayland) and have `eww` installed from source or your package manager.

**Q: Can I fork or contribute?**  
A: Absolutely! Feel free to fork, open issues, or submit pull requests.

---

## ❤️ Credits

- Inspired by the **NothingOS** design language  
- Built with:  
  - [Eww](https://github.com/elkowar/eww)  
  - [Alacritty](https://github.com/alacritty/alacritty)  
  - [Conky](https://github.com/brndnmtthws/conky)  
  - [Papirus Icons](https://github.com/PapirusDevelopmentTeam)  

---

## 📢 License

This project is released under the [GLP3 License](LICENSE), unless otherwise noted.
