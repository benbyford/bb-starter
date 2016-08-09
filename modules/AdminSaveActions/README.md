# ProcessWire AdminSaveActions #

Admin Save Actions adds the possibility to choose where the browser gets redirected after saving a page, template or field in the admin. Admin save actions are displayed just before the save button in a collapsed container.

Chosen action can be saved in a cookie for current user by checking "Remember this setting". Setting is remembered for each type of save (page, field, template) separately. By leaving this option unchecked upon save, the chosen action will not become the default.

## Actions available in v1.0 ##

### When saving / adding pages ###
* Continue editing
* Return to list
* Create a new sibling page
* Edit next sibling (if one exists)
  * By default only published and visible pages are acknowledged
  * If currently edited page is hidden but published all published pages are acknowledged (visible or hidden)
  * If currently edited page is unpublished all pages are acknowledged
* View page

### When saving a template ###
* Continue editing
* Return to list
* Create a new template

### When saving a field ###
* Continue editing
* Return to list
* Create a new field

### Config option(s) ###
* Input type: display actions in a container with radio buttons OR a drop down near the bottom Save button.
* Sibling limit: upper limit for sibling count to still give option to "edit next sibling page".

------
AdminSaveActions Copyright (c) 2013-2014 Niklas Lakanen
