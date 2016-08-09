Pagetree Add New Childs Reverse
===========================

### ProcessWire Admin: New Pages in Descending Sortorder (newest first) while sortmode can be "Manual Drag-n-Drop"


When a site display an overview of the latest posts, news, image-albums, etc. the newest entries should be on top of the list. We can achieve that by using an automated setting for the sortfield e.g. when the page was created = "-created".
 
But this way we are not able to manually move a single page in the tree.

This module enables us to do exactly that. 
It works with **manually created pages**, with pages created via the **API**, also when **bootstrapped** by importer scripts.

====================

**Pagetree "Newsitems" with 3 newsitems sorted in descending order.**

![alt text][screen1] 

===

**New created item 4 is added to the top.**

![alt text][screen2] 

===

**To change the order click item 3 and drag it to the top and drop it.**

![alt text][screen3]

![alt text][screen4]

![alt text][screen5]
===
[screen1]: http://nogajski.de/priv/postings/PageTreeAddNewChildsReverse_1.jpg "PageTree with 3 newsitems, sorted descending"
[screen2]: http://nogajski.de/priv/postings/PageTreeAddNewChildsReverse_2.jpg "New created item 4 is added to the top"
[screen3]: http://nogajski.de/priv/postings/PageTreeAddNewChildsReverse_3.jpg "Click item 3"
[screen4]: http://nogajski.de/priv/postings/PageTreeAddNewChildsReverse_4.jpg "move it to the top"
[screen5]: http://nogajski.de/priv/postings/PageTreeAddNewChildsReverse_5.jpg "manually changed sortorder is saved"


### How to use it

Download the module into your site/modules/ directory and install it. In the config page you find a single textarea field. 
Here you can enter the templatename or page-ID of the parent which children should get reverse added, - optionaly followed by a colon and the child-templatename if you need a more precise selector. 
You can add as many parents as you like, but only one on each line and in this format: 
TEMPLATE-NAME or PAGE-ID[,CHILDTEMPLATE-NAME].

A few examples: 
```
newsitems
posts,post
1042
1033,album
```

You want set your template(s) sortfield(s) to 'Manual drag-n-drop' if not have done allready.
 
#### ATTENTION
You need to setup the **TreeParent and the module config** when there are **no children in it**! Otherwise it will not work!

Also disabling the module once you have added childs and then add one new pages to it will mess up all!
(You may think about to install the module as permanent in critical situations.?! see below ->)

Per default you are limited to 1.000.000.000 childpages, but you may increase it if you need :)



#### [ProcessWire forums thread of this module](http://processwire.com/talk/topic/4758-release-pagetree-add-new-childs-reverse/ "go to the ProcessWire forums thread of this module")

