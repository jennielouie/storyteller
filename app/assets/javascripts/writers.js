// This function pulls and displays all stories from a particular author, as selected by user by clicking the "read stories" button.  The information is pulled from an API generated by the writers 'show' method.
$(function(){

    $('.specWriterButton').on("click", function(event){
        targetId=event.currentTarget.id
        $.ajax( {
            url: "/writers/" + targetId,
            type: "get"
        } ).done(function(data) {
            $('#writerStories').empty();
            $('#listTitle').empty();
            $('#listTitle').html('<h3 align="center">The Complete Works of ' + data[0].name + '</h3>');
                for (i=0; i<data.length; i++) {
                        $('#writerStories').append('<li><div class="row"><h3>'+ data[i].title + ' </h3></div><div class="row"><img src=' + data[i].image_url + '></div><div class="row"><p> ' + data[i].story + '</p></div></li>')

                }

            } );
    });
});

