$(() => {
    window.currentPage = 1;
    $('.pageDiv').click((e) => {
        let tag = e.currentTarget.innerText;
        let page = parseInt(tag);
        if ($(e.currentTarget).hasClass('pageSelected')) {
            return;
        }
        $('.pageIndex').removeClass('pageSelected');
        if (isNaN(page)) {
            let pageIndexList = Array.from($('.pageIndex'));
            if ($(e.currentTarget).hasClass('prefixClass')) {
                // 前箭头
                if (window.currentPage - 1 <= 1) {
                    window.currentPage = 1;
                } else {
                    window.currentPage = window.currentPage - 1;
                }
            } else if ($(e.currentTarget).hasClass('suffixClass')) {
                // 后箭头
                if (window.currentPage + 1 >= 5) {
                    window.currentPage = 5;
                } else {
                    window.currentPage = window.currentPage + 1;
                }
            }
            pageIndexList.forEach(element => {
                if (element.innerText == window.currentPage) {
                    $(element).addClass('pageSelected');
                    return;
                }
            });
        } else {
            $(e.currentTarget).addClass('pageSelected');
            window.currentPage = page;
        }
    });

    $('.col4 a').click((e) => {
        let element = $(e.currentTarget);
        let rowList = Array.from(element.parent().parent().children());
        let tipStr = ' - ';
        rowList.forEach(item => {
            tipStr += item.innerText + ' - ';
        });
        alert(tipStr);
    });

    // 初始化新增按钮
    $('#addBtn').click((e) => {
        parent.openDialog('page/dialog/curse_add.html', '新增课程', 1000, 600, addCurse);
    });
});

function addCurse() {
    alert('新增了课程');
}