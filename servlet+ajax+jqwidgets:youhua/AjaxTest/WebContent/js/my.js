$(document).ready(function(){
    $("[value=搜索]").click(function(){
        $.ajax({
            type: "GET",
            scriptCharset: 'utf-8',//解决编码问题
            url: "Servleta?sid="+$("#userID").val()+"&name="+$("#userName").val()+"&sex="+$("#jqxComboBox").val(),
            dataType: "text",
            async: false,
            success: function(data){
                $("#show").html(data);
            },
            error: function(){
                $("#show").html("Error XMLHttpRequest");
            }
        });
    });
    
    $("[value=1班]").click(function(){
        $.ajax({
            type: "GET",
            url: "Servletc",
            dataType: "text",
            async: false,
            success: function(data){
                $("#show").html(data);
            },
            error: function(){
                $("#show").html("Error XMLHttpRequest");
            }
        });
    });
    
    
    
 // Create jqxTree
    $('#treeA').jqxTree({ allowDrag: true, allowDrop: true, height: '500px', width: '100px', 
        dragStart: function (item) {
            if (item.label == "Community")
                return false;
        }
    });
    $('#treeA').css('visibility', 'visible');

    $("#treeA").on('dragStart', function (event) {
        $("#dragStartLog").text("Drag Start: " + event.args.label);
        $("#dragEndLog").text("");
    });

    $("#treeA").on('dragEnd', function (event) {
        $("#dragEndLog").text("Drag End");
         if (event.args.label) {
            var ev = event.args.originalEvent;
            var x = ev.pageX;
            var y = ev.pageY;
            if (event.args.originalEvent && event.args.originalEvent.originalEvent && event.args.originalEvent.originalEvent.touches) {
                var touch = event.args.originalEvent.originalEvent.changedTouches[0];
                x = touch.pageX;
                y = touch.pageY;
            }
            var offset = $("#textarea").offset();
            var width = $("#textarea").width();
            var height = $("#textarea").height();
            var right = parseInt(offset.left) + width;
            var bottom = parseInt(offset.top) + height;

            if (x >= parseInt(offset.left) && x <= right) {
                if (y >= parseInt(offset.top) && y <= bottom) {
                    $("#textarea").val(event.args.label);
                }
            }
        }
    });
                
    var source = [
        	"全部",
            "男",
            "女",
    ];
    // Create a jqxComboBox
    $("#jqxComboBox").jqxComboBox({
        selectedIndex: 0, 
        source: source, 
        width: '80px', 
        height: '20px'
    });
    
    $("#userName").jqxInput({ placeHolder: "姓名", height: 20, width: 80});
    $("#userID").jqxInput({ placeHolder: "学号", height: 20, width: 80});
    
    $('#treeA').on('select', function (event) {
    	$.ajax({
            type: "GET",
            url: "Servletc?aclass=" + event.args.element.id,
            dataType: "text",
            async: false,
            success: function(data){
                $("#show").html(data);
            },
            error: function(){
                $("#show").html("Error XMLHttpRequest");
            }
        //$("#show").html("<div style='margin: 10px;'>" + "Servletc?aclass=" + event.args.element.id + "</div>");     
        }); 
    });
});