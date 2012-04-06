;Added by Roja (01-12-10)
;OPEN LOGOS sometimes leaves hyphen(-) between two words.
;This program checks whether there is a hyphen between the words and then maps the RES IDS with WORD IDS
;Presently this program handles only one and two hyphens between the word.
;Example: If you were a MIDDLE-CLASS American without a job, who would you vote for.
;TO DO  : If in a sentence there are more than two hyphens.

;=========================================================================================================================

 (defglobal ?*ol_map* = ol_word_fp)
 (defglobal ?*ol_map1* = ol_word_fp1)


 (defrule end
 (declare (salience -4000))
 =>
	(close  ?*ol_map*)
 )


 (deftemplate word-morph(slot original_word)(slot morph_word)(slot root)(slot category)(slot suffix)(slot number))


 (deffunction never-called ()
 (assert (id-word))
 (assert (id-last_word))
 (assert (parserid-wordid))
 (assert (ol_res_id-word_id-word))
 (assert (current_id-group_members))
 )

;=======================================================================================================================

 (deffunction string_to_integer (?parser_id); [Removes the first character from the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))

;========================================================================================================================

;Restoring the words which were transformed during OL parsing such as 'her' and 'like'.
;HER sister gave HER HER book.
 (defrule map
 (declare (salience 3000))
 ?f<- (ol_res_id-word_id-word   ?P      ?id     ?tr_wrd)
 ?f1<-(id-original_word-transformed_word        ?id    ?org_wrd        ?tr_wrd)
 ?f2<-(id-word ?id1 ?org_wrd)
 =>
   (retract ?f ?f1 ?f2)
   (printout ?*ol_map1* "(ol_res_id-word_id-word	"?P	"	"?id1	"	"?org_wrd")" crlf)
   (printout ?*ol_map*  "(parserid-wordid	"?P	"	"?id1")" crlf)
 )


;========================================================================================================================

;She got 70% in her semester.
 (defrule map_number
 (declare (salience 2000))
 ?f<- (ol_res_id-word_id-word   ?Pid      ?wrdid     ?wrd)
 ?f1<-(id-word   ?id    ?word)
 (not (ol_res_id-word_id-word    ?Pid  ?wrdid punctuation_mark))
 (test (numberp ?wrd))
 ?f2<-(ol_res_id-word_id-word    ?Pid1   =(+ ?wrdid 1)  %)
 =>
   (bind ?wrd_wrd (string-to-field (str-cat ?wrd "%")))
   (if (eq ?word ?wrd_wrd) then 
   (printout ?*ol_map1* "(ol_res_id-word_id-word	"?Pid	"	"?id	"	"?word")" crlf)
   (printout ?*ol_map*  "(parserid-wordid	"?Pid	"	"?id")" crlf)
   (printout ?*ol_map*  "(parserid-wordid	"?Pid1	"	"?id")" crlf)
   (retract ?f ?f1 ?f2)
 ))

;======================================================================================================================

;When only one hyphen(-) is present in the word.
;If you were a MIDDLE-CLASS American without a job, who would you vote for.
 (defrule OL_id_map_hyphen
 (declare (salience 1000))
 ?f<-(ol_res_id-word_id-word	?pid	?wrdid	?wrd)
 ?f1<-(id-word ?wrdid1  ?word)
 (test (eq (numberp ?word) FALSE)) ;To avoid join network errors
 (test (neq (str-index "-" ?word) FALSE))
 (not (ol_res_id-word_id-word    ?pid  ?wrdid punctuation_mark))
 ?f2<-(ol_res_id-word_id-word    ?pid1   =(+ ?wrdid 1)  ?wrd1)
 =>
   (bind ?wrd_wrd (string-to-field (str-cat ?wrd "-" ?wrd1)))
   (if (and (eq ?word ?wrd_wrd)(eq ?wrdid1 ?wrdid)) then
       (printout ?*ol_map*  "(parserid-wordid	"?pid	"	"	?wrdid1")" crlf)
       (printout ?*ol_map*  "(parserid-wordid	"?pid1	"	"	?wrdid1")" crlf)
       (printout ?*ol_map1* "(ol_res_id-word_id-word	"?pid	"	"?wrdid1	"	"?word")" crlf)
       (retract ?f ?f2 ?f1)
   else
       (if (and (eq ?word ?wrd_wrd)(> ?wrdid ?wrdid1)) then  ;The buy-out caused a free for all in the MID-AFTERNOON.
       (printout ?*ol_map*  "(parserid-wordid	"?pid	"	"	?wrdid1")" crlf)
       (printout ?*ol_map1* "(ol_res_id-word_id-word	"?pid	"	"?wrdid1	"	"?word")" crlf)
       (retract ?f ?f2 ?f1))
   )
 )

;========================================================================================================================

