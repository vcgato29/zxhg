/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
if(!outJson['result']){
    $("#zgjl_table").hide();
}else{
    $("#zgjl_table").dataTable(tableTheme);
}

$(".info").click(function(){
    var ind = $(this).attr("ind");
    var data = outJson['result'][ind];
    if(data.yhdw != dep){
        alertMsg("只能验收本单位的隐患");
        return;
    }
    padBackData(data, "#zgjl_dialog");
    var oldData = {
        fcfcr:$("#fcys_form #fcfcr").val(),
        fcfcrxm:$("#fcys_form #fcfcrxm").val()
    };
    padBackData(data, "#fcys_dialog");
    padBackData(oldData, "#fcys_dialog");
    $("#zgjl_dialog").dialog("open");
});

$("#zgjl_dialog").dialog({
    autoOpen: false,
    height: 400,
    width: 600,
    modal: true,
    buttons: {
        "验收" : function(){
            $("#fcys_dialog").dialog("open");
            $( this ).dialog( "close" );
        },
        "关闭": function() {
            $( this ).dialog( "close" );
        }
    }
});

$("#fcys_dialog").dialog({
    autoOpen: false,
    height: 300,
    width: 600,
    modal: true,
    buttons: {
        "提交" : function(){
            var options = new AjaxOptions("#fcys_form");
            options.put("service_code", "P12010");
            options.sus = function(){
                setTimeout(function(){
                    reloadPage();
                }, 800);
            };
            $.ajax(options);
        },
        "关闭": function() {
            $( this ).dialog( "close" );
        }
    }
});
$("#fcys_dialog #fcfcrxm").change(function(){
    $("#fcys_dialog #fcfcr").val("");
});