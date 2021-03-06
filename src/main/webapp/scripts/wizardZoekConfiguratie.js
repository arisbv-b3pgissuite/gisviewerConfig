/*
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
*/

dwr.engine.setErrorHandler(errorHandler);
function errorHandler(exception){
    alert(exception);
}

function removeZoekAttribuut(id){
    if(confirm('Weet u zeker dat u dit zoek attribuut wilt verwijderen?')){
        JZoekConfiguratieUtil.removeZoekAttribuut(id,handleRemove);
    }
}
function removeResultaatAttribuut (id){
    if (confirm("Weet u zeker dat u dit resultaatveld wilt verwijderen?")){
        JZoekConfiguratieUtil.removeResultaatAttribuut(id,handleRemove);
    }
}
function handleRemove(){
    refreshPage();
}
/*Reload de pagina als er een stepElement aanwezig is.(met als naam de naam van de step)*/
function refreshPage(){    
    if (document.getElementById("stepElement")){
        document.getElementById("stepElement").value="submit";
        document.forms[0].submit();
    }
    
    //window.location.refresh();
}

/*Voor het muteren van de attributen*/
/**
 * Open zoekAttribuut met id
 */
function openZoekAttribuutForm(id){
    openAttribuutForm(id,"zoekAttribuutId");
}
/**
 * Open resultaatAttribuut met id
 */
function openResultaatAttribuutForm(id){
    openAttribuutForm(id,"resultaatAttribuutId");
}
/**
 * Open attribuut met id
 */
function openAttribuutForm(id,paramName){
    var dialogdiv = $j("#dialogPopUp");
    var dialogiframe = $j("#iframeZoekConfiguratieVeld");
    var url=attribuutFormUrl+"?"+paramName+"="+id;
    
    dialogiframe.hide();
    dialogdiv.dialog("option", "title", "");
    dialogdiv.dialog("open");
    
    dialogiframe.attr("src", url);
    dialogiframe.load(function () {
        $j("#iframeZoekConfiguratieVeld").show();
    });
}
/**
 *Open een nieuw attribuut in het form
 */
function addAttribuut(zoekConfigid,paramName){
    var dialogdiv = $j("#dialogPopUp");
    var dialogiframe = $j("#iframeZoekConfiguratieVeld");
    var url=attribuutFormUrl+"?attribuutType="+paramName+"&zoekConfiguratieId="+zoekConfigid;

    dialogiframe.hide();
    dialogdiv.dialog("option", "title", "Nieuw " + paramName + "veld");
    dialogdiv.dialog("open");
    
    dialogiframe.attr("src", url);
    dialogiframe.load(function () {
        $j("#iframeZoekConfiguratieVeld").show();
    });
}

function openAsDialog(dialogdiv){
    dialogdiv.dialog({
        autoOpen: false,
        width: 400,
        height: 350,    
        resizable: false,
        draggable: true,
        modal: true
    });
    // dialogdiv.dialog('open');
}

$j(document).ready(function() {
    openAsDialog($j("#dialogPopUp"));
})

/*Return naar het begin van de wizard/lijst*/
function openStartPage(){
    window.location=startPage;
}

function deleteZoekConfiguratie(id){
    var answer = confirm("Weet u zeker dat u dit record wilt verwijderen?")
    if(answer){
        if (document.getElementById("hiddenDelete")){
            document.getElementById("hiddenDelete").value="submit";
            document.forms[0].submit();
        }
    }
}