;When two hyphens(-) are present in the word.
;The buy-out caused a FREE-FOR-ALL in the mid-afternoon.
 (defrule OL_id_map_hyphen_1
 (declare (salience 1000))
 ?f<-(ol_res_id-word_id-word    ?pid    ?wrdid  ?wrd)
 ?f1<-(id-word ?wrdid1  ?word)
 (not (ol_res_id-word_id-word    ?pid  ?wrdid punctuation_mark))
 ?f2<-(ol_res_id-word_id-word    ?pid1   =(+ ?wrdid 1)  ?wrd1)
 ?f3<-(ol_res_id-word_id-word    ?pid2   =(+ ?wrdid 2)  ?wrd2)
 (test (eq (numberp ?word) FALSE)) ;To avoid join network errors
 (test (neq (str-index "-" ?word) FALSE))
 =>
   (bind ?wrd_wrd (string-to-field (str-cat ?wrd "-" ?wrd1 "-" ?wrd2)))
   (if (and (eq ?word ?wrd_wrd)(eq ?wrdid1 ?wrdid)) then
       (printout ?*ol_map*  "(parserid-wordid	"?pid	"	"	?wrdid1")" crlf)
       (printout ?*ol_map1* "(ol_res_id-word_id-word	"?pid	"	"?wrdid1	"	"?word")" crlf)
       (retract ?f ?f1 ?f2  ?f3)
   else
       (if (and (eq ?word ?wrd_wrd)(> ?wrdid ?wrdid1)) then 
       (printout ?*ol_map*  "(parserid-wordid	"?pid	"	"	?wrdid1")" crlf)
       (printout ?*ol_map1* "(ol_res_id-word_id-word	"?pid	"	"?wrdid1	"	"?word")" crlf)
       (retract ?f ?f1 ?f2 ?f3))
   )
 )

;========================================================================================================================
               
 ;Mapping punctuation 
 (defrule OL_id_map-punct
 (declare (salience -3000))
?f<- (ol_res_id-word_id-word	?pid	-	punctuation_mark)
 =>
   (retract ?f)
   (printout ?*ol_map1* "(ol_res_id-word_id-word	"?pid	"	-"	"	punctuation_mark"")" crlf)
 )

;=========================================================================================================================

 ;Mapping bos
 (defrule OL_id_map-bos
 (declare (salience 1500))
?f<- (ol_res_id-word_id-word        ?pid    0     bos)
 =>
   (retract ?f)
   (printout ?*ol_map1* "(ol_res_id-word_id-word	"?pid	"	0"	"	bos"")" crlf)
 )

;==========================================================================================================================

 ;Mapping group words
 ;The blacksmith made an assay of IRON ORE.
 (defrule OL_id_map_grp_wrds
?f1<- (ol_res_id-word_id-word	?pid	?wrdid	$?wrd)
 ?f<- (current_id-group_members  ?wrdid	$?original_ids)
 =>
   (retract ?f ?f1)
   (printout ?*ol_map1* "(ol_res_id-word_id-word	"?pid	"	"?wrdid	"	"(implode$ $?wrd)")" crlf)
   (printout ?*ol_map1* "(current_id-group_members	"?wrdid	"	"(implode$   $?original_ids)")" crlf)
   (printout ?*ol_map1* ";The relation name 'current_id-group_members' is used temporarely and should be replaced by 'head_id-group_members'. " crlf)
   (printout ?*ol_map*  "(parserid-wordid	"?pid	"	"(implode$ $?original_ids)")" crlf)
 )

;========================================================================================================================

 ;If you were a middle-class AMERICAN WITHOUT A JOB, WHO WOULD YOU VOTE FOR.
 (defrule OL_id_map-1
 (declare (salience -200))
 ?f1<- (ol_res_id-word_id-word        ?pid    ?wid   ?wrd)
 ?f<- (id-word  ?wid1  ?wrd)
 =>
    (if (or (> ?wid ?wid1)(eq ?wid ?wid1)) then
       (printout ?*ol_map1* "(ol_res_id-word_id-word	"?pid	"	"?wid1	"	"?wrd")" crlf)
       (printout ?*ol_map* "(parserid-wordid	"?pid	"	"?wid1	")" crlf)
       (retract  ?f ?f1)
    )
 )

;========================================================================================================================

 ;Mapping with morph data
 ;The leopard SEIZES its kill and BEGINS to eat.
 ;Events of this type rarely go according to the plan.
 (defrule map-morph_rule
 (declare (salience -1500))
 ?f1<- (ol_res_id-word_id-word     ?pid    ?wrdid  ?wrd)
 ?f<- (id-word ?wrdid ?wrd1)
 ?f2<-(word-morph (original_word ?org_wrd ) (morph_word ?morph_wrd) (root ?rt))
 (test (or (eq ?org_wrd ?wrd)(eq ?wrd1 ?wrd)(eq ?rt ?wrd)(eq ?morph_wrd ?wrd)))
 =>
   (retract ?f ?f1 ?f2)
   (printout ?*ol_map1* "(ol_res_id-word_id-word	"?pid	"	"?wrdid	"	"?wrd")" crlf)
   (printout ?*ol_map*  "(parserid-wordid	"?pid	"	"?wrdid")" crlf)
 )

;=========================================================================================================================

 ;default rule
 (defrule default_rule
 (declare (salience -2000))
 ?f1<- (ol_res_id-word_id-word     ?pid    ?wrdid  ?wrd)
 ?f<- (id-word ?id ?wrd1)
 (not (ol_res_id-word_id-word     ?pid  - ?wrd))
 (not (ol_res_id-word_id-word     ?pid  0  bos))
 =>
   (retract ?f1 ?f)
   (printout ?*ol_map1* "(ol_res_id-word_id-word	"?pid	"	"?id	"	"?wrd")" crlf)
   (printout ?*ol_map*  "(parserid-wordid	"?pid	"	"?wrdid")" crlf)
 )

;========================================================================================================================
