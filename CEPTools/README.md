# CEPTools
CEPTools is designed to replace the Adobe js files that need to be included in HTML CEP extensions. It loosely ports the Javascript code in CSInterface.js, Vulcan.js, AgoraLib.js, etc.

These files are really just convenience methods for accessing the underlying `cep` and `__adobe_cep__` global objects which are injected into every HTML CEP extension.

CSInterface has the same methods as the javascript Adobe one, but all methods are static, so there's no need to instantiate a CSInterface object. To use CSInterface, you would write code such as this: `CSInterface.dispatchEvent(myCSEvent);`

All necessary Javascript code should be automatically cross-compiled, and there's no need to include the Adobe provided js files.

To use CEPTools in your project, you need to include CEP.swc as a "typedef" swc to get those type definitions.

AgoraLib and Vulcan are not yet implemented.