ProcessDocumentation
=======================

Allows unliimited process pages (admin) that each render formatted content. 

Used for creating documentation, wikis, changelogs & version statements, to-do lists, or other display pages in the admin.

* In the module config you can specify the default field to render in Field Render Mode.
* You can use jQuery UI tabs, using the syntax {tab=Title of Tab} content {tab=Title of 2nd tab} content {/tabs}
* You can disable the default styling, and add your own css file(s) for styling the pages.
* Template Render Mode allows you to render a template file using the content page, or pure markup with no page parameter.
* To use template mode, set the directory then place a php file named the same as the process page in the specified directory.
* No default CSS files are loaded when in Template Render Mode; You have to add any css dependencies, using the api from your file.
* In template render mode, output formatting is turned on for any pages that are to be rendered.

## Support

https://processwire.com/talk/topic/17488-module-preview-process-documentation/

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