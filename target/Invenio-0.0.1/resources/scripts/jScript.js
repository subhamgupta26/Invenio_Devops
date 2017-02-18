var tabsMeta = {
    tabs : "",
    tabSet : "",
    tabDcolor : "#99bb00",
    tabScolor : "#0094ff"
}

$(document).ready(function() {
    tabsMeta.tabs = $(".tabWork .tabsContainer").children();
    tabsMeta.tabSet = tabsMeta.tabs.eq(0);
    $(".tabWork .tabsContainer li").click(function() {
        var num = $(this).attr("set");
        tabSelect(num);
    });
    tabsMeta.tabSet.click();
    $("#pers").submit(searchFunc);
    
    //--------------Initializations---------------------------

    $('[data-toggle="tooltip"]').tooltip();
});

//--------------------Functions Definition
function tabSelect(num) {
    tabsMeta.tabSet =tabsMeta.tabs.eq(num);
    $(".tabWork .tabsContainer li>a").css({"background-color":""});
    $(".tabWork .tabsContainer li[set="+num+"]>a").css({"background-color":tabsMeta.tabScolor});
    if($(".tabWork").attr("record").length != 0) {
        if(tabsMeta.tabSet.attr("data") == 0) {
        $(".tabWork .frams").html("Loading...");
            $.ajax({
                url: tabsMeta.tabSet.attr("url")+"?unique_id="+$(".tabWork").attr("record"),
                method:tabsMeta.tabSet.attr("meth"),
                success: function(result){
                	alert(result);
                    $("#data-"+num).html(result);
                    tabsMeta.tabSet.attr("data","1");
                    recordSet(num);
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                    var post = '<div class="alert alert-danger"><span class="glyphicon glyphicon-exclamation-sign"></span> Status: '
                    post += textStatus + '<br>Error: ' + errorThrown + '</div>';
                    $(".tabWork .frams").html(post); 
                }
            });
        }
        else {
            recordSet(num);
        }
    }
    else {
        $(".tabWork .frams").html('<div id="logoImg"><img src="'+logourl+'" alt="invenio"></div>');
   }
}

function recordSet(num) {
    data = $("#data-"+num).text();
    post = data;
    $(".tabWork .frams").html(post);
}

function searchFunc() {
    var q = $(".searchbar").val();
    $(".tabWork").attr("record",q);
    tabsMeta.tabSet.attr("data","0");
    tabsMeta.tabSet.click();
    return false;
}