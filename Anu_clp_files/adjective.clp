;This file added by Roja (03-05-13) Suggested by Chaitanya Sir
;REASON to add: EX: An [extended] body, in the first place, is a system of particles.
;Before root is 'extend' and cat is 'verb'
;While doing alignment work in MINION, for the above sentence extend mng in manual is 'viswqwa'
;We are getting this mng directly from default dic when word is extended_adjective-> viswqwa
;So this file is given importance in this way.

;When category is adjective loading with original word and word
;If file not loaded then checking in default dictionary
;If not found in default dictionary then checking in verb root file and printing a Warning message.

 ;Load user original word file
 (defrule load_user_adj_org_word_file
 (declare (salience -6001))
 (id-original_word ?id ?word)
 (id-cat_coarse ?id adjective)
 (not (meaning_has_been_decided ?id))
 ;(not (file_loaded ?id)) ;Commented this fact by Roja(09-05-14) If mng not decided by orig_wrd then to check word commented this fact
 (not (not_SandBox)) ;Added for server purpose. (Suggested by Chaitanya Sir, Added by Roja(05-03-11))
 =>
        (bind ?file (str-cat ?*provisional_wsd_path* "/canonical_form_prov_wsd_rules/" ?word ".clp"))
        (if (neq (load* ?file) FALSE) then
            (assert (file_loaded ?id))
       )
 )
 ;---------------------------------------------------------------------------------------------------------
 ;Load user word file
 (defrule load_user_adj_word_file
 (declare (salience -6002))
 (id-word ?id ?word)
 (id-cat_coarse ?id adjective)
 (not (meaning_has_been_decided ?id))
 ;(not (file_loaded ?id)) ;Commented this fact by Roja(09-05-14) If mng not decided by orig_wrd then to check word commented this fact
 (not (not_SandBox)) ;Added for server purpose. (Suggested by Chaitanya Sir, Added by Roja(05-03-11))
 =>
        (bind ?file (str-cat ?*provisional_wsd_path* "/canonical_form_prov_wsd_rules/" ?word ".clp"))
        (if (neq (load* ?file) FALSE) then
            (assert (file_loaded ?id))
       )
 )
 ;---------------------------------------------------------------------------------------------------------
 ;Loads system original word file 
 (defrule load_adj_org_word_file
 (declare (salience -6003))
 (id-original_word ?id ?word)
 (id-cat_coarse ?id adjective)
 (not (meaning_has_been_decided ?id))
 ;(not (file_loaded ?id));Commented this fact by Roja(09-05-14). If mng not decided by orig_wrd then to check word commented this fact
 =>
        (bind ?file (str-cat ?*path* "/WSD/wsd_rules/canonical_form_wsd_rules/" ?word ".clp"))
        (if (neq (load* ?file) FALSE) then
            (assert (file_loaded ?id))
       )
 )
 ;---------------------------------------------------------------------------------------------------------
 ; Load system word file
 (defrule load_adj_word_file
 (declare (salience -6004))
 (id-word ?id ?word)
 (id-cat_coarse ?id adjective)
 (not (meaning_has_been_decided ?id))
 ;(not (file_loaded ?id));Commented this fact by Roja(09-05-14). If mng not decided by orig_wrd then to check word commented this fact
 =>
        (bind ?file (str-cat ?*path* "/WSD/wsd_rules/canonical_form_wsd_rules/" ?word ".clp"))
        (if (neq (load* ?file) FALSE) then
                (assert (file_loaded ?id))
        )
 )
 ;---------------------------------------------------------------------------------------------------------
 ; Added by Roja (03-05-13)
 ; Lookup original word in dictionary (only for adjective case)
 ; He saw the broken window.
 ; (NOTE: Giving least salience to this rule. To handle cases like: file loads from WSD but meaning is not decided) 
 (defrule load_dic_org_word_file
 (declare (salience -9900))
 (id-original_word ?id ?org_wrd)
 (id-cat_coarse ?id adjective)
 (test (neq (gdbm_lookup "default-iit-bombay-shabdanjali-dic.gdbm" (str-cat ?org_wrd "_" adjective)) "FALSE"))
 (meaning_to_be_decided ?id)
 (not (meaning_has_been_decided ?id))
 =>
	(bind ?a (gdbm_lookup "default-iit-bombay-shabdanjali-dic.gdbm" (str-cat ?org_wrd "_" adjective)))
        (if (neq ?a "FALSE") then
           (if (neq (str-index "/" ?a) FALSE) then
		(bind ?h_mng (string-to-field (sub-string  1 (- (str-index "/" ?a) 1) ?a)))
                (assert (id-wsd_root_mng ?id ?h_mng))
		(assert (id-eng-src  ?id  ?org_wrd Word_mng)) ;As Mng is decided on word
                (assert (meaning_has_been_decided ?id))
                (assert (file_loaded ?id))
		(printout t "Warning: Multiple adjective senses are available for "?org_wrd ". WSD rule is required " crlf)
		(if ?*debug_flag* then
		(printout wsd_fp "(default-iit-bombay-shabdanjali-dic.gdbm  " ?id " " ?org_wrd "  "?h_mng ")" crlf)) ;Added ?id for debug purpose.
            else
                (bind ?h_mng  (string-to-field ?a))
		(assert (id-wsd_root_mng ?id ?h_mng))
		(assert (id-eng-src  ?id  ?org_wrd Word_mng)) ;As Mng is decided on word
        	(assert (file_loaded ?id))
		(assert (meaning_has_been_decided ?id))
		(if ?*debug_flag* then
                (printout wsd_fp "(default-iit-bombay-shabdanjali-dic.gdbm  " ?id " " ?org_wrd "  "?h_mng ")" crlf)) ;Added ?id for debug purpose.
           )
       )
 )
 ;---------------------------------------------------------------------------------------------------------
 ; Added by Roja (03-05-13)
 ; Load word in dictionary (only for adjective case)
 ; Broken windows need to be replaced. 
 ; (NOTE: Giving least salience to this rule. To handle cases like: file loads from WSD but meaning is not decided) 
 (defrule load_dic_word_file
 (declare (salience -9950))
 (id-word ?id ?wrd)
 (id-cat_coarse ?id adjective)
 (test (neq (gdbm_lookup "default-iit-bombay-shabdanjali-dic.gdbm" (str-cat ?wrd "_" adjective)) "FALSE"))
 (meaning_to_be_decided ?id)
 (not (meaning_has_been_decided ?id))
 =>
        (bind ?a (gdbm_lookup "default-iit-bombay-shabdanjali-dic.gdbm" (str-cat ?wrd "_" adjective)))
        (if (neq ?a "FALSE") then
           (if (neq (str-index "/" ?a) FALSE) then
                (bind ?h_mng (string-to-field (sub-string  1 (- (str-index "/" ?a) 1) ?a)))
		(assert (id-wsd_root_mng ?id ?h_mng))
		(assert (id-eng-src  ?id  ?wrd Word_mng)) ;As Mng is decided on word
		(assert (meaning_has_been_decided ?id))
		(assert (file_loaded ?id))
		(printout t "Warning: Multiple adjective senses are available for "?wrd ". WSD rule is required " crlf)
		(if ?*debug_flag* then
                (printout wsd_fp "(default-iit-bombay-shabdanjali-dic.gdbm  " ?id " " ?wrd "  "?h_mng ")" crlf));Added ?id for debug purpose.
            else
                (bind ?h_mng  (string-to-field ?a))
		(assert (id-wsd_root_mng ?id ?h_mng))
		(assert (id-eng-src  ?id  ?wrd Word_mng)) ;As Mng is decided on word
		(assert (meaning_has_been_decided ?id))
	        (assert (file_loaded ?id))
		(if ?*debug_flag* then
                (printout wsd_fp "(default-iit-bombay-shabdanjali-dic.gdbm  " ?id " " ?wrd "  "?h_mng ")" crlf)) ;Added ?id for debug purpose. 
           )
       )
 )
 ;---------------------------------------------------------------------------------------------------------
			 ;Note: As of now no example sentences for below rules:
 ;---------------------------------------------------------------------------------------------------------
 ;loading user original word with verb root
 (defrule load_user_org_wrd_with_verb_root
 (declare (salience -9951))
 (id-original_word ?id ?org_wrd)
 (id-cat_coarse ?id adjective)
 (word-morph (original_word  ?org_wrd)(root ?root)(category verb))
 (not (meaning_has_been_decided ?id))
 (meaning_to_be_decided ?id)
 (not (mng_need_to_be_decided_on_verb_root ?id))
 =>
	(bind ?file (str-cat ?*provisional_wsd_path* "/canonical_form_prov_wsd_rules/" ?root ".clp"))
	(assert (mng_need_to_be_decided_on_verb_root ?id))
 )
 ;---------------------------------------------------------------------------------------------------------
 ;loading user word with verb root
 (defrule load_user_wrd_with_verb_root
 (declare (salience -9952))
 (id-word ?id ?wrd)
 (id-cat_coarse ?id adjective)
 (word-morph (original_word  ?wrd)(root ?root)(category verb))
 (not (meaning_has_been_decided ?id))
 (meaning_to_be_decided ?id)
 (not (mng_need_to_be_decided_on_verb_root ?id))
 =>
        (bind ?file (str-cat ?*provisional_wsd_path* "/canonical_form_prov_wsd_rules/" ?root ".clp"))
	(assert (mng_need_to_be_decided_on_verb_root ?id))
 )
 ;---------------------------------------------------------------------------------------------------------
 ;loading original word with verb root
 (defrule load_org_wrd_with_verb_root
 (declare (salience -9953))
 (id-original_word ?id ?org_wrd)
 (id-cat_coarse ?id adjective)
 (word-morph (original_word  ?org_wrd)(root ?root)(category verb))
 (not (meaning_has_been_decided ?id))
 (meaning_to_be_decided ?id)
 (not (mng_need_to_be_decided_on_verb_root ?id))
 =>
	(bind ?file (str-cat ?*path* "/WSD/wsd_rules/canonical_form_wsd_rules/" ?root ".clp"))
	(assert (mng_need_to_be_decided_on_verb_root ?id))
 ) 
 ;---------------------------------------------------------------------------------------------------------
 ;loading word with verb root
 (defrule load_wrd_with_verb_root
 (declare (salience -9954))
 (id-word ?id ?wrd)
 (id-cat_coarse ?id adjective)
 (word-morph (original_word  ?wrd)(root ?root)(category verb))
 (not (meaning_has_been_decided ?id))
 (meaning_to_be_decided ?id)
 (not (mng_need_to_be_decided_on_verb_root ?id))
 =>
	(bind ?file (str-cat ?*path* "/WSD/wsd_rules/canonical_form_wsd_rules/" ?root ".clp"))
	(assert (mng_need_to_be_decided_on_verb_root ?id))
 )
 ;---------------------------------------------------------------------------------------------------------
 ;To check whether file the file is loaded  
 (defrule check_whether_mng_dcd
 (declare (salience -9955))
?f<-(mng_need_to_be_decided_on_verb_root ?id)
 (not (meaning_to_be_decided ?id))
 (id-word ?id ?wrd)
 =>
	(retract ?f)
	(printout t "Warning: Mng of "?wrd " decided from verb root file. Separate file need to be made" crlf) 
 )
 ;---------------------------------------------------------------------------------------------------------
 (defrule remove_dummy_fact_mng_need_to_be_decided_on_verb_root
 (declare (salience -9956))
 ?f<-(mng_need_to_be_decided_on_verb_root ?id)
 ?f1 <-(meaning_to_be_decided ?id)
 =>
	(retract ?f ?f1)
 )
 ;---------------------------------------------------------------------------------------------------------
