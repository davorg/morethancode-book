# Adjacent technologies

There are many technologies that aren't actually part of a programmer's core
skill set, but that are very closely associated with programming and which a
serious programmer will take a close interest in. In this chapter, we'll look
as some of the most useful of these technologies.

## User interface design

## Search engine optimisation

If the system you work on powers a web site, then it's likely that you would
like to get as many visitors as possible to the site. And that means you will
want the site to rank as highly as possible in the Google results for various
search terms. And that will lead you to the world of search engine
optimisation.

On larger projects, you will probably have a separate SEO team to work on this.
They will monitor your site's performance and suggest changes to be made by
the developers. But on small projects the developers might be expected to
carry out this work. And, even when you do have experts on-hand to suggest
the required changes, it's still worth knowing a little about what can affect
your site's ranking in Google.

There are basically two strands to SEO. There's the "content marketing" side,
which is all about tweaking the text on your site so that it contains enough
of the keywords you are trying to rank for. This is a delicate balance between
ensuring that Google recognises the keywords in your text and ending up with
content that is still readable English. I'm sure we've all read Google
keyword-heavy pages where the Google keywords appear so frequently that the
Google keywords overwhelm the text and it becomes hard to understand because
of the repetition of the Google keywords.

Other than cautioning you to do your best to keep your text readable, I'm not
going to talk about that side of SEO; I'm going to concentrate on techinical,
or "on-page" SEO. This is all about small tweaks you can make to the structure
of your page so that Google stands more chance of understanding what your
content is about.

### Semantic HTML

HTML mark-up is supposed to be semantic. That is, you use HTML to mark-up
the *meaning* of the various sections of your page. It is the browser (with
help from your CSS files) that decides what your page looks like. For example,
the most important header on your page should be marked as H1, the next most
important headers should be H2, and so on. Don't make the mistake that a
web designer that I worked with twenty years ago made. Because he wanted the
main header to be the size that his browser showed an H3, he made the main
header an H3. To be fair to him, CSS was a relatively new technology and I
don't think he really got it.

Another example from the days before CSS is the "font" tag. In the days before
CSS (and, to be honest, for a depressingly long time after the introduction
of CSS) HTML pages were full of font definitions. Every block element needed
its own font tag. And when you wanted to change the font that your page used
then you needed to edit every single one of them.

HTML uses tags that can be used to describe the parts of your text - headers,
footers, paragraphs, sections. HTML5 added a lot more that many people don't
seem to be aware of. When you mark up your page correctly with these tags,
Google can use them to work out the structure of the page. If you fail to do
that, then Google is just guessing at the relationship between the various
pieces of text on your page - and the algorithm might guess wrong.

### URLs

A Universal Resource Locator (URL) is the web address of your page. Often,
URLs are disguised from users as, for example, they are hidden behind the text
in an HTML link. You might think, therefore, that URLs aren't very important.
But they can be important to Google, so they should be important to you. You
should be thinking carefully about your URL structure.

In short, a good URL should be meaningful, hackable and permanent. Which is
the most memorable of these two URLs?

* https://morethanco.de/upcoming-public-training
* https://morethanco.de/?p=68450021

Clearly, the former is more meaningful. It's easier to understand and,
therefore, easier to remember. It's not only more meaningful for humans; it's
also more meaningful for Google. Google will try to extract from a URL useful
information about the page that the URL refers to. And the second example
gives no clue at all about what will be found at that address.

In general, simple URLs are to be prefered. Use words instead of meaningless
strings of numbers. It's also worth trying to avoid having anything in your
URLs that gives away information about the technologies that are driving your
your site (like `some-page.php` or `another-page.asp`). The only people who
might find that information useful are unscrupulous people trying to look for
backdoors into your server.

What does it mean for a URL to be hackable? Well, take an (imaginary) URL like:

* https://morethanco.de/news/2020/03/some-seo-tips

For a start, you can extract useful information from the URL. We can see what
the article is about, the approximate date of publication and, also, that it
was a news story. But we can also get clues to other URLs that might be
interesting. It seems likely that visiting https://morethanco.de/news will
show us a list of the most recently published news stories. And I'd expect
that https://morethanco.de/news/2020 will show all of 2020's news and
https://morethanco.de/news/2020/03 will give me all of the stories published
in March 2020. A power user will certainly try visiting those pages. And Google
will expect them to exist too. So when your URL structure implies the
existence of a page, you should ensure that the page actually exists.

Finally, a good URL should be permanent. I'm addicted to Facebook's Memories
application. Every day, it shows me a list of Facebook items that I posted
on that day in previous years. And it's depressing how many of the interesting
links that I posted for the amusement of my friends no longer exist. These
dead links fall into two categories.

