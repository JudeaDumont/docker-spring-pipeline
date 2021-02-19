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

Note that PATH in the jenkins container is: PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
Is there a bash in there that uses a bashrc that is outside the global profile?

to figure out what the new environment is, just run set!