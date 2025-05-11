# Unraid Open Files Plugin (Fork)

This is a preserved and forked version of the original **Open Files** plugin for [Unraid](https://unraid.net), originally developed by **dlandon**. This tool is useful for diagnosing array shutdown issues caused by open files.

---

## 🧩 What It Does

This plugin shows any open files on the array that might prevent a clean shutdown.  
The plugin adds a page to the **Tools** section in Unraid’s web UI. There, you can:

- View which files are open and what processes are holding them.
- Stop all array processes to attempt a clean shutdown.
- Troubleshoot what is blocking an array from unmounting properly.

---

## 📦 Installation

*Note: This fork is not currently listed in Community Applications.*

### Manual Installation

1. Download or clone this repository.
2. Copy the files to `/boot/config/plugins/open.files/` on your Unraid USB flash drive.
3. Reboot your Unraid system or manually execute the plugin's init script if applicable.

---

### 🧩 Plugin Installation (via URL)

To install this plugin directly in Unraid:

1. Go to the **Plugins** tab.
2. Click **Install Plugin**.
3. Paste the following URL into the install field:  
   https://raw.githubusercontent.com/Uleepera/unraid-open-files-fork/main/open.files.plg
4. Click **Install**.

---

## 📁 File Overview

- `assets/`, `icons/`, `include/`, `scripts/` – Supporting files
- `OpenFiles.page`, `SystemInformation.page` – Web UI pages
- `README.md` – This documentation

---

## ⚖️ License

This plugin is distributed under the **GNU General Public License v2.0**. See the [LICENSE](LICENSE) file for details.

---

## 🙏 Credits

Original plugin by **dlandon**  
Fork maintained by **Uleepera**

---

## 💡 Notes

This plugin is preserved for utility and archival purposes. If development continues, versioning and .plg packaging will be added.
