tinymce.init({
    selector: 'textarea',
    plugins: 'advlist autolink link image lists charmap print preview',
    toolbar: 'undo redo | styleselect | bold italic | link image | fontsizeselect',
    setup: function (editor) {
        editor.on('change', function () {
            tinymce.triggerSave();
        });
    }
}); 
 