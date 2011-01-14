;Algorithm for deciding number information of individual paxa in English.
;If (Link parser is success)
;	If Link parser has assigned  number to paxa_head.
;		Assign the number to the paxa.
;else 
;	If Morph has defined the number for paxa_head.
;		Assign the number to the paxa.
;else 
;	If Determiner of the paxa (1st word) contains either a,an
;		Assign number as singular to the paxa.
;else
;	If paxa group contains the word (one or 1) 
;		Assign number as singular to the paxa.
;	If paxa group contains the word (two,three... )  
;	 	Assign number as plural to the paxa.
;else 
;	If the paxa is agreeing with verb paxa.
;		Assign the number of verb paxa to this paxa.
;else 
;	If the paxa is in samAnAXikaran relation with another paxa. 
;		Assign the number of samAnAXikaran paxa with this paxa.


(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0)))

 (deffacts dummy_facts 
 (kriyA-without_reference_to_saMbanXI) 
 (kriyA-without_reference_to_saMbanXI) 
 (viSeRya-through_saMbanXI) 
 (kriyA-in_the_form_of_saMbanXI) 
 (kriyA-per_saMbanXI) 
 (kriyA-out_of_saMbanXI) 
 (viSeRya-next_to_saMbanXI) 
 (kriyA-regardless_of_saMbanXI) 
 (viSeRya-per_saMbanXI) 
 (kriyA-in_response_to_saMbanXI) 
 (kriyA-on_the_right_side_of_saMbanXI) 
 (kriyA-for_the_sake_of_saMbanXI) 
 (kriyA-along_with_saMbanXI) 
 (kriyA-from_inside_saMbanXI) 
 (missing-level-id) 
 (id-original_word) 
 (id-number-src) 
 (id-number-src) 
 (id-cat)
 (root_id-TAM-vachan)
 (id-attach_emphatic)
 (id-preceeding_part_of_verb)
 (kriyA_id-object1_viBakwi)
 (kriyA_id-subject_viBakwi)
 (kriyA_id-object2_viBakwi)
 (kriyA_id-object_viBakwi)
 (meaning_has_been_decided)
 (affecting_id-affected_ids-wsd_group_root_mng)
 (affecting_id-affected_ids-wsd_group_word_mng)
 (id-H_vib_mng)
 (verb_agrmt-subject_id-head_id subject)
 (verb_agrmt-object_id-head_id)
 (verb_agrmt-head_id)
 (id-root-category-suffix-number)
 (id-original_word)
 (vachan_to_be_decided)
 (No complete linkages found)
 (link_name-link_expansion)
 (link_name-lnode-rnode)
 (id-wsd_root_mng)
 (id-wsd_root)
 (id-wsd_word_mng)
 (make_verbal_noun)
 (id-word)
 (id-last_word)
 (id-wsd_number)
 )
 ;------------------------------------------------------------------------------------------------
 ;get num from wsd
 (defrule number_frm_wsd
 (declare (salience 1150)) 
 (id-wsd_number ?id ?num)
 (not (id-number-src ?id ? ?))
  =>
        (assert (id-number-src ?id  ?num WSD))
 )
 ;------------------------------------------------------------------------------------------------
 ; get number information from Ss link
 (defrule link_num_Ss
 (declare (salience 1100))
 (link_name-link_expansion   ?sub   S s $?vars)
 (link_name-lnode-rnode ?sub ?lnode ?rnode)
 (not (id-number-src ?lnode ? ?))
 =>
	(assert (id-number-src ?lnode  s Link_parser))
 )
 ;------------------------------------------------------------------------------------------------
 ; get number information from Sp link
 (defrule link_num_Sp
 (declare (salience 1100))
 (link_name-link_expansion   ?sub   S p $?vars)
 (link_name-lnode-rnode ?sub ?lnode ?rnode)
 (not (id-number-src ?lnode ? ?))
 (not (id-cat_coarse ?lnode number));Ex. And 21 could stand for the 21 cm radio frequency of hydrogen in space .
 =>
	(assert (id-number-src ?lnode  p  Link_parser))
 )
 ;------------------------------------------------------------------------------------------------
 ;Added by Meena(21.6.10)
 ;You owe us Rs 130 according to our records . 
 ;get number information from NM link
 (defrule link_num_NM
 (declare (salience 1100))
 (link_name-link_expansion   NM   N M $?vars)
 (link_name-lnode-rnode  NM  ?lnode  ?rnode)
 (not (id-number-src ?lnode ? ?))
 =>
        (assert (id-number-src ?lnode  p Link_parser))
 )
 ;------------------------------------------------------------------------------------------------
 ;get number information from SIs link
 (defrule link_num_SIs
 (declare (salience 1050))
 (link_name-link_expansion   ?sub   S I s $?vars)
 (link_name-lnode-rnode ?sub ?lnode ?rnode)
 (not (id-number-src ?lnode ? ?))
 =>
	(assert (id-number-src ?lnode  s Link_parser))
 )
 ;------------------------------------------------------------------------------------------------
 ;get number information from SIp link
 (defrule link_num_SIp
 (declare (salience 1050))
 (link_name-link_expansion   ?sub   S I p $?vars)
 (link_name-lnode-rnode ?sub ?lnode ?rnode)
 (not (id-number-src ?lnode ? ?))
 =>
	(assert (id-number-src ?lnode  p Link_parser))
 )
 ;------------------------------------------------------------------------------------------------
 (defrule get_num_frm_morph
 (declare (salience 1000))
 (pada_info (group_head_id ?pada_id))
 ?f1<-(id-root-category-suffix-number  ?pada_id ? ?morph_cat ?suf ?num)
 (test (neq ?num -))
 (not (id-number-src ?pada_id ? ?))
; ?f0<-(vachan_to_be_decided ?pada_id)
 =>
	(retract ?f1)
	(assert (id-number-src ?pada_id ?num Morph))
 )
 ;------------------------------------------------------------------------------------------------
 (defrule get_num_frm_determiner
 (declare (salience 900))
 (pada_info (group_head_id ?pada_id)(group_ids ?det_id $?word_ids))
 (id-original_word ?det_id A|a|An|an)
 ?f1<-(id-root-category-suffix-number  ?pada_id ? ?morph_cat ?suf ?num)
 ;(test (neq ?num -))
 (not (id-number-src ?pada_id ? ?))
 =>
		(retract ?f1)
		(assert (id-number-src ?pada_id s Det_pada))
 )
 ;------------------------------------------------------------------------------------------------ 
 (defrule get_num_frm_wrd
 (declare (salience 800))
 (pada_info (group_head_id ?pada_id)(group_ids $?word_ids))
 (id-original_word ?wrd_id ?word)
 ?f1<-(id-root-category-suffix-number  ?pada_id ? ?morph_cat ?suf ?num)
 (test (neq ?num -))
 (not (id-number-src ?pada_id ?num1 ?))
 =>
 	(bind ?flag 0)
	(bind ?length (length $?word_ids))
        (loop-for-count (?i  1 ?length)
        	(bind ?id (nth$ ?i $?word_ids))
	        (if (and (eq ?id ?wrd_id)(or(eq ?word 1)(eq ?word one))) then
        		(bind ?flag 1)
        	)
	)
	(if (eq ?flag 1) then
		(retract ?f1)
		(assert (id-number-src ?pada_id ?num number_pada))
	)
 )
 ;------------------------------------------------------------------------------------------------
 ; All are going to school .
 ; Added by Shirisha Manju (23-11-09)
 (defrule get_num_frm_plural_list
 (declare (salience 1140))
 (id-word ?id ?word&:(not (numberp ?word)))
 (not (id-number-src ?id ?num ?))
 =>
	(bind ?a (gdbm_lookup "plural_words.gdbm" ?word))
        (if (neq ?a "FALSE") then
               (assert (id-number-src ?id   p   plural_words.gdbm))
        )
 )
 ;------------------------------------------------------------------------------------------------
 (defrule get_num
 (declare (salience 500))
 (id-root-category-suffix-number  ?pada_id ? ?morph_cat ?suf ?num)
 (not (id-number-src ?pada_id ? ?))
 =>
	(if (neq ?num -) then
		(assert (id-number-src ?pada_id ?num Morph))
	else 
		(assert (id-number-src ?pada_id s Default))
	)
 )
 ;------------------------------------------------------------------------------------------------
 ;The Danes are nice people.
 ;Added newly 27-07-10 
 (defrule get_num_for_sub
 (declare (salience 1500))
 (id-word ?kri are|were)
 (verb_agrmt-subject_id-head_id  subject  ?sub  ?kri)
 =>
 (assert (id-number-src ?sub p OL))
 )
 ;------------------------------------------------------------------------------------------------
