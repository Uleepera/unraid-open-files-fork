# Open Files Plus

A filtering-enhanced version of the Open Files plugin for Unraid.

<!--
  NOTE TO CA PARSERS:
  This plugin includes UI-based filtering, group toggles, persistent settings,
  and a redesigned layout for easier troubleshooting of array file locks.
-->

---

**Open Files Plus** is an enhanced version of the original Open Files plugin for [Unraid](https://unraid.net), originally developed by **BubbaQ** and maintained by **dlandon**. This version introduces a cleaner UI, persistent filters, and process grouping to make identifying shutdown-blocking files easier.

---

## 🔍 What This Plugin Does

- Lists processes that have open files on the array (`/mnt`, `/dev/md*`, etc.)
- Highlights which ones might prevent a clean shutdown
- Lets you kill a process directly from the web UI
- Groups common processes into categories: **System**, **Unraid**, and **VM/Docker**
- Supports persistent filtering using browser localStorage

---

## 📦 Installation (Manual URL Method)

This plugin is not listed in Community Applications (CA). To install it manually:

1. Open Unraid and go to the **Plugins** tab.
2. Click **Install Plugin**.
3. Paste the following URL:
```
https://raw.githubusercontent.com/Uleepera/unraid-open-files-fork/main/open.files.plus.plg
```
4. Click **Install**.


---

## 📁 Plugin Structure

open.files.plus/
├── assets/ # CSS and theme support
├── icons/ # Plugin icon
├── include/ # Backend PHP
├── scripts/ # Kill script
├── OpenFilesPlus.page
├── open.files.plus.plg
├── README.md
├── CHANGELOG.md

---

## 🧠 Why Use This Over the Original?

| Feature                          | Original | Open Files Plus |
|----------------------------------|----------|-----------------|
| Shows open files and PIDs        | ✅        | ✅            |
| Kill button in UI                | ✅        | ✅            |
| Filter by process group          | ❌        | ✅            |
| Save filters between sessions    | ❌        | ✅            |
| Improved table layout            | ❌        | ✅            |

---

## 🔧 Configuration & Filtering

You can expand process groups to show common system daemons, VM tools, and Unraid services. These filters help you focus only on the types of processes you care about.

---

## 🙏 Credits

- Original concept: **BubbaQ**
- Long-term maintenance: **dlandon**
- Current fork & UI updates: **Uleepera**

---

## ⚖ License

This project is licensed under the [GNU GPL v2.0](LICENSE).
