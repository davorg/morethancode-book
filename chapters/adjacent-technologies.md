# Adjacent technologies

There are many technologies that aren't actually part of a programmer's core
skill set, but that are very closely associated with programming and which a
serious programmer will take a close interest in. In this chapter, we'll look
as some of the most useful of these technologies.

## Data storage

All systems use some kind of data. And that data is probably going to need
to be stored somewhere or exchanged with some other system. So you're going
to need some kind of database or data files. Do you just use what everyone
else uses, or do you have enough knowledge to choose the right tool for the
job? Do you, for example, know when you might choose a NoSQL database like
Redis or MongoDB over a more traditional relational database system?

Are you constrained in your data interchange format choices? Many people would
prefer something structured, but human-readable like JSON or YAML, but you
might be communicating with a system that requires a particular format, for
example XML.

### Relational databases

* Which database vendor do you use?
* Why did you choose MySQL?
* Would PostgreSQL be better?
* How does it scale?
* Replication vs sharding
* How well do you know SQL?
* Which RDBMS features do you use?
* How vendor-specific are they?
* Vendor-specific SQL extensions prevent migration
* Do you use stored procedures?
* Do you use triggers?
* How are your databases split?
    * One database? Per application? Per service?
* Who owns the database?
* How do you change the schema?
* How do you know which version of your schema is installed?
* Do you use a database migration system?
* What problems does that lead to?

### NoSQL

* Which NoSQL database do you use?
* MongoDB, Redis, CouchDB, Memcached
* Pros and cons for each - understand the differences
* Would you be better off with an RDBMS?

### Data files

* What formats are your data files in?
* How are they processed?
* Are you using the best available tools?

* Javascript Object notation
* Popular data interchange format
* AJAX
* Decode to native data structures
* Encode from native data structures
* Popular choice for APIs

JQ

* General purpose JSON utility
* Reformat JSON
* Extract data from JSON
* Powerful query language

XML

* Still popular in so areas (SOAP)
* You will need to deal with it
* Find good tools
* XPath is great
* XML query language
* Extract data from XML documents
* Standard syntax

## Networking

* What networking protocols do you use?
* How well do you know them?
* Do you understand the seven layer model?

HTTP

* Most common networking protocol
* Can you explain the request/response cycle
* What difference does HTTPS/SSL make?
* Can you name all of the HTTP request types?
* GET, POST, HEAD
* PUT, DELETE, PATCH
* OPTIONS, TRACE, CONNECT
* What are the differences?
* What are they used for?
* REST

## Testing

* Do you write unit tests?
* Does your system have automatic integration tests?
* How are you tests run?
* Automatically?

Unit tests

* Never program without a safety net
* Does your code do what it is supposed to do?
* Will your code continue to do what it's supposed to do?
* Write unit tests
* Run those test all the time
* Code that exercises an individual "unit" of your code
* Provide known inputs
* Look for expected outputs
* "Bottom-up" testing

Test-driven development

* Have you tried TDD?
* What did you like?
* What didn't you like?
* Will you try it again?
* Tests are a specification of your system
* If the tests pass, the program is finished
* Know when to stop

Behaviour-driven development

* Let end-users define test in their language
* Simple domain-specific language
* Framework converts user tests to runnable code
* Cucumber

Test automation

* What test automation frameworks do you know?
* What test automation frameworks do you use?
* Selenium (WebDriver?)

Test coverage

* How good are your tests?
* How much of your code is exercised by your test suite?
* Measure to improve

## Logging, monitoring and alerting

* Centralised logging
* Log query tools
* ELK stack

## Deployment

* How is your system deployed?
* Where are you servers located?
* Do you care? Should you care?

Deployment environments

* Development
* Integration
* Staging
* Production (x2?)

* How is code moved from environment to environment?
* How similar are those environments?
* How are they kept in step?

* How are databases handled in the various environments?
* Full database dump?
* Smaller data sets?
* Anonymised data?

Deployment options

* Real hardware
* Cloud servers
* Virtual machines
* Containers

Real hardware

* Company owns or rents computers in a data centre
* Ops staff spend a lot of time in the data centre
* Commissioning servers
* Decommissioning servers
* No scalability

Cloud servers

* Servers commissioned from a huge farm
* Commissioned/decommissioned from a dashboard
* Or with an API
* Never see the actual hardware
* Easily scalable

Virtual machines

* Run one machine inside of another
* Many VMs on one real server
* Easy to commission/decommission
* Easy scaling (within the limits of the hardware)

Containers

* Docker
* Cut-down virtual machines
* Share a lot of the underlying OS
* Very quick to commission/decommission
* Layered architecture
* Modular
* Store configuration in source code control
* Treat servers as cattle, not pets
* Make it easy to create new ones
* Do that a lot

[Add stuff about serverless]

Environment configuration

* Keep your environments in step
* What software is installed
* Which versions of software is installed
* Avoid "works on my machine"
* Puppet, Ansible, Chef

Jenkins

* Continuous integration
* Run tests on every commit
* Continuous deployment
* Make releases available on every commit
* Quality gates
* Other, similar, products are available

Amazon web services

* Most popular cloud services provider
* Many services available
* Generic cloud servers (EC2)
* File storage (S3)
* Relational databases (RDS/Aurora)
* Caching (Elasticache)
* Many, many more

Other cloud providers

* Google Cloud Platform
* Microsoft Azure
* Oracle Cloud
* Rack Space
* Open Stack (self-hosted)
* Etc...
