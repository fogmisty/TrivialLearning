$(document).ready(function(){
    $("[value=SearchAboutClass]").click(function(){
        $.ajax({
            type: "GET",
            url: "Servletc?aclass="+$("[name=aclass]").val(),
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
    
    $("[value=SearchAboutGrade]").click(function(){
        $.ajax({
            type: "GET",
            url: "Servletg?grade="+$("[name=grade]").val(),
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
    
    $("[value=SearchAboutSID]").click(function(){
        $.ajax({
            type: "GET",
            url: "Servlets?sid="+$("[name=sid]").val(),
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
    
    $("[value=SearchAboutName]").click(function(){
        $.ajax({
            type: "GET",
            url: "Servletn?name="+$("[name=name]").val(),
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
    
    $("[value=SeeAllStudents]").click(function(){
        $.ajax({
            type: "GET",
            url: "Servleta",
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
    
});