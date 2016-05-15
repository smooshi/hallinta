// Tää vaikka js/navigation.js fileksi

console.log('I do load');

$(document).on('click', '.navigationTable', function() {
    var id = $(this).attr('data-id');
    var type = $(this).attr('data-type');
    var target = $(this).attr('data-target');

    if(type === undefined) {
        window.location = '/' + target + '/' + id;
    } else {
        window.location = '/' + target + '/' + id + '/' + type;
    }
});
