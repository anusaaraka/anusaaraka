 ; This file is written by Shirisha Manju

 (deffunction never-called ()
 (assert (id-sd_cat))
 (assert (parserid-word))
 (assert (word-wordid-nertype))
 )

 (defglobal ?*cat_fp* = sd_cat_fp)


 (deffunction string_to_integer (?parser_id)
; Removes the first character from the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))


  ;------------------------------------------------------------------------------------------
  ; NOTE: PropN info is extracted from NER so handling NNPS category before NER rule.
  ; NNPS -- A Grateful Dead/Allman [Brothers] concert in Washington D.C., that July, presented an unexpected opportunity to serve as a dry-run for our upcoming trip.
  (defrule NNPS_rule
  (declare (salience 15))
  ?f0<-(id-sd_cat        ?id     NNPS)
  (id-sd_cat ?id1 NNP)
  (test (eq (- (string_to_integer ?id) 1) (string_to_integer ?id1)))
  =>
	(assert (parser_id-cat_coarse ?id PropN))
	(assert (parser_id-cat ?id proper_noun_plural))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  ;Parser fails in identifying the following words.
  ;[Birds] lay their eggs in the nest.          [Sun] rises in the east.
  ;[Health] is more important than money.       [Safety] is our highest priority.
  ;[Childhood] is the best time of life.        [Teaching] is considered an apt calling for women.
  ;[Queen] victoria opened blackfriars bridge in november 1869.
  (defrule NNP_to_NN
  (declare (salience 13))
  ?f0<-(id-sd_cat   ?pid NNP)
  (not (has_been_modified ?pid))
  =>
	(retract ?f0)
	(assert (id-sd_cat   ?pid NN))
	(assert (has_been_modified ?pid))
  )
  ;------------------------------------------------------------------------------------------
  ;Modified this rule by Roja (06-06-13) Suggested by Chaitanya sir
  ;of  ex: The Zongle [of] Bongle Dongle resigned today. 
  ;the ex: Ayodhya Station is at a distance of 128 miles from the Mughal Sarai Station [of] [the] Northern Railway's Mughal Sarai-Lucknow line .
  (defrule PropN_rule_from_NER
  (declare (salience 12))
  (word-wordid-nertype ?word&~of&~the ?id PERSON|LOCATION|ORGANIZATION) 
  (parserid-wordid   ?pid  ?id)
  (parserid-word ?pid ?word)
  ?f0<-(id-sd_cat  ?pid ?)
  =>
        (assert (parser_id-cat_coarse ?pid PropN))
        (assert (parser_id-cat ?pid proper_noun))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  ;Added by Roja(13-06-13) ;Ex: John's family is renovating their kitchen.
  (defrule PropN_rule_from_NER1
  (declare (salience 12))
  (word-wordid-nertype ?word ?id PERSON|LOCATION|ORGANIZATION)
  (parserid-wordid   ?pid's  ?id)
  (parserid-word ?pid's ?wrd)
  ?f0<-(id-sd_cat   ?pid's ?)
  (test (neq (str-index "'s" ?wrd) FALSE))
  (test (eq ?word (string-to-field (sub-string 1 (- (str-index "'s" ?wrd) 1) ?wrd))))
  =>
        (assert (parser_id-cat_coarse  ?pid's PropN))
        (assert (parser_id-cat ?pid's proper_noun))
	(retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
;  ;(Added by S.Maha Laxmi 4-07-11)(Suggested by Sukahada)
;  ; #Ex. We ate at Joe's Diner last week. The Master said, if I did not go, how would you ever see? 
;  ;(removed  sd_category.py and handled that part using NN_to_NNP rule )
;  (defrule NN_to_NNP
;  (declare (salience 11))
;  ?f0<-(id-sd_cat   ?pid NN)
;  (parserid-word ?pid ?word)
;  (test (neq ?pid P1))
;  (test (eq (upcase (sub-string 1 1 ?word)) (sub-string 1 1 ?word)))
;  (test (eq (numberp (string-to-field (sub-string 1 1 ?word))) FALSE));Ex: One can reach kumbhalgarh by road from udaipur (84km) and ranakpur which is 18km from kumbhalgarh. (Added by Roja 19-11-12) 
;  (test (eq (str-index "SYMBOL-" ?word) FALSE));Added this condition to avoid words with SYMBOL to convert to NNP category (Added by Roja 18-10-12) EX:  In one-dimensional motion, there are only two directions (backward and forward, upward and downward) in which an object can move, and these two directions can easily be specified by + and — signs. 
;  =>
; 	(retract ?f0)
;	(assert (id-sd_cat   ?pid NNP))
;  )
  ;------------------------------------------------------------------------------------------
  ; We camped on Nilgiri hills during summer. He went to Agra and saw the Tajmahal.
  ; As will be explained later, there are several types of modulation, abbreviated as AM, FM and PM.
  (defrule PropN_rule
  (declare (salience 10))
  (id-word_cap_info ?id&~1  first_cap|all_caps)
  (parserid-wordid   ?pid  ?id)
  ?f0<-(id-sd_cat  ?pid ?)
  (parserid-word ?pid ?w&~I&~Let&~But&~It) ;You are lucky I am here. Aditya said, Let us look at it carefully first.
  (test (eq (str-index "SYMBOL-" ?w) FALSE));Added this condition to avoid words with SYMBOL to convert to NNP category (Added by Roja 18-10-12) EX:  In one-dimensional motion, there are only two directions (backward and forward, upward and downward) in which an object can move, and these two directions can easily be specified by + and — signs. 
   =>
        (assert (parser_id-cat_coarse ?pid PropN))
        (assert (parser_id-cat ?pid proper_noun))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  ;Suggested by Soma JI 08-08-15 
  ;This chapter begins by giving you a [simplified] account of how macroeconomics differs from the microeconomics that you have known.
  (defrule modify_VBN_cat1
  (declare (salience 5))
  ?f0<-(id-sd_cat  ?id  VBN)
  (Head-Level-Mother-Daughters ? ? ?VBN ?id)
  (Head-Level-Mother-Daughters ? ? ?Mot $? ?VBN $?)
  (Node-Category ?Mot NP)
  (Node-Category ?VBN VBN|VBG)
  =>
        (assert (parser_id-cat_coarse ?id adjective))
        (assert (parser_id-cat ?id adjective))
   	(retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  (defrule PRP_rule
  ?f0<-(id-sd_cat	?id	PRP)
  =>
        (assert (parser_id-cat_coarse ?id pronoun))
        (assert (parser_id-cat ?id personal_pronoun))
  	(retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  ;He disputed that our program was superior . (PRP$) 
  (defrule PRP$_rule
  ?f0<-(id-sd_cat       ?id     PRP$)
  =>
        (assert (parser_id-cat_coarse ?id pronoun))
        (assert (parser_id-cat ?id possessive_pronoun))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  (defrule NN_rule
  ?f0<-(id-sd_cat        ?id     NN)
  =>
        (assert (parser_id-cat_coarse ?id noun))
	(assert (parser_id-cat ?id noun_singular))
   	(retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  ; NNS -- How many people died .
  (defrule NNS_rule
  ?f0<-(id-sd_cat        ?id     NNS)
  =>
	(assert (parser_id-cat_coarse ?id noun))
	(assert (parser_id-cat ?id noun_plural))
         (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  (defrule VB_rule
  ?f0<-(id-sd_cat        ?id     VB)
  =>
        (assert (parser_id-cat_coarse ?id verb))
	(assert (parser_id-cat ?id verb_base_form))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  (defrule VBZ_rule
  ?f0<-(id-sd_cat        ?id     VBZ)
  =>
        (assert (parser_id-cat_coarse ?id verb))
	(assert (parser_id-cat ?id 3rd_person_singular))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  (defrule VBN_rule
  ?f0<-(id-sd_cat        ?id     VBN)
  =>
        (assert (parser_id-cat_coarse ?id verb))
	(assert (parser_id-cat ?id verb_past_participle))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  (defrule VBG_rule
  ?f0<-(id-sd_cat        ?id     VBG)
  =>
        (assert (parser_id-cat_coarse ?id verb))
	(assert (parser_id-cat ?id gerund_or_present_participle))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  (defrule VBD_rule
  ?f0<-(id-sd_cat        ?id     VBD)
  =>
        (assert (parser_id-cat_coarse ?id verb))
	(assert (parser_id-cat ?id verb_past_tense))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  (defrule VBP_rule
  ?f0<-(id-sd_cat        ?id     VBP)
  =>
        (assert (parser_id-cat_coarse ?id verb))
	(assert (parser_id-cat ?id non-3rd_person_singular))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
 ; MD may be modal verb or verb
  (defrule MD_rule
  ?f0<-(id-sd_cat        ?id     MD)
  =>
        (assert (parser_id-cat_coarse ?id verb))
	(assert (parser_id-cat ?id modal_verb))
        (retract ?f0)
  )      
  ;------------------------------------------------------------------------------------------
  ;[There] was a red mark on the door. 
  (defrule RB_rule
  ?f0<-(id-sd_cat        ?id     RB)
  =>
        (assert (parser_id-cat_coarse ?id adverb))
	(assert (parser_id-cat ?id adverb))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  (defrule RBR_rule
  ?f0<-(id-sd_cat        ?id     RBR)
  =>
        (assert (parser_id-cat_coarse ?id adverb))
	(assert (parser_id-cat ?id adverb_comparative))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  (defrule RBS_rule
  ?f0<-(id-sd_cat        ?id     RBS)
  =>
        (assert (parser_id-cat_coarse ?id adverb))
	(assert (parser_id-cat ?id adverb_superlative))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  (defrule Ex_rule
  ?f0<-(id-sd_cat        ?id     EX)
  =>
        (assert (parser_id-cat_coarse ?id adverb))
	(assert (parser_id-cat ?id existential_there))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  (defrule RP_rule
  ?f0<-(id-sd_cat        ?id     RP)
  =>
	(assert (parser_id-cat_coarse ?id particle))
        (assert (parser_id-cat ?id particle))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  (defrule JJ_rule
  ?f0<-(id-sd_cat        ?id     JJ)
  =>
         (assert (parser_id-cat_coarse ?id adjective))
         (assert (parser_id-cat ?id adjective))
         (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  (defrule JJR_rule
  ?f0<-(id-sd_cat        ?id     JJR)
  =>
        (assert (parser_id-cat_coarse ?id adjective))
	(assert (parser_id-cat ?id adjective_comparative))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  (defrule JJS_rule
  ?f0<-(id-sd_cat        ?id     JJS)
  =>
        (assert (parser_id-cat_coarse ?id adjective))
        (assert (parser_id-cat ?id adjective_superlative))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  ;If you use that strategy, he will wipe you out.
  ;Since I know English, he spoke to me.
  ;He managed to escape clear out [of] the burning house.
  (defrule IN_rule
  ?f0<-(id-sd_cat        ?id     IN)
  (Head-Level-Mother-Daughters ? ? ?IN ?id)
  (Head-Level-Mother-Daughters ? ? ?Mot $? ?IN $?)
  (Node-Category ?Mot ?cat&PP|SBAR)
  =>
	(if (eq ?cat PP) then
         	(assert (parser_id-cat_coarse ?id preposition))
        	(assert (parser_id-cat ?id preposition))
	else
		(assert (parser_id-cat_coarse ?id conjunction))
        	(assert (parser_id-cat ?id subordinating_conjunction))
	)	
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  ;[Besides] he is a personal friend.
  (defrule IN_rule1 
  (declare (salience -1))
  ?f0<-(id-sd_cat        ?id     IN)
  (Head-Level-Mother-Daughters ? ? ?IN ?id)
  (Head-Level-Mother-Daughters ? ? ?Mot $? ?IN $?)
  (Node-Category ?Mot ?cat)
  =>
        (if (eq ?cat ADVP) then
                (assert (parser_id-cat_coarse ?id adverb))
                (assert (parser_id-cat ?id adverb))
        else
                (assert (parser_id-cat_coarse ?id preposition))
                (assert (parser_id-cat ?id preposition))
        )
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  ;[All] these numbers have the same number of significant figures (digits 2, 3, 0, 8), namely four.
  ;[Such] a dilemma does not occur in the wave picture of light.
  (defrule DT_rule
  ?f0<-(id-sd_cat        ?id     DT)
  =>
        (assert (parser_id-cat_coarse ?id determiner))
      	(assert (parser_id-cat ?id determiner))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  (defrule PDT_rule
  ?f0<-(id-sd_cat        ?id     PDT)
  =>
        (assert (parser_id-cat_coarse ?id determiner))
        (assert (parser_id-cat ?id pre_determiner))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  (defrule CC_rule
  ?f0<-(id-sd_cat        ?id     CC)
  =>
        (assert (parser_id-cat_coarse ?id conjunction))
       	(assert (parser_id-cat ?id coordinating_conjunction))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  ;In which school do you study?
  ;Added by Roja(06-08-12)
  (defrule WDT_rule
  ?f0<-(id-sd_cat        ?id     WDT)
  =>
        (assert (parser_id-cat_coarse ?id wh-determiner))
       	(assert (parser_id-cat ?id wh-determiner))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  ;When did the accident happen?
  (defrule WRB_rule
  ?f0<-(id-sd_cat        ?id     WRB)
  =>
         (assert (parser_id-cat_coarse ?id wh-adverb))
         (assert (parser_id-cat ?id wh-adverb))
         (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  ;Added by Shirisha Manju 24-7-14 Suggested by Chaitanya Sir
  ;The way to predict the future is to create it. My goal is to make products that have enduring appeal.
  (defrule TO_rule1
  (declare (salience -10))
  ?f0<-(id-sd_cat        ?id     TO)
  (parser_id-cat_coarse ?id1 verb)
  (test (= (+ (string_to_integer ?id) 1)(string_to_integer ?id1)))
  =>
         (assert (parser_id-cat_coarse ?id infinitive_to))
         (assert (parser_id-cat ?id to))
         (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  ;Equation (6.1) can be extended [to] curved surfaces and nonuniform fields. 
  ;Added by Roja(17-07-13)
  (defrule TO_rule
  (declare (salience -20))
  ?f0<-(id-sd_cat        ?id     TO)
  =>
         (assert (parser_id-cat_coarse ?id preposition))
         (assert (parser_id-cat ?id to))
         (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  ;Added by Roja(17-07-13)
  ;Shivaji was one of the most powerful rulers in [1600].
  (defrule CD_rule
  (declare (salience 1))
  ?f0<-(id-sd_cat        ?id     CD)
  (parserid-word ?id ?w)
  (test (eq (numberp ?w) TRUE))
  =>
        (assert (parser_id-cat ?id cardinal_number))
        (assert (parser_id-cat_coarse ?id number))
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  ;Hence, all the [three] will have negative signs. 
  ;[Seventy] words per minute.
  ;Shivaji was [one] of the most powerful rulers in 1600.
  (defrule CD_rule1
  ?f0<-(id-sd_cat        ?id     CD)
  (parserid-word ?id ?w)
  =>
	(assert (parser_id-cat_coarse ?id number))
	(bind ?w1 (string-to-field (sub-string (- (length ?w) 1) (length ?w) ?w)))
	(if (or (neq (integerp (member$ ?w (create$ first second third))) FALSE) 
                (eq (integerp (member$ ?w1 (create$ th st nd rd))) TRUE)) then
		(assert (parser_id-cat ?id ordinal_number))
	else
		(assert (parser_id-cat ?id cardinal_number))
	)
        (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  ;Added by Roja(17-07-13)
  ;[What] is the nature of physical laws? 
  (defrule WP_rule
  ?f0<-(id-sd_cat        ?id     WP)
  =>
         (assert (parser_id-cat_coarse ?id wh-pronoun))
         (assert (parser_id-cat ?id wh-pronoun))
         (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  (defrule WP$_rule
  ?f0<-(id-sd_cat        ?id     WP$)
  =>
         (assert (parser_id-cat_coarse ?id wh-pronoun))
         (assert (parser_id-cat ?id possessive_wh-pronoun))
         (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  ;Added by Roja(27-12-13)
  ;[No], it isn't.
  (defrule UH_rule
  ?f0<-(id-sd_cat        ?id     UH)
  =>
         (assert (parser_id-cat_coarse ?id interjection))
         (assert (parser_id-cat ?id interjection))
         (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  ;Added by Roja(29-05-14)
  ;A can be expressed as a sum of two vectors — one obtained by multiplying [a] by a real number and the other obtained by multiplying [b] by another real number.
  (defrule SYM_rule
  ?f0<-(id-sd_cat        ?id     SYM)
  =>
         (assert (parser_id-cat_coarse ?id symbol))
         (assert (parser_id-cat ?id symbol))
         (retract ?f0)
  )
  ;------------------------------------------------------------------------------------------
  (defrule print_coarse_info
  (declare (salience -50))
  ?f<-(parser_id-cat_coarse ?id ?cat)
  =>
	(printout ?*cat_fp* "(parser_id-cat_coarse  "?id" " ?cat")" crlf)
	(retract ?f)
  )
  ;------------------------------------------------------------------------------------------
  (defrule print_fine_info
  (declare (salience -60))
  ?f<-(parser_id-cat ?id ?cat)
  =>
        (printout ?*cat_fp* "(parser_id-cat  "?id" " ?cat")" crlf)
        (retract ?f)
  )     

