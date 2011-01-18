 function initialize(a) {
  var contentgoogle = document.getElementById('contentgoogle1');
  // Setting the text in the div.
  //content.innerHTML = '<div id="text">Hola, me alegro mucho de verte.<\/div><div id="transl"/>';
    contentgoogle.innerHTML ='<div id="textg">' + a + '<\/div><div id="transl"/>';

      // Grabbing the text to translate
      var text = document.getElementById("textg").innerHTML;

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
function initializep(a) {
  var contentgooglep = document.getElementById('contentgooglep');
  // Setting the text in the div.
  //content.innerHTML = '<div id="text">Hola, me alegro mucho de verte.<\/div><div id="transl"/>';
    contentgooglep.innerHTML ='<div id="textgp">' + a + '<\/div><div id="translp"/>';

      // Grabbing the text to translate
      var textp = document.getElementById("textgp").innerHTML;

      // Translate from Spanish to English, and have the callback of the request
      // put the resulting translation in the "translation" div.
      // Note: by putting in an empty string for the source language ('es') then the translation
      // will auto-detect the source language.
      google.language.translate(textp, 'en', 'hi', function(result) {
      var translated = document.getElementById("translp");
      if (result.translation) {
      translated.innerHTML = result.translation;
      }
      });

      }


