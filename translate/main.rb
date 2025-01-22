require 'aws-sdk-translate'
require 'pry'

client = Aws::Translate::Client.new
text = "Hello! This is assou, utilizing Amazon Translate"

resp = client.translate_text({
    text: text,
    source_language_code: "en",
    target_language_code: "es"
    
})
puts resp.translated_text
binding.pry