First there are the sites that just no longer exist. Perhaps a company closed
down or a developer got bored of a side-project and just let the domain lapse.
One particular friend has used a number of different domains for his blog over
the last fifteen years. And each time he moves to a new domain, he doesn't move
the old content over. I'd be gutted to lose all of the content, but some people
have a different relationship with their writing. There's nothing that can
be done in situations like these. If you no longer own the domain then you
can't put anything in place to respond to request to that domain.

Then there are the pages where the domain still exists, but some individual
pages no longer exist. A good example is an arts venue that chooses not to
maintain pages for previous events. I often come across an old Facebook post
that contains a link to a page about a gig I was going to or a exhibition I
was planning to see. But because the event was ten years ago, the venue doesn't
see the value in maintaining that page (or, more likely, just doesn't have the
resources to maintain old pages). Probably, they've reorganised the site a
couple of times in the intervening years - and old event pages just didn't
make the cut to be migrated to the new structure. It's a shame, but you can't
argue with the economics.

But permanence does matter. Longevity is one of the criteria that Google uses
to measure the importance of a page. And you don't want to be serving 404
"page not found" errors to users if you can avoid it. Far better to redirect
users to your home page or (even better) a search page where they can look for
the content they're trying to find. If you rearrange your site, then map the
old URLs to the new ones and set up mechanisms to redirect the users to the
new version of the page. If a page has been removed from your site for good
reasons and you don't want Google to care about it any more, then return a
410 "gone away" response.

### Structured data

Earlier, we talked about using semantic HTML in order to make it easier for
Google to understand what your content is about. There's another step you
can take and that's to use structured data on your web pages. There are two
types of structure data that Google currently recognises - microdata which
is built into the existing HTML and JSON-LD which is another view of your
data which you embed into your "head" tag.

Microdata is a way to extend HTML so that it contains more information
describing the data on the page. For example, you might have some HTML that
displays information about a film:

    <div class="film">
      <h1>Avatar</h1>
      <div class="director">
        Director: <span>James Cameron</span>
        (born <time>August 16, 1954</time>)
      </div>
      <span class="genre">Science fiction</span>
      <a href="/movies/avatar-theatrical-trailer.html">Trailer</a>
    </div>

Your CSS would use a combination of the HTML tags and the classes to tell
a browser how to display this data. Note, for example, that we've used a "div"
tag with the class "film" to denote the section of the page that describes a
film. But that's just a convention that we've invented; it's not standard.
Some other company might use other conventions - for example a class of "movie".
Google can't be expected to unpick all of these local conventions for defining
data.

Microdata is a way to standardise this markup. A microdata version of the same
information might look like this:

    <div itemscope itemtype="http://schema.org/Movie">
      <h1 itemprop="name">Avatar</h1>
      <div itemprop="director" itemscope itemtype="http://schema.org/Person">
        Director: <span itemprop="name">James Cameron</span>
        (born <time itemprop="birthDate" datetime="1954-08-16">August 16, 1954</time>)
      </div>
      <span itemprop="genre">Science fiction</span>
      <a href="/movies/avatar-theatrical-trailer.html" itemprop="trailer">Trailer</a>
    </div>

We've added various attributes to our HTML tags. There are three new
attributes.

* itemscope defines a new data item.
* itemtype defines the type of the new data item. This will be a URI, pointing
to a web address that defines that data item type.
* itemprop defines a property of a data item. The definition of the data item
will tell you which properties a particular data item type should or may have.

So, in our example we have a top-level object which is a movie as defined
at http://schema.org/Movie. The movie has four properties - a name, a director,
a genre and a trailer. The director is defined as being an instance of a
new data item type called a person. Our person object has two properties - a
name and a birthDate.

Google (or, indeed, anyone who is interested) can look at the source code of
our web page and can immediately get a far richer (and standardised) view of
our data. As you might expect, there are dozens (probably hundreds) of data
item types defined and you can model very complicated relationships between
the various pieces of information on your web page. It's worth spending a
few hours browsing the https://schema.org/ web site where these types are
defined. There is an incredibly rich selection of types available.

Microdata is relatively easy to add to your web page. Well, there's the
complexity of mapping your information onto the types and properties available,
which can take a while. But once you have that mapping work done, it's not
hard to add the relevant mark-up to your existing HTML. The structured data is
woven tightly around the HTML. In contrast, JSON-LD (LD stands for "Linked
Data") is a rather different approach where very similar structured data
is embedded in a completely different part of the HTML.

### Sitemaps

### Open graph

### Link tags

### robots.txt

### Response headers

### nofollow

### Security

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
