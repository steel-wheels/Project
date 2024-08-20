# Steel Wheels Project

This document describes about the overview, the progress of the development
of this project.

## What is the project
This project is started to develop *open source software* for macOS and iOS (iPhone family devices). You can get applications, frameworks and documents from this project.

## Copyright
Every products of this project is open source. They will be distributed under [GNU General Public License version 2](https://opensource.org/licenses/GPL-2.0), [GNU Lesser General Public License version 2.1](https://opensource.org/licenses/LGPL-2.1).

## Products
### Application software
* [ArisiaCard](https://github.com/steel-wheels/arisia/-/tree/main/ArisiaCard): Rapid application development software for macOS and iOS. 

### Frameworks
* [Cobalt Framework](https://github.com/steel-wheels/cobalt): Command line parser. This is used for command line tool for macOS.
* [Coconut Frameworks](https://github.com/steel-wheels/coconut): 
  - [CoconutData Framework](https://github.com/steel-wheels/coconut/-/tree/main/CoconutData): Define general purpose data structure and functions
  - [CoconutDatabase Framework](https://github.com/steel-wheels/coconut/-/tree/main/CoconutDatabase): Define the simple database
  - [CoconutModel Framework](https://github.com/steel-wheels/coconut/-/tree/main/CoconutModel) : Simulation model (It is not used by any application yet.): The framework to implement shell.
* [KiwiScript Frameworks](https://github.com/steel-wheels/kiwiscript): Support JavaScript execution on the application.
  - [KiwiEngine Framework](https://github.com/steel-wheels/kiwiscript/-/tree/main/KiwiEngine): Define classes to use JavaScriptCore
  - [KiwiLibrary Framework](https://github.com/steel-wheels/kiwiscript/-/tree/main/KiwiLibrary): Define the built-in library to execute TypeScript and JavaScript program on the application.
  - [KiwiTools](https://github.com/steel-wheels/kiwiscript/-/tree/main/KiwiTools): Command line tools to generate scripts and declaration files for TypeScript and JavaScript.
* [Arisia Application and Frameworks](https://github.com/steel-wheels/arisia): These frameworks are designed for *ArisiaPlatform* and the application is an implementation of it.
  - [ArisiaCard](https://github.com/steel-wheels/arisia/-/tree/main/ArisiaCard): The platform for the rapid software development.
  - [ArisiaLibrary](https://github.com/steel-wheels/arisia/-/tree/main/ArisiaLibrary): Extend the [KiwiLibrary Framework](https://github.com/steel-wheels/kiwiscript/-/tree/main/KiwiLibrary) to support ArisiaPlatform.
  - [ArisiaComponents](https://github.com/steel-wheels/arisia/-/tree/main/ArisiaComponents): Define GUI and database components 
  - [ArisiaTools](https://github.com/steel-wheels/arisia/-/tree/main/ArisiaTools): Command line tools for Arisia programming environment.

### Documents
* Arisia Platform
  - [ArisiaScript](https://github.com/steel-wheels/arisia/-/blob/main/Document/arisia-lang.md): The TypeScript/JavaScript extension for event driven programming. It is suitable to implement GUI logic and controls.
* [Software Development Goals](./SoftwareDevelopmentGoals.md): Define the goal of your sofrware development.
* [Technical documents at Qiita](https://qiita.com/wheel): Some tips for macOS/iOS software development (written by Japanese)

## Reference
See [Reference Page](./Reference.md).

