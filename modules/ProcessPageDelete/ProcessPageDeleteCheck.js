$(document).ready(function() {
    $(document).on('click', "li.PageListActiondelete a", function(e) {
        if(!confirm(config.ProcessPageDelete.sure)) { return false; }
    });
});
