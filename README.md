# cppgo 🛠️
A lightweight, automated CLI manager for C++ projects on Linux. This tool handles the "boring" parts of C++ development like project structure, CMake configuration, and file management so you can focus on coding.

## ✨ Features
- **Project Generation**: Instant structure with `src/`, `include/`, and `assets/`.
- **Smart CMake**: Automatically updates `CMakeLists.txt` when you add, rename, or delete files.- **Build System**: Interactive Debug/Release modes using **Ninja** for lightning-fast builds.
- **LSP Support**: Automatically generates `compile_commands.json` for Clangd/Neovim/VS Code.
- **Safety**: Built-in protection to prevent accidental deletion of `main.cpp`.

## 📦 Dependencies
The tool will check for these automatically, but ensure they are available on your system:

* CMake (3.10+)
* Ninja
* GCC/G++
* Git



## 🚀 Installation
1. **Clone the repository:**
   ```bash
   git clone https://github.com/Tareq-Alhilwani/cppgo.git
   cd cppgo
   ```

2. **Run the installer:**
   ```bash
   sudo ./install.sh
   ```
   
## 📋 Usage
Once installed, use the following commands inside your workspace:

| Command | Shortcut | Description |
|---|:---:|---|
| cppgo generate | g | Create a new project structure |
| cppgo new | n | Add a new .cpp or .h file |
| cppgo build | b | Compile the project (Debug/Release) |
| cppgo execute | x | Run the compiled binary |
| cppgo rename | r | Rename a file and update CMake |
| cppgo delete | d | Remove a file and update CMake |
| cppgo clean | c | Wipe the build directory |


## 📝 License
This project is licensed under the MIT License.
