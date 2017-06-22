
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
    $.get('http://localhost:8080/BookStory/admin/search', {key: key}, function (data, status) {
        $("#search-popup").css("display", "block");
        var bookleng = Object.keys(data.books).length;
        var ul = document.getElementById("search-list-customer");
        ul.innerHTML = '';
        for (var i = 0; i < bookleng; i++) {
            var li = document.createElement("li");
            li.innerHTML = '<div class="row-fluid search-result-element"><a href="/admin/book/edit/'+data.books[i].slug+'" target="_blank"><div class="span2"><img src="'+data.books[i].image+'" class="image-search"></div><div class="span8">'+data.books[i].name+'</div><div class="span2">[B]</div></a></div><div class="space5"></div>';
            ul.appendChild(li);
        }
        
        var chapterleng = Object.keys(data.chapters).length;
        for (var i = 0; i < chapterleng; i++) {
            var li = document.createElement("li");
            li.innerHTML = '<div class="row-fluid search-result-element"><a href="#" target="_blank"><div class="span2"><img src="'+data.chapters[i].image+'" class="image-search"></div><div class="span8">'+data.chapters[i].name+'</div><div class="span2">[C]</div></a></div><div class="space5"></div>';
            ul.appendChild(li);
        }
        
        var authorleng = Object.keys(data.authors).length;
        for (var i = 0; i < authorleng; i++) {
            var li = document.createElement("li");
            li.innerHTML = '<div class="row-fluid search-result-element"><a href="/admin/user/profile/'+data.authors[i].id+'" target="_blank"><div class="span2"><img src="'+data.authors[i].image+'" class="image-search"></div><div class="span8">'+data.authors[i].name+'</div><div class="span2">[Au]</div></a></div><div class="space5"></div>';
            
            ul.appendChild(li);
        }
        
        var accountleng = Object.keys(data.accounts).length;
        for (var i = 0; i < accountleng; i++) {
            var li = document.createElement("li");
            li.innerHTML = '<div class="row-fluid search-result-element"><a href="/admin/user/profile/'+data.accounts[i].id+'" target="_blank"><div class="span2"><img src="'+data.accounts[i].image+'" class="image-search"></div><div class="span8">'+data.accounts[i].name+'</div><div class="span2">[Ac]</div></a></div><div class="space5"></div>';
            ul.appendChild(li);
        }
    });
}

