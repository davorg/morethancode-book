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

In order to build a JSON-LD representation of our page, we still have to go
through the same mapping process, using the same set of data item types. But
when we have finished the mapping, we build a JSON data structure instead of
embedding the information within our HTML. The JSON-LD version of our film
data might look like this:

    <script type="application/ld+json">
    {
      "@context": "http://schema.org/",
      "@type": "Movie",
      "name": "Avatar",
      "director":
      {
        "@type": "Person",
        "name": "James Cameron",
        "birthDate": "1954-08-16"
      },
      "genre": "Science fiction",
      "trailer": "/movies/avatar-theatrical-trailer.html"
    }
    </script>

You will recognise the two data items (a movie and a person) and all of the
properties that we used in the microdata version. This is just another
representation of the same information. This chunk of JSON should be inserted
somewhere in your HTML page. Google recommends putting in the "head" section,
but the "body" sections works too if that is easier for you.

Google provides a structured data testing tool at
https://search.google.com/structured-data/testing-tool. You can give it the
URL of your page or paste in a piece of structured data and the tool will show
you all of the data items and properties it can extract from the sample. It
will also tell you about any problems it finds with your structured data.
This usually consists of information about missing properties that you should
consider adding.

### Open Graph

Open Graph is a standard that was defined by Facebook in order to make it
easier to share external content on its site. It consists of a number of extra
header tags that give useful information about the page. This means that, for
example, Facebook can find an image to display alongside a link without having
to parse the entire page. A simple set of Open Graph tags looks like this:

    <meta property="og:title" content="Some SEO Tips">
    <meta property="og:site_name" content="More Than Code">
    <meta property="og:type" content="article">
    <meta property="og:url" content="https://morethanco.de/news/2020/03/some-seo-tips">
    <meta property="og:image" content="https://morethanco.de/images/seo.png">
    <meta property="og:description" content="SEO is important. Get some useful tips here.">

Most other social media sites will also make use of this information. Twitter
has a slightly different concept called a "Twitter Card". They will use the
Open Graph data, but it's worth adding the following Twitter-specific tags as
well.

    <meta name="twitter:card" content="summary" />
    <meta name="twitter:image" content="https://morethanco.de/images/seo.png"/>

As far as I know, Open Graph tags don't, in themselves, increase your site's
Google ranking. But by tuning how links to your appear when they are shared,
you can encourage more people to share your content and popular content is
prefered by Google.

### Sitemaps

A sitemap is a file that sits in the top level directory of your web and
contains a list of all of the pages on your site that you want Google to
crawl. It is an XML file. Here is an example:

    <?xml version="1.0" encoding="UTF-8"?>
    <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
      <url>
        <loc>https://morethanco.de/news</loc>
        <lastmod>2020-03-10</lastmod>
        <changefreq>weekly</changefreq>
        <priority>0.8</priority>
      </url>
      <url>
        <loc>https://morethanco.de/services</loc>
        <lastmod>2020-03-01</lastmod>
        <changefreq>monthly</changefreq>
        <priority>0.5</priority>
      </url>
    </urlset>

The top level element is "urlset" and, within that, you have a number of "url"
elements. Inside the "url", you only need the "loc" element (to tell Google
where the page is) but you can also give Google hints on how to crawl your
site by including the last modification date, the (approximate) change
frequency and a number between zero and one indicating how important you think
the page is.

A sitemap file has a limit of 50,000 URLs. For many sites that is plenty, but
if you have a particularly large site, you can have multiple sitemaps and also
a sitemap index file which shows Google where to find them. The contents would
look like this:

    <?xml version="1.0" encoding="UTF-8"?>
    <sitemapindex xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
      <sitemap>
        <loc>https://morethanco.de/sitemap1.xml.gz</loc>
        <lastmod>2020-03-10</lastmod>
      </sitemap>
      <sitemap>
        <loc>https://morethanco.de/sitemap2.xml.gz</loc>
        <lastmod>2020-03-09</lastmod>
      </sitemap>
    </sitemapindex>

The fields in this file should be self-explanatory, but notice that the
sitemap files can be zipped in order to save space.

## Canonical pages

Google doesn't like duplicate content. If different URLs on your site point
to pages that look substantially the same, then Google might think you are
trying to game the system and could penalise your site. There may be good
reasons to have different URLs for the same page, so Google allows you to
mitigate this by telling them which is the canonical version of the page.

