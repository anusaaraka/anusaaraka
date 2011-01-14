 function initialize(a) {
  var content = document.getElementById('content');
  // Setting the text in the div.
  //content.innerHTML = '<div id="text">Hola, me alegro mucho de verte.<\/div><div id="transl"/>';
    content.innerHTML ='<div id="text">' + a + '<\/div><div id="transl"/>';

      // Grabbing the text to translate
      var text = document.getElementById("text").innerHTML;

      // Translate from Spanish to English, and have the callback of the request
      // put the resulting translation in the "translation" div.
      // Note: by putting in an empty string for the source language ('es') then the translation
      // will auto-detect the source language.
      google.language.translate(text, 'en', 'hi', function(result) {
      var translated = document.getElementById("transl");
      if (result.translation) {
      translated.innerHTML = result.translation;
      }
      });

      }

