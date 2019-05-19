tinymce.init({
    selector: 'textarea',
    plugins: 'advlist autolink link image lists charmap print preview',
    toolbar: 'undo redo | styleselect | bold italic | link image | fontsizeselect',
    style_formats: [
        {
            title: 'Headers', items: [
                { title: 'Header 4', format: 'h4' }
            ]
        },
        {
            title: 'Inline', items: [
                { title: 'Italic', icon: 'italic', format: 'italic' },
                { title: 'Underline', icon: 'underline', format: 'underline' },
                { title: 'Strikethrough', icon: 'strikethrough', format: 'strikethrough' },
                { title: 'Superscript', icon: 'superscript', format: 'superscript' },
                { title: 'Subscript', icon: 'subscript', format: 'subscript' }
            ]
        },
        {
            title: 'Blocks', items: [
                { title: 'Paragraph', format: 'p' },
                { title: 'Blockquote', format: 'blockquote' }
            ]
        },
        {
            title: 'Alignment', items: [
                { title: 'Left', icon: 'alignleft', format: 'alignleft' },
                { title: 'Center', icon: 'aligncenter', format: 'aligncenter' },
                { title: 'Right', icon: 'alignright', format: 'alignright' },
                { title: 'Justify', icon: 'alignjustify', format: 'alignjustify' }
            ]
        }
    ],
    setup: function (editor) {
        editor.on('change', function () {
            tinymce.triggerSave();
        });
    }
}); 
 