Imagine you're running a site that lists athletics world records. I can go
to the URL https://your-records-site/ and it will show me a list of the current
world records in a number of events. Or I can go to
https://your-records-site/2000-01-01 and it will show me the same records as
they stood on 1st January 2000.

World records don't change very often. It's likely that the page I get for
https://your-records-site/2000-01-01 is identical to the one for
https://your-records-site/1999-12-31. In fact most of your pages would be
duplicates of the pages just before and after them. And Google wouldn't be
happy about that.

To get round this, we need to generate a list of canonical pages. That is,
a list of the dates when a record changed. The pages for those dates will be
the only unique pages on the site. On pages that aren't canonical, we can
include a header tag, telling Google that we know about the duplication but
that we only want them to index the unique pages on the site. The tag looks
like this:

    <link rel="canonical" href="https://your-record-site/1999-06-30">

Here, we've assumed that a record changed on 30th June 1999. So any page for
date between then and the next record change date would include this tag. This
is us saying to Google "yes, I know that this page looks a lot like the one
for 30th June 1999, so please don't index this one but just index that other
page instead". And that will prevent Google from being suspicious of the
duplication.

There are many reasons why you might have duplication. Some others include:

* You're in the process of moving from one domain to a new one (the pages
on the old domain should have a canonical tag pointing to the version on the
new domain).
* You're switching your site from HTTP to HTTPS (the HTTP versions should have
a canonical tag pointing to the HTTPS version).
* You have a page of lists and various filtering and sorting options that are
included in the URL can result in similar pages (all version should include
a canonical tag pointing to the unfiltered and unsorted version).

It's perfectly possible for a page to include a canonical tag that points to
itself. This often makes the developer's life easier as he can include a
canonical tag on every page - whether or not that page is, itself, canonical.

## Other features

There are a number of other SEO tweaks that you can make to your site.

* robots.txt: The main use of a robots.txt file is to give web crawlers advice
about which parts of your site they should crawl. But there are other things
that you can do in the file. For example, you can use the "Sitemap:" statement
to tell crawlers where you site maps are.

* Response headers and meta tags: There are a number of response header that
you can use to control how your site is crawled. Each response header has an
equivalent meta tag that you can use if you're not able to control your site's
response headers. The "X-Robots-Tag:" header can be set to "index" or
"noindex" along with "follow" or "nofollow". The former controls whether a
crawler will index the current page and the later controls whether links in
the current page should be followed.

* Security: For some years now, all browsers have been trying to gently nudge
web site owners towards serving their content over HTTPS instead of HTTP.
Recently, that has been stepped up as some browsers have started to display a
warning on HTTP pages. And Google gives a ranking boost to pages served over
HTTPS. You should be using HTTPS and when someone tries to access your site
over HTTP, you should redirect them to the HTTPS version.

* Mobile first: A couple of years ago, Google announced that they would start
crawling mobile versions of web sites and using those results in preference to
the desktop version. They've been taking this slowly and emailing site owners
when they are taking a mobile-first approach to their sites. But later this
year, they plan to make this switch for every site. Your site should give
equivalent experiences to people using mobile devices and desktop devices. The
best approach is probably to have a responsive site that automatically adjusts
to the size of the display it is being used on.

### How well are you doing?

