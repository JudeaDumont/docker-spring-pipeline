- script & docker-compose setup where both the rest and rest-test containers are setup and brought down

- (Done) The test controller to perform and give matching/color coded results.
 - (Done) How do you run junit tests in a container? Just do that!
  - (Done) Its simple, main just runs a test suite!    

- cachebust needs to actually increment the value instead of just switching between values
 - docker caches both versions and just switches between them lol

- You really want spinnaker to do what you are telling jenkins to do by having jenkins 
  run the iterate system script

- jenkins should really just be running unit tests and code level analysis tools?
- use spinnaker to test your local docker system?
- use spinnaker to test the GCP you are going to be uploading to.

yeah I think the best thing to do is get the containers in the right place and then test them there. 

We can investigate how jenkins can be used to test images and other things of that nature later. 

Lets try and just get the full transition to production modeled and then add different things into the line later.

SO, google cloud is next.