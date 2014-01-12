
$(function(){

    $('.postButton').on("click", function(event){
      // event.preventDefault();
        console.log(event.currentTarget.id)
        targetId=event.currentTarget.id
        $.ajax( {
            url: "/images/" + targetId + '.json',
            type: "get"
        } ).done(function(data) {
          console.log('got the data')
          console.log(data)
            $('.bo').empty();
            $('.bo').append('<img src=' + data[i].image_url + '>')

            })
    });
});
