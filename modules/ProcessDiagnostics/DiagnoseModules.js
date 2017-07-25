$(document).ready(function(){
    $('span.modulePending').each(function(){
        var self = $(this);
        var module = $(this).data('module');
        var url = '?moduleAjax=' + module;
        var localVersion = $(this).data('version');

        $.get(url, function(remoteVersion) {
            var updatable = (remoteVersion > localVersion);
            var html, value, action, updateUrl;

            if(updatable) {
                updateUrl = config.urls.admin + 'module/?update=' + module;
                value = config.DiagnosticsModules.updateAvailable;
                status = '<span class="warning">' + config.DiagnosticsModules.warning + '</span>';
                action = config.DiagnosticsModules.newVersion + ' <a href="' + updateUrl + '">' + config.DiagnosticsModules.clickHere + '</a>';
            } else {
                value = config.DiagnosticsModules.upToDate;
                status = '<span class="ok">OK</span>';
                action = '';
            }

            //value
            $('.module' + module + '.moduleValue').parent().html(value);

            // status
            self.parent().html(status);

            //action
            $('.module' + module + '.moduleAction').parent().html(action);
        });

    });

});
