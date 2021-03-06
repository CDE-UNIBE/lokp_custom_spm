<%inherit file="lmkp:customization/spm/templates/base.mak" />

<%def name="title()">${_("Charts")}</%def>

<%def name="head_tags()">
  <link rel="stylesheet" href="/custom/css/charts.css"></link>
</%def>

<div class="container">
    <div class="content no-border">

        <h3>${_("Charts")}</h3>

        <ul class="chart-gallery">
            <li class="span3">
                <a class="thumbnail" href="${request.route_url('charts', type='bars', params=(u'a',))}">
                    <img alt="${_('Activity bar charts')}" src="/custom/img/charts/barchart_a.png">
                </a>
                <p><a href="${request.route_url('charts', type='bars', params=(u'a',))}">${_('Activity bar charts')}</a></p>
            </li>
            <li class="span3">
                <a class="thumbnail" href="${request.route_url('charts', type='stackedbars', params=())}">
                    <img alt="${_('Activity stacked bar charts')}" src="/custom/img/charts/stackedbarchart_a.png">
                </a>
                <p><a href="${request.route_url('charts', type='stackedbars', params=())}">${_('Activity stacked bar charts')}</a></p>
            </li>
            <li class="span3">
                <a class="thumbnail" href="${request.route_url('charts', type='bars', params=(u'sh',))}">
                    <img alt="${_('Stakeholder bar charts')}" src="/custom/img/charts/barchart_sh.png">
                </a>
                <p><a href="${request.route_url('charts', type='bars', params=(u'sh',))}">${_('Stakeholder bar charts')}</a></p>
            </li>
            <li class="span3">
                <a class="thumbnail" href="${request.route_url('charts', type='map', params=())}">
                    <img alt="${_('Stakeholder map charts')}" src="/custom/img/charts/mapchart_sh.png">
                </a>
                <p><a href="${request.route_url('charts', type='map', params=())}">${_('Stakeholder map charts')}</a></p>
            </li>
        </ul>

    </div>
</div>
