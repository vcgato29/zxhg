/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
if(!outJson['result']){
    $("#sbbp_table").hide();
}else{
    $("#sbbp_table").dataTable(tableTheme);
}

$("#add").click(function(){
    $("#sbbp_dialog").dialog("open");
});

$("#sbbp_dialog").dialog({
    autoOpen: false,
    height: 500,
    width: 600,
    modal: true,
    buttons: {
        "提交": function() {
            if(checkForm("#sbbp_data")){
                alertMsg("该功能暂不可用！");
            }
        },
        "关闭": function() {
            $( this ).dialog( "close" );
        }
    }
});

$(".update").click(function(){
    alertMsg("只有录入人才可以修改！");
});
$(".del").click(function(){
    alertMsg("只有录入人才可以删除！");
});