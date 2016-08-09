Process404Search
================

Processwire module for loading search results into 404 page using terms from the failed URL

To make this module work, the only requirement is that you select your site's Search page in the module's config settings.

Optionally, you might like to add the following to your search.php file.
```
if(isset($options['q'])) $content .= $pages->get($config->http404PageID)->body;
```
This will add the content of your 404 page's body field to the top of the search results. You might like to populate that field with something like:

```
<h3>The page you were looking for is not found.</h3>
<p>We have tried to find the content you were looking for, but if we didn't get it right, please use our search engine or navigation above to find the page.</p>
```

####Support forum:
http://processwire.com/talk/topic/5724-404-search-module/


## License

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

(See included LICENSE file for full license text.)