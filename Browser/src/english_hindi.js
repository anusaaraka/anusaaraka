/*
Configuration file for English-Hinid language specifics
*/

var rows_visibility = [
1, // row1
0, // row2
0, // row3
0, // row4
1, // row5
0, // row6
1, // row7
0, // row8
1, // row9
0, // last row will be the suggestions row
]; // The array can be of different size than the number of rows at hand

var row_labels = [
"English (A)",
"Root (B)",
"POS tag (C)",
"Chunker Marking (D)",
"Hindi padasutra (E)",
"Word Grouping (LINK PARSER) (F)",
"Sense Disambiguation (G)",
"Preposition Movement (PARSER)(H)",
"Hindi Generation (I)",
"Suggestions (J)"
];

var row_descriptions = [
"Original English text",
"Shows root word(s) corresponding to the English word",
"Shows the best probable Part Of Speech in a given context",
"Shows the names of phrases (noun phrase, verb phrase, etc)",
"Gives the Hindi gloss of English word",
"Gives the Hindi gloss of word as per PARSER(s)",
"Shows the Hindi meaning after disambiguating the word in a context",
"Shows the probable place to which preposition should be moved in Hindi output as per parser",
"Shows the Hindi word after calling the Hindi generator",
"Shows the user suggestion"
];
