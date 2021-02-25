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

to figure out what the new environment is, just run set or alias.

I remember python environments being painful as well.

Really its not the shells execute interactively and therefor includes an alias, 
its that the code is pulled out fo those files into a context that has the alias defined.

and also the alias is defined and 'expanded' which I am not sure there is a real purpose for.

having the alias defined in the bash rc would be useful if it was a useful 
command to run from an actually interactive terminal

really the only place it needs to be defined is in jenkins just before it sources 
the code out of the shell scripts that need the alias.

This seems really dumb because the bash code must be sourced if it uses any command that must be aliased
(say if mac uses a different command than linux)

There must be a better way and I'm not thinking it's python.

You have to push the images to the google cloud repository to run the images in google cloud.

The kubernetes cluster successfully runs the test, however
1. it thinks it failed because the container just exits
2. THE SERVICE NAME IN THE DOCKER COMPOSE AND THE EXPOSED SERVICE IN K8S MUST BE NAMED THE SAME

Error: Error creating Network: Post "https://compute.googleapis.com/compute/v1/projects/terraform-gke-0/global/networks?alt=json": oauth2: cannot fetch token: 400 Bad Request
Response: {"error":"invalid_grant","error_description":"Invalid grant: account not found"}

The above is fixed by visiting this page https://console.cloud.google.com/apis/credentials/serviceaccountkey?_ga=2.215690898.464374770.1614231853-871749997.1613407998&_gac=1.61848926.1613519231.Cj0KCQiA1KiBBhCcARIsAPWqoSq-FEwfUHdZhPvZQRaEvNQIOWdImDJVq49KzESchTETn2oiGWXGVBwaAiHpEALw_wcB&project=terraform-gke-0&folder&organizationId and filling it out then setting the env var:

export GOOGLE_APPLICATION_CREDENTIALS="/Users/judeadumont/Desktop/terraform-gke-5ae77d533de6.json"

gcloud auth login dumontjudea2@gmail.com fixes:
ERROR: (gcloud.services.enable) PERMISSION_DENIED: The caller does not have permission
ERROR: (gcloud.container.clusters.get-credentials) ResponseError: code=403, message=Required "container.clusters.get" permission(s) for "projects/terraform-gke-0/locations/us-central1/clusters/terraform-gke-0-gke".

might be a good idea to write bash scripts that successfully change the gcloud login, jeezus
