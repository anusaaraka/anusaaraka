 (defglobal ?*debug_flag* = TRUE)
 
 ;--------------------------------------------------------------------------------------------------------- 
 ;Added by Roja (03-05-13) Suggested by Chaitanya Sir
 ;Meaning for adjective
 (defrule load_adjective.clp
 (declare (salience 7500))
 (id-cat_coarse ?id adjective)
 (not (file_loaded ?file))
 =>
	(bind ?file (str-cat ?*path* "/Anu_clp_files/adjective.clp"))
	(load* ?file)
	(assert (file_loaded ?file))
 )
 ;--------------------------------------------------------------------------------------------------------- 
 ; Load user original word file
 (defrule load_user_org_word_file
 (declare (salience 7000))
 (id-original_word ?id ?word)
 (not (meaning_has_been_decided ?id))
 (not (file_loaded ?id))
 (not (not_SandBox)) ;Added for server purpose. (Suggested by Chaitanya Sir, Added by Roja(05-03-11))
 =>
        (bind ?file (str-cat ?*provisional_wsd_path* "/canonical_form_prov_wsd_rules/" ?word ".clp"))
        (if (neq (load* ?file) FALSE) then
            (assert (file_loaded ?id))
       )
 )
 ;---------------------------------------------------------------------------------------------------------
 ; Load user word file
 (defrule load_user_word_file
 (declare (salience 6000))
 (id-word ?id ?word)
 (not (meaning_has_been_decided ?id))
 (not (file_loaded ?id))
 (not (not_SandBox)) ;Added for server purpose. (Suggested by Chaitanya Sir, Added by Roja(05-03-11))
 =>
        (bind ?file (str-cat ?*provisional_wsd_path* "/canonical_form_prov_wsd_rules/" ?word ".clp"))
        (if (neq (load* ?file) FALSE) then
            (assert (file_loaded ?id))
       )
 )
 ;---------------------------------------------------------------------------------------------------------
 ; Load user root file
 (defrule load_user_root_file
 (declare (salience 5000))
 (id-root ?id ?root)
 (not (meaning_has_been_decided ?id))
 (not (file_loaded ?id))
 (not (not_SandBox)) ;Added for server purpose. (Suggested by Chaitanya Sir, Added by Roja(05-03-11))
 =>
        (bind ?file (str-cat ?*provisional_wsd_path* "/canonical_form_prov_wsd_rules/" ?root ".clp"))
        (if (neq (load* ?file) FALSE) then
            (assert (file_loaded ?id))
       )
 )
 ;---------------------------------------------------------------------------------------------------------
 ; Load original word file 
 (defrule load_org_word_file
 (declare (salience 4000))
 (id-original_word ?id ?word)
 (not (meaning_has_been_decided ?id))
 (not (file_loaded ?id))
 =>
        (bind ?file (str-cat ?*path* "/WSD/wsd_rules/canonical_form_wsd_rules/" ?word ".clp"))
        (if (neq (load* ?file) FALSE) then
            (assert (file_loaded ?id))
       )
 )
 ;---------------------------------------------------------------------------------------------------------
 ; Load word file
 (defrule load_word_file
 (declare (salience 3000))
 (id-word ?id ?word)
 (not (meaning_has_been_decided ?id))
 (not (file_loaded ?id))
 =>
	(bind ?file (str-cat ?*path* "/WSD/wsd_rules/canonical_form_wsd_rules/" ?word ".clp"))        
	(if (neq (load* ?file) FALSE) then
        	(assert (file_loaded ?id))
	)
 )
 ;---------------------------------------------------------------------------------------------------------
 ; Load root file
 (defrule load_root_file
 (declare (salience 2000))
 (id-root ?id ?root)
 (not (meaning_has_been_decided ?id))
 (not (file_loaded ?id))
 =>
        (bind ?file (str-cat ?*path* "/WSD/wsd_rules/canonical_form_wsd_rules/" ?root ".clp"))
        (if (neq (load* ?file) FALSE) then
            (assert (file_loaded ?id))
       )
 )
 ;---------------------------------------------------------------------------------------------------------
;;The whole idea of ADVERTISING is to make people buy things .
;;(if for a word, word or root file is not present in wsd and has suffix as -ing in other  morph analysis then load the respective root file)
; (defrule suff_ing
; (declare (salience 1000))
; (id-cat_coarse ?id adjective|noun)
; (not (meaning_has_been_decided ?id))
; (id-original_word ?id ?word)
; (or (word-morph (original_word  ?word)(root ?root)(suffix	ing))(word-morph (original_word  ?word)(root ?root)(suffix      en))(word-morph (original_word  ?word)(root ?root)(suffix      ed)))
; (not (file_loaded ?id))
;  =>
;	(bind ?file (str-cat ?*path* "/WSD/wsd_rules/canonical_form_wsd_rules/" ?root ".clp")	)
;        (if (neq (load* ?file) FALSE) then
;            (assert (file_loaded ?id))
;       	)
; ) 
 ;---------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -10000))
  =>
        (close wsd_fp)
 )
 ;---------------------------------------------------------------------------------------------------------
