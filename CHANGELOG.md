# Changelog

All notable changes to the Open Files plugin will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to semantic versioning when feasible.

---

## [2025.05.15] - UI Filtering Update (Beta)
### Added
- ✅ UI-based filtering by process groups: **System**, **Unraid**, and **VM/Docker**
- ✅ Persistent filter state using `localStorage` (saved across sessions)
- ✅ Toggleable group sections for cleaner interface
- ✅ Inline "Kill Process" controls remain functional when filters are active

### Changed
- 💄 Table layout reworked for better readability and responsiveness
- 🧼 CSS modularized; inline styles removed in favor of maintainable classes
- ⚙️ `OpenFiles.php` backend updated to support dynamic `exclude_list` filtering
- 🛡️ Fully backward-compatible — displays all processes if no filters are selected

---

## [2025.05.11a] - Forked Foundation Release
### Added
- 🧬 Base fork from dlandon’s final official version
- 🧪 Repackaged with build structure for future updates
- 🧰 Preserved full functionality from the original Open Files plugin:
  - Detects processes holding files open on `/mnt`, `/dev/md*`, or `/dev/loop*`
  - Displays interactive table of open files and PIDs
  - Supports "Kill Process" feature from the UI
