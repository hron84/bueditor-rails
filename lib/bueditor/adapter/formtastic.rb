require 'formtastic'

class BueditorInput < ::Formtastic::Inputs::TextInput
 
  # adding bueditor class 
  def input_html_options
    current = super
    if current.key?(:class)
      current[:class] += 'editor-textarea'
    else
      current[:class] = ['editor-textarea']
    end

    current
  end
end
