<%@include file="/WEB-INF/jsp/taglibs.jsp" %>

<c:set var="requestURI" value="${fn:split(requestScope['javax.servlet.forward.request_uri'], '/')}" />
<c:set var="requestJSP" value="${requestURI[fn:length(requestURI) - 1]}" />
<div id="topmenu">
    <ul class="sf-menu">
        <c:set var="stijlklasse" value="menulink" />
        <c:if test="${requestJSP eq 'index.do' || requestJSP eq ''}">
            <c:set var="stijlklasse" value="activemenulink" />
        </c:if>
        <li><html:link page="/index.do" module="" styleClass="${stijlklasse}"><fmt:message key="commons.configmenu.home"/></html:link></li>

        <c:set var="stijlklasse" value="menulink" />
        <c:if test="${requestJSP eq 'configRolPrio.do'}">
            <c:set var="stijlklasse" value="activemenulink" />
        </c:if>
        <li><html:link page="/configRolPrio.do" module="" styleClass="${stijlklasse}"><fmt:message key="commons.configmenu.instellingen"/></html:link></li>

        <c:set var="stijlklasse" value="menulink" />
        <c:if test="${requestJSP eq 'configThema.do' || requestJSP eq 'configKaartGroep.do' || requestJSP eq 'configThemaData.do'}">
            <c:set var="stijlklasse" value="activemenulink" />
        </c:if>
        <li>
            <a href="#" class="${stijlklasse}">Kaarten</a>
            <ul>
                <li><html:link page="/configThema.do" module=""><fmt:message key="commons.configmenu.thema"/></html:link></li>
                <li><html:link page="/configKaartGroep.do" module=""><fmt:message key="commons.configmenu.cluster"/></html:link></li>
                <li><html:link page="/configThemaData.do" module=""><fmt:message key="commons.configmenu.themadata"/></html:link></li>
            </ul>
        </li>

        <c:set var="stijlklasse" value="menulink" />
        <c:if test="${requestJSP eq 'configConnectie.do' || requestJSP eq 'configGegevensbron.do'}">
            <c:set var="stijlklasse" value="activemenulink" />
        </c:if>
        <li>
            <a href="#" class="${stijlklasse}">Bronnen</a>
            <ul>
                <li><html:link page="/configConnectie.do" module=""><fmt:message key="commons.configmenu.connectie"/></html:link></li>
                <li><html:link page="/configGegevensbron.do" module=""><fmt:message key="commons.configmenu.gegevensbron"/></html:link></li>
            </ul>
        </li>

        <c:set var="stijlklasse" value="menulink" />
        <c:if test="${requestJSP eq 'configZoekConfiguratie.do'}">
            <c:set var="stijlklasse" value="activemenulink" />
        </c:if>
        <li>
            <a href="#" class="${stijlklasse}">Zoeken</a>
            <ul>
                <li><html:link page="/configZoekConfiguratie.do" module=""><fmt:message key="commons.configmenu.zoeker"/></html:link></li>
            </ul>
        </li>

        <c:set var="stijlklasse" value="menulink" />
        <c:if test="${requestJSP eq 'configCMS.do'}">
            <c:set var="stijlklasse" value="activemenulink" />
        </c:if>
        <li><html:link page="/configCMS.do" module="" styleClass="${stijlklasse}"><fmt:message key="commons.configmenu.cms"/></html:link></li>

        <c:set var="stijlklasse" value="menulink" />
        <c:if test="${requestJSP eq 'help.do'}">
            <c:set var="stijlklasse" value="activemenulink" />
        </c:if>
        <li><html:link target="_blank" page="/help.do" module="" styleClass="${stijlklasse}"><fmt:message key="commons.configmenu.help"/></html:link></li>
    </ul>
</div>

<script type="text/javascript">
$j(document).ready(function(){
    $j(".menulink, .activemenulink").css({
        'height': '18px',
        'padding-top': '8px'
    })

    $j("ul.sf-menu").superfish({
        dropShadows: false,
        speed: 'fast',
        animation: {opacity:'show',height:'show'}
    }).find('ul').bgIframe({opacity:false});

    if($j.browser.msie && ieVersion <= 7)
    {
        $j("ul.sf-menu").children('li').each(function() {
            if(ieVersion <= 6) {
                var linkWidth = $j(this).find("a").outerWidth();
                if($j(this).find("ul").length > 0) {
                    linkWidth += 1;
                    $j(this).find("a").width(linkWidth);
                }
                $j(this).width(linkWidth);
            } else {
                $j(this).width($j(this).find("a").outerWidth());
            }
        });
    }
}); 
</script>