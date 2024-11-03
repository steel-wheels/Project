# Safari Web Extension

## Safari Web Extension Architecture
This section is written based on the [Safari Web Extension Architecture](https://medium.com/@simicvm/gist-building-a-safari-web-extension-d1c8de6dc11d).

There are 3 top components:
* Native app (macOS or iOS) built in Swift or Objective C.
* Extension Handler built in Swift or Objective C.
* Web Extensions built in JavaScript, HTML, and CSS.

Each component are executed in different sandoboxed threads. 
The predefined channels and controlled data types allows the communication beween them.

The entry point: <code>AppDelegate.swift</code>.

## Reference
* [Steel Wheels Project](https://github.com/steel-wheels/Project/blob/main/README.md)



