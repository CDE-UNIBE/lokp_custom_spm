<strong>${_('Notice')}</strong>:
${_('Unsaved data from another form was found in the session.')} ${_('It contains:')}

% if type == 'activities':
    ${_('Activity')}
    % if name == '':
        ${_('New activity')}
    % else:
        ${name}
    % endif
% else:
    ${_('Stakeholder')}
    % if name == '':
        ${_('New stakeholder')}
    % else:
        ${name}
    % endif
% endif
. ${_('These changes will be lost if you continue to edit this form.')}
<br/>

<a href="${url}">${_('See the unsaved changes of this Activity and submit it.')}</a>