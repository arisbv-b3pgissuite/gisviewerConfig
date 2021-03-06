<%--
Copyright 2007-2013 B3Partners BV.

This program is distributed under the terms
of the GNU General Public License.

You should have received a copy of the GNU General Public License
along with this software. If not, see http://www.gnu.org/licenses/gpl.html

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
--%>
<%@include file="/WEB-INF/jsp/taglibs.jsp" %>

<%@ page isELIgnored="false"%>

<script type="text/javascript" src='dwr/engine.js'></script>
<script type='text/javascript' src='dwr/util.js'></script>
<script type="text/javascript" src='dwr/interface/JCrossWebAppUtil.js'></script>

<c:set var="form" value="${cmsMenuItemForm}"/>
<c:set var="action" value="${form.map.action}"/>
<c:set var="mainid" value="${form.map.cmsMenuItemID}"/>

<c:set var="save" value="${action == 'save'}"/>
<c:set var="delete" value="${action == 'delete'}"/>

<c:set var="focus" value="titel"/>

<div class="infobalk">
    <div class="infobalk_description">CMS MENU ITEM CONFIGURATIE</div>
    <div class="infobalk_actions"><tiles:insert name="loginblock"/></div>
</div>

<html:form action="/configCMSMenuItem" onsubmit="return validateCMSMenuItemForm(this)" focus="${focus}">
    <div style="display: none;">
        <html:hidden property="action"/>
        <html:hidden property="alt_action"/>
        <html:hidden property="cmsMenuItemID"/>
        <input type="hidden" name="refreshLists">
    </div>
    <c:if test="${!empty cmsMenuItems}">
        <table id="connectietable" class="dataTable">
            <thead>
                <tr>
                    <th style="width: 25%;">Titel</th>
                    <th style="width: 25%;">Url</th>
                    <th style="width: 20%;">Icon</th>
                    <th style="width: 10%;">Volgordenr</th>
                    <th style="width: 20%;">Datum</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="ci" varStatus="status" items="${cmsMenuItems}">
                    <c:url var="link" value="/configCMSMenuItem.do?edit=submit&cmsMenuItemID=${ci.id}" />
                    <c:set var="id_selected" value='' />
                    <c:if test="${ci.id == mainid}">
                        <c:set var="id_selected" value=' class="row_selected"' />
                    </c:if>
                    <tr data-link="${link}"${id_selected} >
                        <td><c:out value="${ci.titel}"/></td>
                        <td><c:out value="${ci.url}"/></td>
                        <td><c:out value="${ci.icon}"/></td>
                        <td><c:out value="${ci.volgordenr}"/></td>
                        <td><fmt:formatDate value="${ci.cdate}" pattern="dd-MM-yyyy HH:mm"/></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>

    <div id="content_style" style="float: left; clear: left;">
        <div class="berichtenbalk" style="margin-top: 5px;">
            <tiles:insert definition="actionMessages"/>
        </div>

        <div class="maintable" style="margin-top: 5px;">

            <table cellpadding="2" cellspacing="2" border="0">
                <tr>
                    <td>
                        <fmt:message key="configcmsmenuitemtitel.label"/> <a href="#" onclick="return showHelpDialog('help_configcmsmenuitemtitel');">(?)</a>
                        <div id="help_configcmsmenuitemtitel" style="display: none;" title="<fmt:message key="configcmsmenuitemtitel.label"/>">
                            <p><fmt:message key="configcmsmenuitemtitel.uitleg"/></p>
                        </div>           
                    </td>
                    <td colspan="3">
                        <html:text property="titel" size="40"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <fmt:message key="configcmsmenuitemurl.label"/> <a href="#" onclick="return showHelpDialog('help_configcmsmenuitemurl');">(?)</a>
                        <div id="help_configcmsmenuitemurl" style="display: none;" title="<fmt:message key="configcmsmenuitemurl.label"/>">
                            <p><fmt:message key="configcmsmenuitemurl.uitleg"/></p>
                        </div>           
                    </td>
                    <td colspan="3">
                        <html:text property="url" size="40"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <fmt:message key="configcmsmenuitemicon.label"/> <a href="#" onclick="return showHelpDialog('help_configcmsmenuitemicon');">(?)</a>
                        <div id="help_configcmsmenuitemicon" style="display: none;" title="<fmt:message key="configcmsmenuitemicon.label"/>">
                            <p><fmt:message key="configcmsmenuitemicon.uitleg"/></p>
                        </div>           
                    </td>
                    <td colspan="3">
                        <html:text property="icon" size="40"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <fmt:message key="configcmsmenuitemvolgordenr.label"/> <a href="#" onclick="return showHelpDialog('help_configcmsmenuitemvolgordenr');">(?)</a>
                        <div id="help_configcmsmenuitemvolgordenr" style="display: none;" title="<fmt:message key="configcmsmenuitemvolgordenr.label"/>">
                            <p><fmt:message key="configcmsmenuitemvolgordenr.uitleg"/></p>
                        </div>           
                    </td>
                    <td colspan="3">
                        <html:text property="volgordenr" size="40"/>
                    </td>
                </tr>
            </table>
        </div>

        <div class="knoppenbalk">
            <!-- Bij nieuw alleen opslaan en annuleren tonen -->
            <c:if test="${empty form.map.cmsMenuItemID}">
                <div class="knoppen">
                    <input type="button" class="knop" onclick="window.location='<html:rewrite page='/configCMSMenuItem.do' />'" value="<fmt:message key='button.cancel'/>" />
                </div>
                <div class="knoppen">
                    <html:submit property="save" accesskey="s" styleClass="knop saveButton" onclick="return confirm('Weet u zeker dat u dit cms menu item wilt opslaan?');">
                        <fmt:message key="button.save"/>
                    </html:submit>
                </div>                
            </c:if>

            <!-- Bij bewerken nieuw, wissen en opslaan tonen -->
            <c:if test="${!empty form.map.cmsMenuItemID}">
                <div class="knoppen">
                    <html:submit property="create" accesskey="n" styleClass="knop newButton">
                        <fmt:message key="button.new"/>
                    </html:submit>
                </div>
                <div class="knoppen">
                    <html:submit property="delete" accesskey="d" styleClass="knop removeButton" onclick="return confirm('Weet u zeker dat u dit cms menu item wilt verwijderen?');">
                        <fmt:message key="button.remove"/>
                    </html:submit>
                </div>
                <div class="knoppen">
                    <html:submit property="save" accesskey="s" styleClass="knop saveButton" onclick="return confirm('Weet u zeker dat u dit cms menu item wilt opslaan?');">
                        <fmt:message key="button.save"/>
                    </html:submit>
                </div>
            </c:if>
        </div>
    </div>
</html:form>