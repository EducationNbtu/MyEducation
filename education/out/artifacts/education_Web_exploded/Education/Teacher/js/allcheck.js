function selectAll(){
    var isCheck=$("#ch1").is(':checked');  //获得全选复选框是否选中
    $("input[type='checkbox']").each(function() {  
        this.checked = isCheck;       //循环赋值给每个复选框是否选中
    });

