/**
 * Created by 기영 on 2016-11-09.
 * 커리큘럼 삭제 시 물어보는 스크립트
 */
$(document).ready(function () {
    var del = $('#del');
    del.on("click", function () {
        //var title = $('.context_one p > span').eq(1).text();
    	var title = $('.context_one #ntitle').text();
        var result = window.confirm('공지사항:' + title + '을\n삭제하시겠습니까?');
        return result;
    });
});

