<%@include file="/WEB-INF/jsp/taglibs.jsp" %>

<div id="content_style">

    <!-- Loop door tekstblokken heen -->
    <c:forEach var="tb" varStatus="status" items="${tekstBlokken}">
        <div class="content_block">
            <div class="content_title"><c:out value="${tb.titel}"/></div>

            <!-- Indien toonUrl aangevinkt is dan inhoud van url in iFrame tonen -->
            <c:if test="${tb.toonUrl}">
                <iframe class="iframe_tekstblok" id="iframe_${tb.titel}" name="iframe_${tb.titel}" frameborder="0" src="${tb.url}"></iframe>
            </c:if>

            <!-- Anders gewoon de tekst tonen van tekstblok -->
            <c:if test="${!tb.toonUrl}">
            <div class="inleiding_body">
                ${tb.tekst}

                <c:if test="${!empty tb.url}">
                Meer informatie: <a href="${tb.url}" target="_new">${tb.url}</a>
                </c:if>

                <c:if test="${tb.toonUrl}">
                    <iframe id="iframe_${tb.titel}" name="iframe_${tb.titel}" frameborder="0" src="${tb.url}"></iframe>
                </c:if>
            </div>
            </c:if>
        </div>
    </c:forEach>

    <!-- Gewone help pagina tonen als er geen tekstblokken zijn -->
    <c:if test="${empty tekstBlokken}">
        <div class="content_block">
            <div class="content_title">B3P Gisviewer configuratie Help</div>
            
            <div class="inleiding_body">
                <p>
                Via de gisviewerconfig webapplicatie kunt u bepalen hoe de
                kaartlagen getoond worden aan de gisviewer gebruiker. Deze gebruiker
                ziet alleen de kaarten waar hij/zij rechten op heeft gekregen via
                kaartenbalie.
                <p/>
                
                <table>
                    <tr>
                        <td><img style="border: 0;" src="images/pdf.png" border="0" alt="PDF icon" title="PDF icon"></td>
                        <td><a href="http://source.b3partners.nl/docs/Concept_beheerderhandleiding_GIS_Suite_30.pdf" target="_blank">Bekijk de B3P GIS Suite beheerhandleiding</a></td>
                    </tr>
                </table>
                
            </div>
        </div>
    </c:if>
</div>