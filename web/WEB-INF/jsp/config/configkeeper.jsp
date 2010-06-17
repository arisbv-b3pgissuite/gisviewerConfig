<%@include file="/WEB-INF/jsp/taglibs.jsp" %>
<%@ page isELIgnored="false"%>

<div class="infobalk">
    <div class="infobalk_description">CONFIG KEEPER</div>
    <div class="infobalk_actions"><tiles:insert name="loginblock"/></div>
</div>

<div class="berichtenbalk" style="margin-top: 5px;">
    <html:messages id="error" message="true">
        <div class="messages"><c:out value="${error}" escapeXml="false"/></div>
    </html:messages>
</div>

<html:form action="/configKeeper">
    <html:hidden property="action" />
    <html:hidden property="alt_action" />

    <div class="fieldset_block_wide">
        <fieldset class="fieldset_wide">
        <legend class="fieldLegend">Tabbladen</legend>

        <div class="content_body">

        <p><fmt:message key="config.tabbladen.label"/></p>

        <table>
            <tr>
                <td>&nbsp;</td>
                <td class="colored2" align="center">Kaarten</td>
                <td class="colored2" align="center">Legenda</td>
                <td class="colored2" align="center">Zoeken</td>
                <td class="colored2" align="center">Informatie</td>
                <td class="colored2" align="center">Gebieden</td>
                <td class="colored2" align="center">Analyse</td>
                <td class="colored2" align="center">Planselectie</td>
            </tr>
            <tr>
                <td class="colored1">Beheerder</td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
            </tr>
            <tr>
                <td class="colored1">Gebruiker</td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
            </tr>
            <tr>
                <td class="colored1">Demo</td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
            </tr>
            <tr>
                <td class="colored1">Anoniem</td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
                <td align="center"><html:checkbox property="cfg_useCookies"/></td>
            </tr>
        </table>

        </div>
        </fieldset>
    </div>

    <div class="fieldset_block">
        <fieldset class="fieldset1">
        <legend class="fieldLegend">Kaartlagen</legend>

        <div class="content_body">
        <table>
        <tr>
            <td>
                <fmt:message key="cfg_useCookies.label"/>
                <a href="#" onclick="return showHelpDialog('help_cfg_useCookies');">(?)</a>
                <div id="help_cfg_useCookies" style="display: none;" title="<fmt:message key="cfg_useCookies.label"/>">
                    <p><fmt:message key="cfg_useCookies.uitleg"/></p>
                </div>
            </td>
            <td><html:checkbox property="cfg_useCookies"/></td>
        </tr>
        <tr>
            <td>
                <fmt:message key="cfg_expandAll.label"/>
                <a href="#" onclick="return showHelpDialog('help_cfg_expandAll');">(?)</a>
                <div id="help_cfg_expandAll" style="display: none;" title="<fmt:message key="cfg_expandAll.label"/>">
                    <p><fmt:message key="cfg_expandAll.uitleg"/></p>
                </div>
            </td>
            <td><html:checkbox property="cfg_expandAll"/></td>
        </tr>
        <tr>
            <td>
                <fmt:message key="cfg_refreshDelay.label"/>
                <a href="#" onclick="return showHelpDialog('help_cfg_refreshDelay');">(?)</a>
                <div id="help_cfg_refreshDelay" style="display: none;" title="<fmt:message key="cfg_refreshDelay.label"/>">
                    <p><fmt:message key="cfg_refreshDelay.uitleg"/></p>
                </div>
            </td>
            <td><html:text property="cfg_refreshDelay" size="10"/></td>
        </tr>
        </table>
        </div>
        </fieldset>
    </div>

    <div class="fieldset_block">
        <fieldset class="fieldset1">
        <legend class="fieldLegend">Object informatie</legend>
        
        <div class="content_body">
        <table>
        <tr>
            <td><fmt:message key="cfg_objectInfo.label"/></td>
            <td>
                <html:select property="cfg_objectInfo">
                    <html:option value="geen"><fmt:message key="cfg_objectInfo.geen"/></html:option>
                    <html:option value="paneel"><fmt:message key="cfg_objectInfo.paneel"/></html:option>
                    <html:option value="popup"><fmt:message key="cfg_objectInfo.popup"/></html:option>
                </html:select>
            </td>
        </tr>
        
        <tr>
            <td>
                <fmt:message key="cfg_tolerance.label"/>
                <a href="#" onclick="return showHelpDialog('help_cfg_tolerance');">(?)</a>
                <div id="help_cfg_tolerance" style="display: none;" title="<fmt:message key="cfg_tolerance.label"/>">
                    <p><fmt:message key="cfg_tolerance.uitleg"/></p>
                </div>
            </td>
            <td><html:text property="cfg_tolerance" size="5"/></td>
        </tr>
        <tr>
            <td>
                <fmt:message key="cfg_autoRedirect.label"/>
                <a href="#" onclick="return showHelpDialog('help_cfg_autoRedirect');">(?)</a>
                <div id="help_cfg_autoRedirect" style="display: none;" title="<fmt:message key="cfg_autoRedirect.label"/>">
                    <p><fmt:message key="cfg_autoRedirect.uitleg"/></p>
                </div>
            </td>
            <td><html:text property="cfg_autoRedirect" size="5"/></td>
        </tr>
        </table>
        </div>
        </fieldset>
    </div>

    <div class="fieldset_block">
        <fieldset class="fieldset1">
        <legend class="fieldLegend">Zoeker</legend>

        <div class="content_body">
        <table>
        <tr>
            <td>
                <fmt:message key="cfg_zoekConfigIds.label"/>
                <a href="#" onclick="return showHelpDialog('help_cfg_zoekConfigIds');">(?)</a>
                <div id="help_cfg_zoekConfigIds" style="display: none;" title="<fmt:message key="cfg_zoekConfigIds.label"/>">
                    <p><fmt:message key="cfg_zoekConfigIds.uitleg"/></p>
                </div>
            </td>
            <td><html:text property="cfg_zoekConfigIds" size="30"/></td>
        </tr>
        <tr>
            <td>
                <fmt:message key="cfg_minBboxZoeken.label"/>
                <a href="#" onclick="return showHelpDialog('help_cfg_minBboxZoeken');">(?)</a>
                <div id="help_cfg_minBboxZoeken" style="display: none;" title="<fmt:message key="cfg_minBboxZoeken.label"/>">
                    <p><fmt:message key="cfg_minBboxZoeken.uitleg"/></p>
                </div>
            </td>
            <td><html:text property="cfg_minBboxZoeken" size="10"/></td>
        </tr>
        <tr>
            <td>
                <fmt:message key="cfg_maxResults.label"/>
                <a href="#" onclick="return showHelpDialog('help_cfg_maxResults');">(?)</a>
                <div id="help_cfg_maxResults" style="display: none;" title="<fmt:message key="cfg_maxResults.label"/>">
                    <p><fmt:message key="cfg_maxResults.uitleg"/></p>
                </div>
            </td>
            <td><html:text property="cfg_maxResults" size="5"/></td>
        </tr>
        </table>
        </div>
        </fieldset>
    </div>
    
    <div class="clearBoth">
    <html:submit property="save" accesskey="s" styleClass="knop" onclick="return confirm('Weet u zeker dat u dit wilt opslaan?');">
        Opslaan
    </html:submit>
    </div>
</html:form>