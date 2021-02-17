The structure goes like this:
-
- root
    - module (container)
        - test for the module (container)
    - another module
        - a test for that module
    
The point is to have a container that tests in completion the container represented by its parent.

Dockerfiles are at the first module level

DevCommands: is really just a convenience for developers trying to investigate the system

JenkinsContainer: Would be a module if it had raw java to be investigated in an intelliJ setting

SetupMySystem: Used by jenkins internally to run things, can also be used to setup the system locally for dev

