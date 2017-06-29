
$(document).ready(function () {
    var timeout;
    var delay = 300;
    $("#search").on({
        focus: function () {
            if ($(this).val() != '')
                $("#search-popup").css("display", "block");
        },
        blur: function () {
            $("#search-popup").css("display", "none");
        },
        keyup: function () {
            var key = $(this).val();
            if ( key!= '') {
                clearTimeout(timeout);
                timeout = setTimeout(function () {
                    search(key);
                }, delay);
            } else {
                $("#search-popup").css("display", "none");
            }
        }
    });
});
function search(key) {
    $.get('../search/book', {key: key}, function (data, status) {
        $("#search-popup").css("display", "block");
        var bookleng = Object.keys(data.books).length;
        var ul = document.getElementById("search-list-customer");
        ul.innerHTML = '';
        for (var i = 0; i < bookleng; i++) {
            var li = document.createElement("li");
            li.innerHTML = '<a href="../user/detail.jsp" target="_blank"><div class="search-result-element"><img src="'+data.books[i].image+'" class="image-search" >'+data.books[i].name+'</div></a>';
            ul.appendChild(li);
        }
    });
}

