 (defglobal ?*caus_mng-file* = caus_mng_fp)

 (deffunction string_to_integer (?parser_id)
; Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))

 (deffunction never-called ()
 (assert (missing-level-id) )
 (assert (id-original_word) )
 (assert (id-number-src))
 (assert (id-wsd_number))
 (assert (affecting_id-affected_ids-wsd_group_root_mng))
 (assert (affecting_id-affected_ids-wsd_group_word_mng))
 (assert (verb_type-verb-causative_verb-tam causative))
 (assert (verb_type-verb-kriyA_mUla-tam))
 (assert (root-verbchunk-tam-chunkids))
 (assert (id-HM-source))
 (assert (meaning_has_been_decided))
 (assert (meaning_to_be_decided))
 (assert (id-wsd_root_mng))
 (assert (id-wsd_word_mng))
 (assert (id-H_vib_mng))
 (assert (id-wsd_root))
 (assert (make_verbal_noun))
 (assert (kriyA_id-object_viBakwi))
 (assert (kriyA_id-object2_viBakwi))
 (assert (kriyA_id-subject_viBakwi))
 (assert (kriyA_id-object1_viBakwi))
 (assert (id-tam_type))
 (assert (id-E_tam-H_tam_mng))
 (assert (id-preceeding_part_of_verb))
 (assert (root_id-TAM-vachan))
 (assert (id-cat_coarse))
 (assert (id-cat))
 (assert (id-original_word))
 (assert (id-root))
 (assert (id-attach_emphatic))
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
 ;Added by Shirisha Manju (14-09-11)
 ;We had wasted our journey.I showed them how they should do it.
 (defrule modify_mng
 (declare (salience 700))
 (id-original_word ?id  ?w&our|Our|ours|me|them|we|We|us|My|my)
 ?f0<-(id-HM-source ?id ?h_mng ?src&WSD_root_mng|Default)
 ?mng<-(meaning_to_be_decided ?id)
 =>
	(if (eq ?w them) then
		(printout ?*caus_mng-file* "(id-HM-source   "?id"   vaha   Word)" crlf)
	else
		(printout ?*caus_mng-file* "(id-HM-source   "?id"   mEM   Word)" crlf)
	)
        (retract ?mng)
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
 ; Modified by Shirisha Manju -- instead of values used variables
 (defrule mng_for_10000_id
 ?f0<-(id-HM-source  10000   ?mng    ?src)
  =>	
	(retract ?f0)
	(printout ?*caus_mng-file* "(id-HM-source  10000 "?mng"  " ?src ")" crlf )
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -1000))
 =>
	(close ?*caus_mng-file*)
 )
 ;----------------------------------------------------------------------------------------------------------------