Google supplies tools that you can use to see how well your site is performing.
Most people have probably heard of
[Google Analytics](https://analytics.google.com/). You just drop a small
piece of Javascript on every page of your site and Google will give you as much
information as you need about the people who visit your site - where they came
from, what they were searching for, how long they stayed, which pages they
visited. It will also give you lots of demographic information about them.

But there's is also the
[Search Console](https://search.google.com/search-console). This is where
Google tells site owners how it has crawled their sites. You register your
sites with this service and, within days, you will start to get reports on
any problems that Google's crawler has found on your site. It will also tell
you how many pages Google has crawled and how many of those are currently in
Google's index. This is an essential tool for webmasters who want to get as
much information as possible about how Google sees their site. There was an
older version of this site called "Google Webmasters Tools", but this new site
has been replacing that over the last two or three years.

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

A very large proportion of computer systems (probably most of them) will have
some kind of relational database system to store their data. A large,
commercial system will probably use a proprietary system like Oracle, but it's
very common to see open source databases like MySQL, PostgreSQL and SQLite
being used as well.

You might be surprised to hear that the most widely-used relational database
system today is SQLite. This is because it's a very lightweight implementation
of the relational model and is therefore the database system of choice for
smartphones. Pretty much any app that you install on your Android or Apple
phone will be using an SQLite database to store its data.

#### Introduction to relational databases

The idea of relational databases started to become popular in 1970 when IBM
employee, Ted Codd, published his paper "A Relational Model of Data for Large
Shared Data Banks". This used a relatively obscure branch of mathematics,
called relational calculus to derive a mechanism for storing large amounts of
data.

In Codd's paper, data is stored as tuples which are gathered together in
relations. A tuple contains all of the data items about one particular object
(for example the name, date of birth and sex of a person) and a relation
groups together all of the data about objects of the same type (for example
data about all of the people your system is interested in). These days, it is
more common to talk about a table which holds data about people and a single
row in that table which holds the data about an individual person.

A table is defined by the set of attributes (or columns that it contains).
Each attribute has a name and a data type. The data type defines the valid
values that can be stored in that column. We use a data definition language
(DDL) to define a table. The definition for our example table storing data
about people might look like this:

    CREATE TABLE person (
      name CHAR(50),
      date_of_birth DATE,
      sex ENUM('M', 'F')
    );

The table is called "Person" and it has three columns.

In practice, you will also want some kind of unique identifier for each row
in the database. There are various mechanisms for allocating those. The
simplest (and probably the most common) is to allocate the next integer in an
ascending sequence as a record is inserted into the table.

Your DDL will also allow you to define more advanced aspects of your data.
For example, there might be inherent uniqueness constraints in your data.
There are no obvious uniqueness constraints in our current table (it's
perfectly possible for people of the same sex and with the same name to be
born on the same date) but if we also included a person's government-issued
tax identifier, then that would need to be unique.

* The person's name is consists of up to fifty characters.
* The date of birth must be a valid date
* The sex is an enumerated value that can only be 'M' or 'F'

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

There are very few systems these days that don't use networking in some way.
Some of the more obvious networking protocols that you might come across
include:

* SSH (secure shell) and SCP (secure copy) for getting shell access to remote
servers and for copying files to and from them.
* SMTP (simple mail transfer protocol) and IMAP (internet message access
protocol) for sending and receiving email.
* HTTP (hypertext transfer protocol) and its secure version, HTTPS, for
handling web requests.
* DNS (domain name system) for translating human-readable domain names to
computer-useable IP addresses.

Other, less well known protocols that you might see include:

* FTP (file transfer protocol) has been superseded by SCP - as it's more secure.
If you come across somewhere that still uses FTP, you might question their
attitude to security.
* POP (post office protocol) is an older mail retrieval protocol.
* NTP (network time protocol) for ensuring that all of the servers connected
to a network have their clocks in sync.
* SNMP (simple network management protocol) is a way to gather information
about the devices that are connected to a network.

In most cases, a networking protocol is a well-defined series of requests and
responses that take place between a client and a server. The client sends a
request to the server and the server responds with some information. This
cycle takes place on a certain "port", which is a numbered communication
channel where a server will listen for requests. Each protocol has one or two
well-known ports that it runs on. An SSH server, for example, will listen on
port 22 and an HTTP server will listen on port 80.

The instructions that drive these conversations are usually plain text. It can
often be interesting to manually play the part of the client yourself. One
common tool for doing this is called `telnet`. This command line program has
largely been superseded by `ssh` (because it's more secure) but it can still
be installed on most systems.

If you run `telnet some.server` then you connect to "some.server" on port 23
(the default port for the telnet protocol) but you can give it another port
number as a second argument and you will then be talking directly to whatever
server is listening on that port. For example, to talk HTTP to web server,
telnet to port 80:

    $ telnet morethanco.de 80
    Trying 185.199.109.153...
    Connected to morethanco.de.
    Escape character is '^]'.

You can then type any request that you would expect an HTTP server to
understand (note that HTTP requires an empty line to end the request, so you
need to hit the enter key twice):

    HEAD / HTTP/1.1

    HTTP/1.1 404 Not Found
    Server: GitHub.com
    Content-Type: text/html; charset=utf-8
    ETag: "5cb0f185-239b"
    [... more omitted ...]

It doesn't happen everyday (or even every week) but when I really want to know
what's going on in a network interaction, I often find it useful to debug it
using `telnet`.

### Seven-layer model

Networking is traditionally described as containing seven layers. This is
useful as for a specific problem, you usually only need to think about one or
two of these layers at a time. As a developer, that's probably the application
layers - most of the time, you can assume that all of the other layers Just
Work.

It is, however, useful to know what the other layers are in order to hold a
meaningful conversation with any network engineers who might be helping you
to solve a problem. The seven layers are:

1. Physical layer. This is the cables, boxes and wifi transmissions that
actually make up the physical network.
1. Data link layer. This is the protocol that provides data transfer between
two adjacent nodes in your network.
1. Network layer. This is the protocol that allows data to be transmitted
between different physical networks.
1. Transport layer. This is the protocol that allows data to be transmitted
from a source host to a destination host.
1. Session layer. This is the protocol that defines seemingly-persistent
connections between clients and servers.
1. Presentation layer. This is the protocol that formats application data for
transmission across a network.
1. Application layer. This is where all of the application-specific network
protocols we discussed above sit.

### HTTP

HTTP, and its more secure cousin, HTTPS has become one of the most ubiquitous
networking protocols in our modern world. Not only is it used whenever someone
visits a web page, but it's also the most common mechanism used for API calls
and most "Internet of Things" devices will use HTTP to communicate with each
other.

At its core, HTTP is a simple request/response cycle. An HTTP client (which
is often a browser) makes a request to a server and the server returns some
data. Both the request and response consist of a number of headers separated
from the body by a blank line. We saw a simple request/response example above.
The request looked like this:

    HEAD / HTTP/1.1

And the response looked like this:

    HTTP/1.1 404 Not Found
    Server: GitHub.com
    Content-Type: text/html; charset=utf-8
    ETag: "5cb0f185-239b"
    [... more omitted ...]

The `HEAD` command is the simplest of the HTTP request types and it generates
one of the simplest responses. It specifically only asks for the header portion
of the response. And, because this was a request that I typed in manually in
`telnet`, I gave it the bare minimum request - just a command, with no headers.

The full specification of a request is:

* A request line, consisting of a command (`HEAD`), the path of a resource
on the server (`/` - which is the top-level resource) and the version of
HTTP to use (`HTTP/1.1`).
* A number of optional header lines. These consist of a header name, a colon
and a value. For example, you might tell the server that you only want HTML
returned using an "Accept" header - `Accept: text/html`.
* A blank separator line.
* A optional body which can contain data that you wish to transfer to the
server (for example, a file upload).

A response is very similar. In place of the request line, it has a status
line which includes the HTTP version, a status code and a brief message. The
header lines will define details like the content type
(`Content-Type: text/html`) and the body will contain the actual data for the
resource (with the obvious exception of the response to a HEAD request which
will only contain headers).

The response status codes fall into five groups. Each code is a three-digit
number and the first digit tells you which group the code belongs to.

* 1xx (Informational): You don't see many of these.
* 2xx (Success): These tell you that the server accepted and processed your
request successfully. The most common of these is "200 OK".
* 3xx (Redirection): These tell you that you should make an additional request
to an alternative URL which will be in the "Location" header. In most cases,
a browser will make the redirected request for you.
* 4xx (Client error): These tell you that you have made a mistake in your
request which you need to correct before resubmitting the it. The most common
of these is "404 Not Found", but "403 Forbidden" is also seen quite often when
you don't have permission to access a particular page.
* 5xx (Server error): These tell you that something has gone wrong on the
server and there is probably nothing you can do about it. The most common is
"500 Internal Server Error" which is pretty generic.

There are a number of different HTTP commands available. The most commonly
used ones are:

* GET: returns a representation of the resource at the given path.
* POST: sends data to the server in the body of the request. The path in the
request line will tell the server what to do with the data.
* HEAD: returns only the headers of the equivalent GET request.

You're doing well if you could also name the next three:

* PUT: is similar to POST, except POST is expected to contain new data to be
stored on the server and PUT is expected to contain a replacement for existing
data.
* DELETE: asks the server to delete a resource.
* PATCH: supplies partial modifications to a resource.

And almost no-one (in my experience) knows about these:

* OPTIONS: asks the server to return a list of the commands that the it
supports for the given path.
* TRACE: returns the request that the server received. This is useful for
debugging as you will be able to see any modifications that might have been
made to the request by intermediate servers.
* CONNECT: converts the transient HTTP connection to a TCP/IP tunnel. This one
is pretty obscure.

A standard web application will usually only use GET (to display a web page)
and POST (to send the contents of a web form). This is slightly unintuitive as
you can find yourself using a GET or POST request to delete data from the
server. If you're writing an API, however, you should make use of a wider
range of HTTP commands. If you consider your API as a query tool to a database,
then there are four operations you will need to carry out on the data stored
in that database.

* Create - to add a new data object to the database.
* Read - to retrieve an existing data object.
* Update - to change the attributes of an existing data object.
* Delete - to remove a data object from the database.

These are known as the CRUD operations and they map rather nicely onto four
of the HTTP commands.

* POST - to create a new data object.
* GET - to read an object.
* PUT - to update an object.
* DELETE - to (rather obviously) delete an object.

One common-used approach to creating an API is called Representational State
Transfer (REST for short). One of the tenets of REST is to use the four HTTP
commands listed above to handle the CRUD operations on your data. So if, for
example, you had an API which contained details of films you would want to
support the following API calls.

* POST /films - to create a new film. The request body would contain a
representation of the various attributes of the new film. The response to this
request would echo back this representation, adding any new attributes that
were added as the record was created - this would almost certainly include
the identifier for the new record and the URL where the new record can be
accessed.
* GET /films/999 - to read details of the film with the identifier 999.
This would return a representation of the film (which would probably be very
similar to the representation returned by the original POST request).
* PUT /films/999 - to update the details of the film with the identifier 999.
The body of the request would include a representation of the attributes of
the record that have changed.
* DELETE /films/999 - to delete the film with the identifier 999.

You can also make more precise use of HTTP status codes when writing a REST
API. For example, instead of just returning "200 OK" from a POST request, you
should return "201 Created" to indicate that the object was created
successfully. A web framework called [webmachine](http://webmachine.github.io/)
provides a comprehensive mechanism for returning the correct status code for
a given sitution. They provide a
[state transition diagram](http://webmachine.github.io/diagram.html) that
nicely demonstrates the complexities.

![REST State Transition Diagram](http://webmachine.github.io/images/http-headers-status-v3.png)

### HTTPS

HTTPS is a secure version of HTTP. It supports everything that HTTP does and
builds a secure socket layer (SSL) on top of that. With standard HTTP, all of
the data that passes between the client and the server is unencrypted and
anyone who could intercept that traffic could see the information. With HTTPS,
the data is encrypted using keys that the client and server share, so that
only the client and the server can see the data.

At the very least, whenever a user is sharing confidential information with
your web site (passwords or credit card details, for example) that form should
be served using HTTPS. A few years ago, browsers started to indicate that a
page was secure by displaying a padlock icon in the URL bar but, more recently,
this has started to switch to displaying a warning when a page is not served
over HTTPS. Presumably, you don't want your users to see these warnings when
they visit your site, so the best approach is to server all of your pages
over SSL and to redirect anyone requesting a page over HTTP to the secure
version. With organisations like Let's Encrypt issuing SSL certificates for
free, there's really no reason not to do that.

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

Sooner or later, your code will need to be deployed into an environment where
it is available for your users to access. Previously, it was unlikely that,
as a developer, you would have much to do with this deployment process, but
the move towards DevOps personal being embedded in development teams makes it
far more likely that you will need to understand this part of the process.

### Deployment environments

It's likely that your code will go through a number of different environments
before it gets into production. Not all companies will have the same set, but
the four environments listed below seem to be fairly common.

* Development: This is where you will do your development. It will hopefully
be an environment that only you are working on. Every developer should have
their own development environment. This can be running locally on the
developer's own machine or somewhere remote (on a share development server or,
perhaps, in the cloud).

* Integration: Once a developer thinks a feature is ready for production, it
will need to be tested on an integration environment. This is where all of the
features that are intended to be included in the next release can be tested
togther. This will ensure that new features which have been developed in
parallel since the previous release don't affect each other in strange ways.

* Staging: When a release candidate has been thoroughly tested in the
integration environment, a release is built and deployed to the staging
environment. This is built to be as much like the production environment
as possible and is a place where you can test the release one final time to
ensure that it works as expected.

* Production: This is the live environment from where your users access your
server. Once your release hits this environment, it is officially released.
There will normally be at least two instances of this environment. This is
mostly for resilience (in case one environment goes down for some reason) but
can also help with scalability and, sometimes, teams use multiple production
environments to help with staged releases.

That's a lot of environments. One development environment for each developer
on the project. Probably an integration environment for each team or each
major component of the system. At least one staging environment and at least
two production environments. Just keeping that number of environments up and
running will be a major headache. Keeping them all in step with each other
will be worse.

We also need to consider exactly how code is moved from one environment to
the other and what quality gates we place at each transition to ensure that
only working code gets moved through the process.

There's also the question of the databases for these various environments.
It seems unlikely that you will want a full database dump on all of the
development or integration environments. It's not just the size of the live
database that could cause problems here, there's also the the fact that this
database will contain personal data about your customers that the development
team should not have access to.

But the live database has a richness of data that you will never find if you
create a specific development database with mocked up data. Whoever creates
the test data will never be able to reproduce the complexities of the data
that is found in your live database. So it is certainly useful to seed your
development database from the production database in some way. In order to
work round the two problems of database size and customer privacy, you will
want to take a dump of the production database and massage it in two ways
before making it available to developers.

1. Remove some percentage of the data. Perhaps only include data about 25%
of your customers and your products.
1. Anonymise the data so that anyone getting access to the database cannot
see confidential information about your real customers.

I've seen this approach taken in a number of companies. It is never as easy
as you initially think it is. Getting this set up to work well is a major
development project. But it's one that it is well worth taking the time to
get right. Once you have got it right, you should run that process on a
regular basis (perhaps weekly) and give your developers a single command that
will overwrite their development database with the latest cleaned-up dump.

There is also the question of how frequently a developer updates their
development system with an up to date version of this database. A production
database system isn't static. As new features are developed, new tables are
created in the database, columns are added to existing tables and the
definitions of existing columns are changed. Your development process can
become fragile if a developer is using an older version of the database schema.

I've often seen developers set up their development database in their first
week at a company and then never refresh it. They will make the changes to
their database that are required by the work they are doing. But unless they
also apply the changes that other teams are also making, their database will
slowly fork from the production version. How do you address that?

The best approach is probably to insist that all schema changes are carried
out using database migrations. A migration is a small program that makes a
set of changes to a database schema. Usually this will be the set of changes
required to add an enhancement or fix a bug. A migration will include the code
to apply the migration to the schema alongside the code to roll it back. The
migrations for a system will all be numbered in an ascending sequence and
the source code for the migrations will be stored in an easily-accessible
place (perhaps in a directory that is part of your source code repository).

The database itself contains a table which has data indicating the current
schema version number and migrations are applied using a program which takes
as an argument, the version of the schema that you want to end up with. The
program then compares the required number with the version currently on the
database server and applies (or rolls back) the necessary migrations to get
to the correct version. A nice extra feature is for your application's
configuration file to contain the schema version that the current version of
the application requires and for the application to check it's connecting to
a database with the correct version of the schema each time it starts up.

The sequence of events then goes like this:

* A new developer joins the company and sets up a development system. This
includes a development version of the database which is marked as being version
15 of the schema. The new developer checks out the latest version of the
application and it requires schema version 15. The developer can therefore
run the application against this version of the database.

* The developer spends a month working on projects that don't require any
changes to the database. But, occasionally, other developers will make changes
to the schema. When the developer merges a code branch that contains a new
migration, the application shows an error and will not start until the database
is running the correct version of the schema. This can be done by either
running the migration program or by reloading the entire development database
from the latest available dump.

* When the developer works on a project that requires a database change, he
creates a migration for the changes and includes that in the commit with the
code changes (and, also, an update to the configuration telling the application
that it needs the new version). Once those changes have been released, that
new migration (along with the code and configuration changes that require it)
are in the main branch of the version control system and are available for
any other developers.

By following a procedure like this, it's possible for developers to have their
own development database which is easy to keep up to date with the released
version of the schema. This minimises the changes of two developers making
contradictory changes to the schema that aren't found until the release hits
the integration or staging environments.

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
