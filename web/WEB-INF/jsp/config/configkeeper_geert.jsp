<%--
Copyright 2007-2011 B3Partners BV.

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

<script type="text/javascript" src="<html:rewrite page="/scripts/config-tab.js"/>"></script>

<div class="infobalk">
    <div class="infobalk_description"><fmt:message key="configkeeper.infobalk"/></div>
    <div class="infobalk_actions"><tiles:insert name="loginblock"/></div>
</div>

<div class="berichtenbalk" style="margin-top: 5px;">
    <tiles:insert definition="actionMessages"/>
</div>

<span class="rolnaamHeader">Rolinstellingen voor ${header_Rolnaam}</span>

<html:form action="/configKeeper">
    <html:hidden property="action" />
    <html:hidden property="alt_action" />
    <html:hidden property="rolnaam" />

    <html:hidden property="cfg_multipleActiveThemas" />
    <html:hidden property="cfg_autoRedirect" />

    <div style="float: left; clear: both; width: 920px; margin-left: 15px; margin-bottom: 5px; margin-top: 25px;">
        <div style="float: left; margin-left: 155px;">
            <input type="checkbox" id="advancedToggle" /> Toon geavanceerde opties
        </div>
        <div style="float: right;">
            <html:submit property="save" accesskey="s" styleClass="knop" onclick="return confirm('Weet u zeker dat u dit wilt opslaan?');">
                Opslaan
            </html:submit>
            &nbsp;
            <html:submit property="resetRolInstellingen" styleClass="knop" accesskey="r" onclick="return confirm('Weet u zeker dat u de rolinstellingen wilt herstellen naar de standaard waarden?');">
                Herstel naar standaard rolinstellingen
            </html:submit>
        </div>
    </div>

    <div class="tablabels">
        <div class="tablabel" id="label_kaartlagen">
            Kaartlagen
        </div>
        <div class="tablabel" id="label_layout">
            Layout
        </div>
        <div class="tablabel" id="label_tools">
            Tools
        </div>
        <div class="tablabel" id="label_tabbladen">
            Tabbladen
        </div>
        <div class="tablabel sublabel" id="label_zoeken">
            Zoeken
        </div>
        <div class="tablabel sublabel" id="label_planselectie">
            Planselectie
        </div>
        <div class="tablabel sublabel" id="label_vergunning">
            Vergunning
        </div>
        <div class="tablabel sublabel" id="label_voorziening">
            Voorziening
        </div>
        <div class="tablabel sublabel" id="label_melding">
            Melding
        </div>
        <div class="tablabel sublabel" id="label_redlining">
            Redlining
        </div>
    </div>
    <div class="tabcontents">
        <div class="tabcontent content_kaartlagen">

            <div class="configbasic">
                <div class="configrow">
                    <label><fmt:message key="cfg_useCookies.label"/></label>
                    <html:checkbox property="cfg_useCookies"/>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_useCookies">(?)</a>
                    <div id="help_cfg_useCookies" style="display: none;" title="<fmt:message key="cfg_useCookies.label"/>">
                        <fmt:message key="cfg_useCookies.uitleg"/>
                    </div>
                </div>

                <div class="configrow">
                    <label><fmt:message key="cfg_expandAll.label"/></label>
                    <html:checkbox property="cfg_expandAll"/>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_expandAll">(?)</a>
                    <div id="help_cfg_expandAll" style="display: none;" title="<fmt:message key="cfg_expandAll.label"/>">
                        <fmt:message key="cfg_expandAll.uitleg"/>
                    </div>
                </div>
            </div>

            <div class="configadvanced">
                <div class="configrow">
                    <label><fmt:message key="cfg_refreshDelay.label"/></label>
                    <html:text property="cfg_refreshDelay" size="10"/>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_refreshDelay">(?)</a>
                    <div id="help_cfg_refreshDelay" style="display: none;" title="<fmt:message key="cfg_refreshDelay.label"/>">
                        <fmt:message key="cfg_refreshDelay.uitleg"/>
                    </div>
                </div>

                <div class="configrow">
                    <label><fmt:message key="cfg_useInheritCheckbox.label"/></label>
                    <html:checkbox property="cfg_useInheritCheckbox"/>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_useInheritCheckbox">(?)</a>
                    <div id="help_cfg_useInheritCheckbox" style="display: none;" title="<fmt:message key="cfg_useInheritCheckbox.label"/>">
                        <fmt:message key="cfg_useInheritCheckbox.uitleg"/>
                    </div>
                </div>

                <div class="configrow">
                    <label><fmt:message key="cfg_showLegendInTree.label"/></label>
                    <html:checkbox property="cfg_showLegendInTree"/>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_showLegendInTree">(?)</a>
                    <div id="help_cfg_showLegendInTree" style="display: none;" title="<fmt:message key="cfg_showLegendInTree.label"/>">
                        <fmt:message key="cfg_showLegendInTree.uitleg"/>
                    </div>
                </div>

                <div class="configrow">
                    <label><fmt:message key="cfg_minBboxZoeken.label"/></label>
                    <html:text property="cfg_minBboxZoeken" size="10"/>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_minBboxZoeken">(?)</a>
                    <div id="help_cfg_minBboxZoeken" style="display: none;" title="<fmt:message key="cfg_minBboxZoeken.label"/>">
                        <fmt:message key="cfg_minBboxZoeken.uitleg"/>
                    </div>
                </div>

                <div class="configrow">
                    <label><fmt:message key="cfg_maxResults.label"/></label>
                    <html:text property="cfg_maxResults" size="5"/>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_maxResults">(?)</a>
                    <div id="help_cfg_maxResults" style="display: none;" title="<fmt:message key="cfg_maxResults.label"/>">
                        <fmt:message key="cfg_maxResults.uitleg"/>
                    </div>
                </div>

                <div class="configrow">
                    <label><fmt:message key="cfg_layerGrouping.label"/></label>
                    <html:select property="cfg_layerGrouping">
                        <html:option value="lg_forebackground"><fmt:message key="cfg_layerGrouping.forebackground"/></html:option>
                        <html:option value="lg_layer"><fmt:message key="cfg_layerGrouping.layer"/></html:option>
                        <html:option value="lg_cluster"><fmt:message key="cfg_layerGrouping.cluster"/></html:option>
                        <html:option value="lg_all"><fmt:message key="cfg_layerGrouping.all"/></html:option>
                    </html:select>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_layerGrouping">(?)</a>
                    <div id="help_cfg_layerGrouping" style="display: none;" title="<fmt:message key="cfg_layerGrouping.label"/>">
                        <fmt:message key="cfg_layerGrouping.uitleg"/>
                    </div>
                </div>

                <div class="configrow">
                    <label><fmt:message key="cfg_treeOrder.label"/></label>
                    <html:select property="cfg_treeOrder">
                        <html:option value="volgorde"><fmt:message key="cfg_treeOrder.volgorde"/></html:option>
                        <html:option value="alphabet"><fmt:message key="cfg_treeOrder.alphabet"/></html:option>
                    </html:select>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_treeOrder">(?)</a>
                    <div id="help_cfg_treeOrder" style="display: none;" title="<fmt:message key="cfg_treeOrder.label"/>">
                        <fmt:message key="cfg_treeOrder.uitleg"/>
                    </div>
                </div>
            </div>

        </div>

        <div class="tabcontent content_layout">

            <div class="configbasic">
                <div class="configrow">
                    <label><fmt:message key="cfg_viewerType.label"/></label>
                    <html:select property="cfg_viewerType">
                        <html:option value="flamingo"><fmt:message key="cfg_viewerType.1"/></html:option>
                        <html:option value="openlayers"><fmt:message key="cfg_viewerType.2"/></html:option>
                    </html:select>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_viewerType">(?)</a>
                    <div id="help_cfg_viewerType" style="display: none;" title="<fmt:message key="cfg_viewerType.label"/>">
                        <fmt:message key="cfg_viewerType.uitleg"/>
                    </div>
                </div>

                <div class="configrow">
                    <label><fmt:message key="cfg_viewerTemplate.label"/></label>
                    <html:select property="cfg_viewerTemplate">
                        <html:option value="standalone"><fmt:message key="cfg_viewerTemplate.1"/></html:option>
                        <html:option value="embedded"><fmt:message key="cfg_viewerTemplate.2"/></html:option>
                    </html:select>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_viewerTemplate">(?)</a>
                    <div id="help_cfg_viewerTemplate" style="display: none;" title="<fmt:message key="cfg_viewerTemplate.label"/>">
                        <fmt:message key="cfg_viewerTemplate.uitleg"/>
                    </div>
                </div>

                <div class="configrow">
                    <label><fmt:message key="cfg_layoutAdminData.label"/></label>
                    <html:select property="cfg_layoutAdminData">
                        <html:option value="admindata1"><fmt:message key="cfg_layoutAdminData.1"/></html:option>
                        <html:option value="admindata2"><fmt:message key="cfg_layoutAdminData.2"/></html:option>
                        <html:option value="admindata3"><fmt:message key="cfg_layoutAdminData.3"/></html:option>
                        <html:option value="all_vertical_tab1"><fmt:message key="cfg_layoutAdminData.all_vertical_tab1"/></html:option>
                        <html:option value="all_vertical_tab2"><fmt:message key="cfg_layoutAdminData.all_vertical_tab2"/></html:option>
                        <html:option value="all_vertical_tab3"><fmt:message key="cfg_layoutAdminData.all_vertical_tab3"/></html:option>
                        <html:option value="all_vertical_tab4"><fmt:message key="cfg_layoutAdminData.all_vertical_tab4"/></html:option>
                        <html:option value="all_vertical_tab5"><fmt:message key="cfg_layoutAdminData.all_vertical_tab5"/></html:option>                   
                    </html:select>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_layoutAdminData">(?)</a>
                    <div id="help_cfg_layoutAdminData" style="display: none;" title="<fmt:message key="cfg_layoutAdminData.label"/>">
                        <fmt:message key="cfg_layoutAdminData.uitleg"/>
                    </div>
                </div>
            </div>

            <div class="configadvanced">
                <div class="configrow">
                    <label><fmt:message key="cfg_defaultdataframehoogte.label"/></label>
                    <html:text property="cfg_defaultdataframehoogte" size="5"/>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_defaultdataframehoogte">(?)</a>
                    <div id="help_cfg_defaultdataframehoogte" style="display: none;" title="<fmt:message key="cfg_defaultdataframehoogte.label"/>">
                        <fmt:message key="cfg_defaultdataframehoogte.uitleg"/>
                    </div>
                </div>



                <div class="configrow">
                    <label><fmt:message key="cfg_popupWidth.label"/></label>
                    <html:text property="cfg_popupWidth" size="5"/>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_popupWidth">(?)</a>
                    <div id="help_cfg_popupWidth" style="display: none;" title="<fmt:message key="cfg_popupWidth.label"/>">
                        <fmt:message key="cfg_popupWidth.uitleg"/>
                    </div>
                </div>



                <div class="configrow">
                    <label><fmt:message key="cfg_popupHeight.label"/></label>
                    <html:text property="cfg_popupHeight" size="5"/>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_popupHeight">(?)</a>
                    <div id="help_cfg_popupHeight" style="display: none;" title="<fmt:message key="cfg_popupHeight.label"/>">
                        <fmt:message key="cfg_popupHeight.uitleg"/>
                    </div>
                </div>



                <div class="configrow">
                    <label><fmt:message key="cfg_popupLeft.label"/></label>
                    <html:text property="cfg_popupLeft" size="5"/>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_popupLeft">(?)</a>
                    <div id="help_cfg_popupLeft" style="display: none;" title="<fmt:message key="cfg_popupLeft.label"/>">
                        <fmt:message key="cfg_popupLeft.uitleg"/>
                    </div>
                </div>


                <div class="configrow">
                    <label><fmt:message key="cfg_popupTop.label"/></label>
                    <html:text property="cfg_popupTop" size="5"/>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_popupTop">(?)</a>
                    <div id="help_cfg_popupTop" style="display: none;" title="<fmt:message key="cfg_popupTop.label"/>">
                        <fmt:message key="cfg_popupTop.uitleg"/>
                    </div>
                </div>
            </div>

        </div>
        <div class="tabcontent content_tools">
            <div class="configbasic">
                <div class="configrow">
                    <label><fmt:message key="cfg_objectInfo.label"/></label>
                    <html:select property="cfg_objectInfoType">
                        <html:option value="geen"><fmt:message key="cfg_objectInfo.geen"/></html:option>
                        <html:option value="paneel"><fmt:message key="cfg_objectInfo.paneel"/></html:option>
                        <html:option value="popup"><fmt:message key="cfg_objectInfo.popup"/></html:option>
                        <html:option value="balloon"><fmt:message key="cfg_objectInfo.balloon"/></html:option>
                    </html:select>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_objectInfo">(?)</a>
                    <div id="help_cfg_objectInfo" style="display: none;" title="<fmt:message key="cfg_objectInfo.label"/>">
                        <fmt:message key="cfg_objectInfo.uitleg"/>
                    </div>
                </div>

                <div class="configrow">
                    <label><fmt:message key="cfg_tolerance.label"/></label>
                    <html:text property="cfg_tolerance" size="5"/>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_tolerance">(?)</a>
                    <div id="help_cfg_tolerance" style="display: none;" title="<fmt:message key="cfg_tolerance.label"/>">
                        <fmt:message key="cfg_tolerance.uitleg"/>
                    </div>
                </div>
            </div>
            <div class="configadvanced">
                <div class="configrow">
                    <label><fmt:message key="cfg_showRedliningTools.label"/></label>
                    <html:checkbox property="cfg_showRedliningTools"/>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_showRedliningTools">(?)</a>
                    <div id="help_cfg_showRedliningTools" style="display: none;" title="<fmt:message key="cfg_showRedliningTools.label"/>">
                        <fmt:message key="cfg_showRedliningTools.uitleg"/>
                    </div>
                </div>
                <div class="configrow">
                    <label><fmt:message key="cfg_showBufferTool.label"/></label>
                    <html:checkbox property="cfg_showBufferTool"/>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_showBufferTool">(?)</a>
                    <div id="help_cfg_showBufferTool" style="display: none;" title="<fmt:message key="cfg_showBufferTool.label"/>">
                        <fmt:message key="cfg_showBufferTool.uitleg"/>
                    </div>
                </div>
                <div class="configrow">
                    <label><fmt:message key="cfg_showSelectBulkTool.label"/></label>
                    <html:checkbox property="cfg_showSelectBulkTool"/>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_showSelectBulkTool">(?)</a>
                    <div id="help_cfg_showSelectBulkTool" style="display: none;" title="<fmt:message key="cfg_showSelectBulkTool.label"/>">
                        <fmt:message key="cfg_showSelectBulkTool.uitleg"/>
                    </div>
                </div>
                <div class="configrow">
                    <label><fmt:message key="cfg_showNeedleTool.label"/></label>
                    <html:checkbox property="cfg_showNeedleTool"/>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_showNeedleTool">(?)</a>
                    <div id="help_cfg_showNeedleTool" style="display: none;" title="<fmt:message key="cfg_showNeedleTool.label"/>">
                        <fmt:message key="cfg_showNeedleTool.uitleg"/>
                    </div>
                </div>
                <div class="configrow">
                    <label><fmt:message key="cfg_showPrintTool.label"/></label>
                    <html:checkbox property="cfg_showPrintTool"/>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_showPrintTool">(?)</a>
                    <div id="help_cfg_showPrintTool" style="display: none;" title="<fmt:message key="cfg_showPrintTool.label"/>">
                        <fmt:message key="cfg_showPrintTool.uitleg"/>
                    </div>
                </div>
            </div>

        </div>
        <div class="tabcontent content_tabbladen">

            <div class="configbasic">


                <div class="configrow">
                    <label><fmt:message key="cfg_useMouseOverTabs.label"/></label>
                    <html:checkbox property="cfg_useMouseOverTabs"/>
                    <a class="helpLink "href="#" id="helpLink_help_cfg_useMouseOverTabs">(?)</a>
                    <div id="help_cfg_useMouseOverTabs" style="display: none;" title="<fmt:message key="cfg_useMouseOverTabs.label"/>">
                        <fmt:message key="cfg_useMouseOverTabs.uitleg"/>
                    </div>
                </div>

                <div class="configrow">
                    <label><fmt:message key="cfg_tabWidth.label"/></label>
                    <html:text property="cfg_tabWidth" size="5"/>
                    <a class="helpLink" href="#" id="helpLink_help_cfg_tabWidth">(?)</a>
                    <div id="help_cfg_tabWidth" style="display: none;" title="<fmt:message key="cfg_tabWidth.label"/>">
                        <fmt:message key="cfg_tabWidth.uitleg"/>
                    </div>
                </div>
                <div class="configrow" style="margin-top: 5px; margin-bottom: 5px;">
                    <fmt:message key="config.tabbladen.label"/>
                </div>

                <div class="configrow">
                    <label>Tab 1</label>
                    <html:select property="cfg_tab1">
                        <c:forEach items="${tabLabels}" var="item" varStatus="status">
                            <html:option value="${tabValues[status.count-1]}">${item}</html:option>
                        </c:forEach>
                    </html:select>

                </div>
                <div class="configrow">
                    <label>Tab 2</label>
                    <html:select property="cfg_tab2">
                        <c:forEach items="${tabLabels}" var="item" varStatus="status">
                            <html:option value="${tabValues[status.count-1]}">${item}</html:option>
                        </c:forEach>
                    </html:select>

                </div>
                <div class="configrow">
                    <label>Tab 3</label>
                    <html:select property="cfg_tab3">
                        <c:forEach items="${tabLabels}" var="item" varStatus="status">
                            <html:option value="${tabValues[status.count-1]}">${item}</html:option>
                        </c:forEach>
                    </html:select>

                </div>
                <div class="configrow">
                    <label>Tab 4</label>
                    <html:select property="cfg_tab4">
                        <c:forEach items="${tabLabels}" var="item" varStatus="status">
                            <html:option value="${tabValues[status.count-1]}">${item}</html:option>
                        </c:forEach>
                    </html:select>

                </div>
                <div class="configrow">
                    <label>Tab 5</label>
                    <html:select property="cfg_tab5">
                        <c:forEach items="${tabLabels}" var="item" varStatus="status">
                            <html:option value="${tabValues[status.count-1]}">${item}</html:option>
                        </c:forEach>
                    </html:select>

                </div>
            </div>
        </div>
        <div class="tabcontent content_zoeken">

            <div class="configbasic">

                <div class="configrow" style="margin-bottom: 15px;">
                    <fmt:message key="tab-zoeken-content.header"/>
                </div>

                <div class="configrow">
                    <label><fmt:message key="cfg_zoekenid1.label"/></label>

                    <html:select property="cfg_zoekenid1">
                        <html:option value="leeg">-Kies een zoekingang-</html:option>
                        <c:forEach items="${zoekConfigs}" var="item">
                            <html:option value="${item.id}">${item.naam}</html:option>
                        </c:forEach>
                    </html:select>

                </div>
                <div class="configrow">
                    <label><fmt:message key="cfg_zoekenid2.label"/></label>

                    <html:select property="cfg_zoekenid2">
                        <html:option value="leeg">-Kies een zoekingang-</html:option>
                        <c:forEach items="${zoekConfigs}" var="item">
                            <html:option value="${item.id}">${item.naam}</html:option>
                        </c:forEach>
                    </html:select>

                </div>
                <div class="configrow">
                    <label><fmt:message key="cfg_zoekenid3.label"/></label>

                    <html:select property="cfg_zoekenid3">
                        <html:option value="leeg">-Kies een zoekingang-</html:option>
                        <c:forEach items="${zoekConfigs}" var="item">
                            <html:option value="${item.id}">${item.naam}</html:option>
                        </c:forEach>
                    </html:select>

                </div>
                <div class="configrow">
                    <label><fmt:message key="cfg_zoekenid4.label"/></label>

                    <html:select property="cfg_zoekenid4">
                        <html:option value="leeg">-Kies een zoekingang-</html:option>
                        <c:forEach items="${zoekConfigs}" var="item">
                            <html:option value="${item.id}">${item.naam}</html:option>
                        </c:forEach>
                    </html:select>

                </div>
            </div>
        </div> <!-- Einde zoeken tabje -->

        <div class="tabcontent content_planselectie">

            <div class="configbasic">
                <div class="configrow" style="margin-bottom: 15px;">
                    <fmt:message key="tab-planselectie-content.header"/>
                </div>

                <div class="configrow">
                    <label><fmt:message key="cfg_planselectieid1.label"/></label>
                    <html:select property="cfg_planselectieid1">
                        <html:option value="leeg">-Kies een zoekingang-</html:option>
                        <c:forEach items="${zoekConfigs}" var="item">
                            <html:option value="${item.id}">${item.naam}</html:option>
                        </c:forEach>
                    </html:select>
                </div>
                <div class="configrow">  
                    <label><fmt:message key="cfg_planselectieid2.label"/></label>
                    <html:select property="cfg_planselectieid2">
                        <html:option value="leeg">-Kies een zoekingang-</html:option>
                        <c:forEach items="${zoekConfigs}" var="item">
                            <html:option value="${item.id}">${item.naam}</html:option>
                        </c:forEach>
                    </html:select>
                </div>
            </div>
        </div>

        <div class="tabcontent content_vergunning">
            <div class="configbasic"></div>
                <div class="configrow">
                    <td><fmt:message key="cfg_vergunningid1.label"/></td>
                    <td>
                        <html:select property="cfg_vergunningid1">
                            <html:option value="leeg">-Kies een zoekingang-</html:option>
                            <c:forEach items="${zoekConfigs}" var="item">
                                <html:option value="${item.id}">${item.naam}</html:option>
                            </c:forEach>
                        </html:select>
                    </td>
                </div>
                <div class="configrow">
                    <td><fmt:message key="cfg_vergunningid2.label"/></td>
                    <td>
                        <html:select property="cfg_vergunningid2">
                            <html:option value="leeg">-Kies een zoekingang-</html:option>
                            <c:forEach items="${zoekConfigs}" var="item">
                                <html:option value="${item.id}">${item.naam}</html:option>
                            </c:forEach>
                        </html:select>
                    </td>
                </div>
                <div class="configrow">
                    <td><fmt:message key="cfg_vergunningid3.label"/></td>
                    <td>
                        <html:select property="cfg_vergunningid3">
                            <html:option value="leeg">-Kies een zoekingang-</html:option>
                            <c:forEach items="${zoekConfigs}" var="item">
                                <html:option value="${item.id}">${item.naam}</html:option>
                            </c:forEach>
                        </html:select>
                    </td>
                </div>
                <div class="configrow">
                    <td><fmt:message key="cfg_vergunningid4.label"/></td>
                    <td>
                        <html:select property="cfg_vergunningid4">
                            <html:option value="leeg">-Kies een zoekingang-</html:option>
                            <c:forEach items="${zoekConfigs}" var="item">
                                <html:option value="${item.id}">${item.naam}</html:option>
                            </c:forEach>
                        </html:select>
                    </td>
                </div>
                <div class="configrow">
                    <td><fmt:message key="cfg_vergunningid5.label"/></td>
                    <td>
                        <html:select property="cfg_vergunningid5">
                            <html:option value="leeg">-Kies een zoekingang-</html:option>
                            <c:forEach items="${zoekConfigs}" var="item">
                                <html:option value="${item.id}">${item.naam}</html:option>
                            </c:forEach>
                        </html:select>
                    </td>
                </div>
                <div class="configrow">
                    <td><fmt:message key="cfg_vergunningid6.label"/></td>
                    <td>
                        <html:select property="cfg_vergunningid6">
                            <html:option value="leeg">-Kies een zoekingang-</html:option>
                            <c:forEach items="${zoekConfigs}" var="item">
                                <html:option value="${item.id}">${item.naam}</html:option>
                            </c:forEach>
                        </html:select>
                    </td>
                </div>

                <div class="configrow">
                    <td><fmt:message key="cfg_vergunningstraal.label"/></td>
                    <td><html:text property="cfg_vergunningstraal"/></td>
                </div>
                <div class="configrow">
                    <td><fmt:message key="cfg_straal.label"/></td>
                </div>
                        
        </div>

        <div class="tabcontent content_voorziening">
            <table border="0" cellspacing="10">
                <tr>
                    <td valign="top">
                        <table cellpadding="2" cellspacing="2" border="0">
                            <tr>
                                <td><fmt:message key="cfg_voorzieningid1.label"/></td>
                                <td>
                                    <html:select property="cfg_voorzieningid1">
                                        <html:option value="leeg">-Kies een zoekingang-</html:option>
                                        <c:forEach items="${zoekConfigs}" var="item">
                                            <html:option value="${item.id}">${item.naam}</html:option>
                                        </c:forEach>
                                    </html:select>
                                </td>
                            </tr>
                            <tr>
                                <td><fmt:message key="cfg_voorzieningid2.label"/></td>
                                <td>
                                    <html:select property="cfg_voorzieningid2">
                                        <html:option value="leeg">-Kies een zoekingang-</html:option>
                                        <c:forEach items="${zoekConfigs}" var="item">
                                            <html:option value="${item.id}">${item.naam}</html:option>
                                        </c:forEach>
                                    </html:select>
                                </td>
                            </tr>
                            <tr>
                                <td><fmt:message key="cfg_voorzieningid3.label"/></td>
                                <td>
                                    <html:select property="cfg_voorzieningid3">
                                        <html:option value="leeg">-Kies een zoekingang-</html:option>
                                        <c:forEach items="${zoekConfigs}" var="item">
                                            <html:option value="${item.id}">${item.naam}</html:option>
                                        </c:forEach>
                                    </html:select>
                                </td>
                            </tr>
                            <tr>
                                <td><fmt:message key="cfg_voorzieningstraal.label"/></td>
                                <td><html:text property="cfg_voorzieningstraal"/></td>
                            </tr>
                            <tr>
                                <td colspan="2"><fmt:message key="cfg_straal.label"/></td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <table cellpadding="2" cellspacing="2" border="0">
                            <tr>
                                <td><fmt:message key="cfg_voorzieningtype1.label"/></td>
                                <td>
                                    <html:select property="cfg_voorzieningtype1">
                                        <html:option value="leeg">-Kies een zoekingang-</html:option>
                                        <c:forEach items="${zoekConfigs}" var="item">
                                            <html:option value="${item.id}">${item.naam}</html:option>
                                        </c:forEach>
                                    </html:select>
                                </td>
                            </tr>
                            <tr>
                                <td><fmt:message key="cfg_voorzieningtype2.label"/></td>
                                <td>
                                    <html:select property="cfg_voorzieningtype2">
                                        <html:option value="leeg">-Kies een zoekingang-</html:option>
                                        <c:forEach items="${zoekConfigs}" var="item">
                                            <html:option value="${item.id}">${item.naam}</html:option>
                                        </c:forEach>
                                    </html:select>
                                </td>
                            </tr>
                            <tr>
                                <td><fmt:message key="cfg_voorzieningtype3.label"/></td>
                                <td>
                                    <html:select property="cfg_voorzieningtype3">
                                        <html:option value="leeg">-Kies een zoekingang-</html:option>
                                        <c:forEach items="${zoekConfigs}" var="item">
                                            <html:option value="${item.id}">${item.naam}</html:option>
                                        </c:forEach>
                                    </html:select>
                                </td>
                            </tr>
                            <tr>
                                <td><fmt:message key="cfg_voorzieningtype4.label"/></td>
                                <td>
                                    <html:select property="cfg_voorzieningtype4">
                                        <html:option value="leeg">-Kies een zoekingang-</html:option>
                                        <c:forEach items="${zoekConfigs}" var="item">
                                            <html:option value="${item.id}">${item.naam}</html:option>
                                        </c:forEach>
                                    </html:select>
                                </td>
                            </tr>
                            <tr>
                                <td><fmt:message key="cfg_voorzieningtype5.label"/></td>
                                <td>
                                    <html:select property="cfg_voorzieningtype5">
                                        <html:option value="leeg">-Kies een zoekingang-</html:option>
                                        <c:forEach items="${zoekConfigs}" var="item">
                                            <html:option value="${item.id}">${item.naam}</html:option>
                                        </c:forEach>
                                    </html:select>
                                </td>
                            </tr>
                            <tr>
                                <td><fmt:message key="cfg_voorzieningtype6.label"/></td>
                                <td>
                                    <html:select property="cfg_voorzieningtype6">
                                        <html:option value="leeg">-Kies een zoekingang-</html:option>
                                        <c:forEach items="${zoekConfigs}" var="item">
                                            <html:option value="${item.id}">${item.naam}</html:option>
                                        </c:forEach>
                                    </html:select>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

        </div>

        <div class="tabcontent content_melding">
            <table border="0" cellspacing="10">
                <tr>
                    <td valign="top">
                        <table cellpadding="2" cellspacing="2" border="0">
                            <tr>
                                <td><fmt:message key="cfg_meldingwelkomtekst.label"/></td>
                                <td><html:text property="cfg_meldingwelkomtekst"/></td>
                            </tr>
                            <tr>
                                <td><fmt:message key="cfg_meldingprefix.label"/></td>
                                <td><html:text property="cfg_meldingprefix"/></td>
                            </tr>
                            <tr>
                                <td><fmt:message key="cfg_meldingtype.label"/></td>
                                <td><html:text property="cfg_meldingtype"/></td>
                            </tr>
                            <tr>
                                <td><fmt:message key="cfg_meldingstatus.label"/></td>
                                <td><html:text property="cfg_meldingstatus"/></td>
                            </tr>
                            <tr>
                                <td><fmt:message key="cfg_meldingemailmelder.label"/></td>
                                <td><html:checkbox property="cfg_meldingemailmelder"/></td>
                            </tr>
                            <tr>
                                <td><fmt:message key="cfg_meldinglayoutemailmelder.label"/></td>
                                <td><html:text property="cfg_meldinglayoutemailmelder"/></td>
                            </tr>
                        </table>
                    </td>
                    <td valign="top">
                        <table cellpadding="2" cellspacing="2" border="0">
                            <tr>
                                <td><fmt:message key="cfg_meldingnaam.label"/></td>
                                <td><html:text property="cfg_meldingnaam"/></td>
                            </tr>
                            <tr>
                                <td><fmt:message key="cfg_meldingemail.label"/></td>
                                <td><html:text property="cfg_meldingemail"/></td>
                            </tr>
                            <tr>
                                <td><fmt:message key="cfg_meldingemailbehandelaar.label"/></td>
                                <td><html:checkbox property="cfg_meldingemailbehandelaar"/></td>
                            </tr>
                            <tr>
                                <td><fmt:message key="cfg_meldinglayoutemailbehandelaar.label"/></td>
                                <td><html:text property="cfg_meldinglayoutemailbehandelaar"/></td>
                            </tr>
                            <tr>
                                <td><fmt:message key="cfg_meldinggegevensbron.label"/></td>
                                <td>
                                    <html:select property="cfg_meldinggegevensbron">
                                        <html:option value="0">-Kies een gegevensbron-</html:option>
                                        <c:forEach items="${meldingGegevensbronnen}" var="item">
                                            <html:option value="${item.id}">${item.naam}</html:option>
                                        </c:forEach>
                                    </html:select>
                                </td>
                            </tr>
                            <tr>
                                <td><fmt:message key="cfg_meldingobjectsoort.label"/></td>
                                <td><html:text property="cfg_meldingobjectsoort" value="Point"/></td>
                            </tr>
                            <tr>
                                <td><fmt:message key="cfg_meldingtekentoolicoon.label"/></td>
                                <td><html:text property="cfg_meldingtekentoolicoon"/></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>

        <div class="tabcontent content_redlining">
            <table border="0" cellspacing="10">
                <tr>
                    <td valign="top">
                        <table cellpadding="2" cellspacing="2" border="0">
                            <tr>
                                <td><fmt:message key="cfg_redliningkaartlaagid.label"/></td>
                                <td>
                                    <html:select property="cfg_redliningkaartlaagid">
                                        <html:option value="0">-Kies een kaartlaag-</html:option>
                                        <c:forEach items="${redliningKaartlagen}" var="item">
                                            <html:option value="${item.id}">${item.naam}</html:option>
                                        </c:forEach>
                                    </html:select>
                                </td>
                            </tr>

                            <tr>
                                <td><fmt:message key="cfg_meldinggegevensbron.label"/></td>
                                <td>
                                    <html:select property="cfg_redlininggegevensbron">
                                        <html:option value="0">-Kies een gegevensbron-</html:option>
                                        <c:forEach items="${meldingGegevensbronnen}" var="item">
                                            <html:option value="${item.id}">${item.naam}</html:option>
                                        </c:forEach>
                                    </html:select>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div class="clearBoth"></div>
