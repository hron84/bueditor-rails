//= require bueditor/bueditor
//= require bueditor/library/bue.autocomplete
//= require bueditor/library/bue.ctrl
//= require bueditor/library/bue.find
//= require bueditor/library/bue.history
//= require bueditor/library/bue.imce
//= require bueditor/library/bue.li
//= require bueditor/library/bue.markup
//= require bueditor/library/bue.misc
//= require bueditor/library/bue.popup
//= require bueditor/library/bue.preview
//= require bueditor/library/bue.tab

jQuery(function() {
    $('textarea.editor-bueditor').each(function(ix) {
        BUE.processTextarea(this);
    }
});
