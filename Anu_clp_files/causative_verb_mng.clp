 (defglobal ?*caus_mng-file* = caus_mng_fp)

 (deffunction string_to_integer (?parser_id)
; Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))

 (deffacts dummy_facts 
 (missing-level-id) 
 (id-original_word) 
 (id-number-src)
 (id-wsd_number)
 (affecting_id-affected_ids-wsd_group_root_mng)
 (affecting_id-affected_ids-wsd_group_word_mng)
 (verb_type-verb-causative_verb-tam causative)
 (verb_type-verb-kriyA_mUla-tam)
 (root-verbchunk-tam-chunkids)
 (id-HM-source)
 (meaning_has_been_decided)
 (meaning_to_be_decided)
 (id-wsd_root_mng)
 (id-wsd_word_mng)
 (id-H_vib_mng)
 (id-wsd_root)
 (make_verbal_noun)
 (kriyA_id-object_viBakwi)
 (kriyA_id-object2_viBakwi)
 (kriyA_id-subject_viBakwi)
 (kriyA_id-object1_viBakwi)
 (id-tam_type)
 (id-E_tam-H_tam_mng)
 (id-preceeding_part_of_verb)
 (root_id-TAM-vachan)
 (id-cat_coarse)
 (id-cat)
 (id-original_word)
 (id-root)
 (id-attach_emphatic)
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;Removes letter 'Z' from the hindi_meaning  
 (defrule remove_Z 
 (declare (salience 1001))
 ?f0<-(id-HM-source ?id ?hmng ?src) 
 (test (str-index "Z" ?hmng))
 (test (neq ?src Original_word))
 =>
	 (retract ?f0)
	 (bind ?index (str-index "Z" ?hmng))
	 (bind ?len (length ?hmng))
	 (bind ?b_Z (sub-string 1 (- ?index 1) ?hmng))
	 (bind ?a_Z (sub-string (+ ?index 1) ?len ?hmng))
	 (bind ?new_hmng (str-cat ?b_Z ?a_Z))
	 (assert (id-HM-source ?id ?new_hmng ?src))
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;Mary's shoes are red 
 (defrule apos_rule
 (declare (salience 1000))
 ?f0<-(id-HM-source ?id ? Original_word)
 ?f1<-(id-original_word ?id ?word)
 ?f2<-(id-cat_coarse ?id PropN)
 (test (eq (sub-string (- (length ?word) 1) (length ?word) ?word) "'s"))
 =>
        (retract ?f0 ?f1)
        (bind ?h_word (sub-string 1 (- (length ?word) 2) ?word))
    	(bind ?h_word (explode$ (str-cat "@"?h_word )))
    	(assert (id-HM-source ?id ?h_word Original_word))
 )
 ;----------------------------------------------------------------------------------------------------------------
 ; I am going to remarry when you die
 ; 1. if category is "verbal_noun" or "make_verbal_noun" fact present then check hindi mng in hindi_cat.gdbm if found then 
 ;    add nA to the h_mng
 (defrule verbal_noun_mng1
 (declare (salience 1000))
 (or (make_verbal_noun ?id)(id-cat_coarse ?id verbal_noun))
 ?f0<-(id-HM-source ?id ?h_word ?src)
 (test (neq ?h_word -))
 (not (made_verbal_noun ?id))
 =>
        (bind ?a (gdbm_lookup "hindi_cat.gdbm" ?h_word))
        (if (eq ?a "FALSE") then
		(if (neq (str-index "_" ?h_word) FALSE) then
			(bind ?len 0)
        	        (bind ?str1 ?h_word)
                	(bind ?str_len (length ?h_word))
	                (while (neq (str-index "_" ?h_word) FALSE)
        	                (bind ?index (str-index "_" ?h_word))
                	        (bind ?h_word (sub-string (+ ?index (+ ?len 1)) ?str_len ?str1) )
                        	(bind ?len (+ ?index ?len))
                	)
 			(bind ?b (gdbm_lookup "hindi_cat.gdbm" ?h_word))
			(if (neq ?b "FALSE") then
                                (retract ?f0)
	                	(bind ?str2 (sub-string 1 ?len ?str1))
				(bind ?h_word (explode$ (str-cat ?str2 ?h_word "nA")))
				(assert (id-HM-source ?id ?h_word ?src))
                                (assert (made_verbal_noun ?id))
                       )          	
 	       )	
          else
          (retract ?f0 )
          (bind ?h_word (explode$ (str-cat ?h_word "nA")))
          (assert (id-HM-source ?id ?h_word ?src))
          (assert (made_verbal_noun ?id))
                 
        )
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;She is making the girl feed the child .
 ;She made the girl feed the child .
 (defrule causative_verb_mng
 (declare (salience 800))
 (verb_type-verb-causative_verb-tam causative ?vrb_id ?causative_vrb_id ?tam)
 (id-HM-source ?causative_vrb_id ?h_mng ?src)
 (id-HM-source ?vrb_id ?hmng ?src1)
 ?mng<-(meaning_to_be_decided ?causative_vrb_id)
 ?mng1<-(meaning_to_be_decided ?vrb_id)
 =>
        (bind ?a (gdbm_lookup "causative_verb_mng.gdbm" ?h_mng))
	(if (eq ?a "FALSE") then
		(printout  t  " ")
	else
		(printout ?*caus_mng-file* "(id-HM-source   "?causative_vrb_id"   "?a "   " ?src ")" crlf)
                (printout ?*caus_mng-file* "(id-HM-source   "?vrb_id"  "?hmng"   " ?src1 ")" crlf)
		(retract ?mng ?mng1)
	)
  )
 ;----------------------------------------------------------------------------------------------------------------
 ;Ex. She was asked about the pay increase but made no comment.
 ;The cat sat on a mat and scratched itself loudly .(2nd-parse)
 (defrule subject_insertion
 (declare (salience 800))
 (id-original_word 10001 ?word)
 (id-HM-source-sub_id 10001 ?h_mng ?src ?sub_id)
  =>
                (printout ?*caus_mng-file* "(id-HM-source   10001   "?h_mng "   " ?src")" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule hnd_mng
 (declare (salience 100))
 (id-HM-source ?id ?h_mng ?src)
 ?mng<-(meaning_to_be_decided ?id)
 =>
	(printout ?*caus_mng-file* "(id-HM-source   "?id"   "?h_mng"   " ?src ")" crlf)
	(retract ?mng)
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule Relative_clause
 (id-HM-source  10000   jo      Relative_clause)
  =>
	 (printout ?*caus_mng-file* "(id-HM-source  10000 jo Relative_clause)" crlf )
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;I thought it is right to resign.I hope he comes to the party tomorrow.
 (defrule Python_prog
 (id-HM-source  10000   ki      Python_prog)
  =>
	 (printout ?*caus_mng-file* "(id-HM-source  10000 ki Python_prog)" crlf )
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -1000))
 =>
	(close ?*caus_mng-file*)
 )
 ;----------------------------------------------------------------------------------------------------------------