</html:form>

<script type="text/javascript">
    var showAdvancedOptions = false;
    $j(".tabcontent").each(function (){
        var counter = 0;
        $j(this).find(".configrow").each(function() {
            var $this = $j(this);
            if(counter%2==1) $this.addClass("odd");
            counter++;

            $this.find(".helpLink").each(function (){
                var $helpContentDiv = $j("#" + $j(this).attr("id").replace("helpLink_", ""));
                var helpContent = $helpContentDiv.html();
                var helpTitle = $helpContentDiv.attr("title");
                $j(this).qtip({
                    content: {
                        text: helpContent,
                        title: {
                            text: helpTitle
                        }
                    },
                    show: 'mouseover',
                    hide: 'mouseout',
                    position: {
                        corner: {
                            target: 'rightMiddle',
                            tooltip: 'leftTop'
                        }
                    },
                    style: {
                        name: 'cream',
                        tip: 'leftTop',
                        color: 'black',
                        title: {
                            border: '0px none',
                            color: 'black'
                        }
                    },
                    show: {
                        delay: 25
                    }
                })
            });
        });
        $j(this).hide();
    });
    
    $j(".showAdvanced").click(function() {
        if(showAdvancedOptions)
        {
            showAdvancedOptions = false;
            $j(this).html("[+] geavanceerde opties");
        }
        else
        {
            showAdvancedOptions = true;
            $j(this).html("[-] geavanceerde opties");
        }
        showHideAdvanced();
        return false;
    })
    
    function showHideAdvanced() {
        if(!showAdvancedOptions)
        {
            $j(".configadvanced").hide();
        }
        else
        {
            $j(".configadvanced").show();
        }
    }
        
    $j(".tablabel").each(function() {
        $j(this).click(function() {
            labelClick($j(this));
        })
    })
        
    $j("#advancedToggle").click(function(){
        showAdvancedOptions = $j(this).is(':checked');
        showHideAdvanced();
    })
        
    var prevTab = null;
    function labelClick($lbl) {
        if(prevTab != null) prevTab.hide();
        prevTab = $j(".content_"+$lbl.attr("id").replace("label_", ""));
        prevTab.show();
        $j(".tablabel").removeClass("active");
        $lbl.addClass("active");
    }
    
    $j(".tabcontent").css("min-height", $j(".tablabels").outerHeight(true)+20);
    labelClick($j(".tablabel").first());
    showHideAdvanced();
</script>