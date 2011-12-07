/*
Configuration file for English-Hinid language specifics
*/

var rows_visibility = [
1, // row1
1, // row2
0, // row3
0, // row4
0, // row5
1, // row6
0, // row7
1, // row8
0, // row9
1, // row10
0, // last row will be the suggestions row
]; // The array can be of different size than the number of rows at hand

var row_labels = [
"English (A)",
"Cautionary Signs (B)",
"Root (C)",
"POS tag (D)",
"Chunker Marking (E)",
"Hindi padasutra (F)",
"Word Grouping (LINK PARSER) (G)",
"Sense Disambiguation (H)",
"Preposition Movement (PARSER)(I)",
"Hindi Generation (J)",
"Suggestions (K)"
];

var row_descriptions = [
"Original English text",
"Shows the cautionary sign for a word indicating a condition requiring special attention",
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
