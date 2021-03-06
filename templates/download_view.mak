<%inherit file="lmkp:customization/spm/templates/base.mak" />

<%def name="title()">${_('Download')}</%def>

<%
    from lmkp.utils import handle_query_string
%>

## Filter
<%include file="lmkp:customization/spm/templates/parts/filter.mak" />

<div class="container">
    <div class="content no-border">
        <div class="row-fluid">
            <h3>
                ${_('Download')}
            </h3>
            <p>
                ${_('All the information about the Activities or Stakeholders found on the Land Observatory can be downloaded.')}
            </p>
            <p>
                ${_('Please select one of the download options below.')}
            </p>
        </div>
        <hr class="grey" />
        <div class="row-fluid">
            <div class="span12 text-center">
                <a class="btn btn-primary margin" href="${request.route_url('activities_read_many', output='download')}${handle_query_string(request.url, return_value='query_string', remove=['order_by', 'dir', 'status'])}">
                    ${_('Download Activities')}
                </a>
                <a class="btn btn-primary margin" href="${request.route_url('stakeholders_read_many', output='download')}${handle_query_string(request.url, return_value='query_string', remove=['order_by', 'dir', 'status'])}">
                    ${_('Download Stakeholders')}
                </a>
            </div>
        </div>
    </div>
</div>

<%def name="bottom_tags()">
    <script src="${request.static_url('lmkp:static/v2/filters.js')}" type="text/javascript"></script>
</%def>
