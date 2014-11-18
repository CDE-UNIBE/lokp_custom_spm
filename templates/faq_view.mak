<%inherit file="lmkp:customization/spm/templates/base.mak" />

<%def name="title()">${_('FAQ')}</%def>

<%
    from lmkp.views.form_config import getCategoryList
    cList = getCategoryList(request, 'activities')
    desiredKeys = cList.getDesiredKeyNames(translated=True)
%>

<div class="container">
    <div class="content no-border">
        <h3>
            ${_('FAQ')}
        </h3>
            <ul class="links">
                <li><a href="#q4">${_('How do I submit information on an activity?')}</a></li>
            </ul>
        <hr class="grey" />

        <a name="q5"></a><p class="lead">${_('How do I submit information on an activity?')}</p>
        <p>${_('Once you are logged in, you can fill out the form to add a new activity or edit an existing one. Do you need help filling out the form? We created a manual to help you get started.')}</p>
        <p><a class="btn btn-primary" href="/custom/docs/manuel_spm.pdf">${_('How to add a new activity')}</a></p>
        <p>${_('After you submit, moderators will review and approve your report. New activities will not be approved until all of the mandatory attributes are completed.')}</p>
        <ul class="bullets">
            % for k in desiredKeys:
            <li>${k}</li>
            % endfor
        </ul>
        <p>${_('Once your report is reviewed and approved, it is public for the whole world to see.')}</p>
        <hr class="grey" />

    </div>
</div>

