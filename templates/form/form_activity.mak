## Form to CREATE or EDIT an activity.

<%
    import colander
    new_form = 'id' not in cstruct or cstruct['id'] == colander.null
    _ = request.translate
%>

<h3>${_('Activity Editor')}</h3>

% if new_form is True:
    <p class="id">${_('New Activity')}</p>
% else:
    <p class="id">${cstruct['id']}</p>
% endif

<form
    id="${field.formid}"
    class="item-form"
    action="${field.action}"
    method="${field.method}"
    enctype="multipart/form-data"
    accept-charset="utf-8">

    <input type="hidden"
           name="_charset_"
    />
    <input type="hidden"
           name="__formid__"
           value="${field.formid}"
    />

    <div class="row-fluid">
        <div class="span9">
            % if field.error:
                <div class="alert alert-error">
                    <h5>${_("There was a problem with your submission")}</h5>
                    ${_("Errors have been highlighted below")}
                </div>
            % endif
            % for child in field.children:
                ${child.render_template(field.widget.item_template)}
            % endfor
        </div>
        <div class="deal-editor-menu-bar span3">
            <div id="menu-affix" data-clampedwidth=".deal-editor-menu-bar">
                % for button in field.buttons:
                    <ul>
                        % if button.css_class == 'formstepactive':
                            <div class="active-wrapper">
                        % endif

                        <li
                            % if button.name == 'submit':
                                style="background-color:gray;"
                            % endif
                            >
                            <button
                                id="${field.formid + button.name}"
                                name="${button.name}"
                                value="${button.value}"
                                class="btnText ${button.css_class}">
                                ${button.title}
                            </button>
                            % if button.css_class == 'formstepvisited':
                                <span class="form-button-visited"><i class="icon-ok-sign"></i></span>
                            % endif
                        </li>

                        % if button.css_class == 'formstepactive':
                            </div>
                        % endif
                    </ul>
                % endfor
            </div>
        </div>
    </div>

    % if field.use_ajax:
        <script type="text/javascript">
            deform.addCallback(
                '${field.formid}',
                function(oid) {
                    var target = '#' + oid;
                    var options = {
                        target: target,
                        replaceTarget: true,
                        success: function() {
                            deform.processCallbacks();
                            deform.focusFirstInput(target);
                        }
                   };
                   var extra_options = ${field.ajax_options} || {};
                   $('#' + oid).ajaxForm($.extend(options, extra_options));
                }
            );
        </script>
    % endif

</form>
