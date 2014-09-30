 (deftemplate word-morph(slot original_word)(slot morph_word)(slot root)(slot category)(slot suffix)(slot number))
 (defglobal ?*morph_cons_file* = morph_cons_fp)
 (defglobal ?*rev_root_file* = rev_rt_fp)

 (deffunction never-called ()
 (assert (missing-level-id) )
 (assert (id-number-src))
 (assert (id-wsd_number))
 (assert (affecting_id-affected_ids-wsd_group_root_mng))
 (assert (affecting_id-affected_ids-wsd_group_word_mng))
 (assert (root_id-TAM-vachan))
 (assert (id-wsd_root))
 (assert (id-wsd_root_mng))
 (assert (id-wsd_word_mng))
 (assert (kriyA_id-object2_viBakwi))
 (assert (kriyA_id-object_viBakwi))
 (assert (kriyA_id-subject_viBakwi))
 (assert (kriyA_id-object1_viBakwi))
 (assert (id-H_vib_mng))
 (assert (id-root-category-suffix-number))
 (assert (meaning_has_been_decided))
 (assert (make_verbal_noun))
 (assert (id-root))
 (assert (id-preceeding_part_of_verb))
 (assert (id-attach_emphatic))
 (assert (id-eng-src))
 (assert (id-attach_eng_mng))
 (assert (id-wsd_viBakwi))
 (assert (id-HM-source))
 (assert (id-domain_type))
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;When root is revised from WSD then revising morph information. Modified by Roja(16-05-14). Suggested by Chaitanya Sir.
 ;Ex: When I went there, I found all the doors shut. 
 ;In above example root of the word 'found' is revised from 'found' to 'find'.
 ;So 'find' morph information is used. So revising preffered_morph 
 ;(Note: disambiguation of ed and en is done in tam_id.clp so here checking only one morph information even if it has more than one.)
 ;Considering revised root from WSD rule modified by Roja(07-04-11)
 ;Ex: The leaves of the scarlet oak trees turn red in October.
 (defrule p_morph
 (declare (salience 700))
 (id-wsd_root ?id ?root)
 ?f0<-(id-root-category-suffix-number ?id ?root1 $?)
 ?f1<-(id-root ?id ?root1)
 (word-morph(root ?root)(category ?cat)(suffix  ?suf)(number ?num))
 =>
	(retract ?f0 ?f1)
	(printout ?*morph_cons_file* "(id-root-category-suffix-number " ?id" " ?root" "  ?cat  "   "  ?suf  "  "  ?num ")" crlf)
	(printout ?*rev_root_file* "(id-root " ?id" " ?root" )" crlf)
 ) 
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule def_p_morph
 (declare (salience 500))
 (id-root-category-suffix-number $?ids)
 =>
	(printout ?*morph_cons_file* "(id-root-category-suffix-number " (implode$ $?ids)")" crlf) 
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule def_root
 (declare (salience 500))
 ?f0<-(id-root ?id ?root)
 =>
	(retract ?f0)
	(printout ?*rev_root_file* "(id-root " ?id" " ?root" )" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------- 
 (defrule morph_root_end
 (declare (salience 100))
 =>
	(close ?*morph_cons_file*)
	(close ?*rev_root_file*)
 )
 ;--------------------------------------------------------------------------------------------------------------------
