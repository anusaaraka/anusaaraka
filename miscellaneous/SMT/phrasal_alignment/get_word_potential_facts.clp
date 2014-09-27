(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot root (default 0))(multislot vibakthi (default 0))(multislot group_ids (default 0)))
;------------------------------------------------------------------------------------------------------------
(deffunction remove_character(?char ?str ?replace_char)
	(bind ?new_str "")
        (bind ?index (str-index ?char ?str))
        (if (neq ?index FALSE) then
        	(while (neq ?index FALSE)
                	(bind ?new_str (str-cat ?new_str (sub-string 1 (- ?index 1) ?str) ?replace_char))
                        (bind ?str (sub-string (+ ?index 1) (length ?str) ?str))
                        (bind ?index (str-index ?char ?str))
                )
        )
        (bind ?new_str (explode$ (str-cat ?new_str (sub-string 1 (length ?str) ?str))))
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju(29-05-13)
;In our experience, force is needed to push, carry or throw objects, deform or break them.--- hama saBI kA yaha anuBava [hE] ki vaswuoM ko Xakelane, le jAne aWavA Pefkane , nirUpiwa karane aWavA unheM wodane ke lie bala kI AvaSyakawA howI hE. 
(defrule rm_LWG_grouped_id_from_restricted_word
(declare (salience 2002))
(root-verbchunk-tam-chunkids ? ? ? ?id ? $?)
?f0<-(id-word ?id ?wrd&is|are|be)
=>
	(retract ?f0)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju(7-03-13)
; if eng multi mng and manual multi mng is same then rm the ids from order excluding the head
;The choice of a set of axes in a frame of reference depends upon the situation.
;First, that it travels with enormous speed and second, that it travels in a straight line.
(defrule rm_comp_ids_from_order
(declare (salience 2001))
(or (ids-phy_cmp_mng-eng_mng $? ?phy_mng ?)(ids-cmp_mng-eng_mng $? ?phy_mng ?))
(or (ids-phy_cmp_mng-head-cat-mng_typ-priority $?ids ?phy_mng ?head ? ? ?)(ids-cmp_mng-head-cat-mng_typ-priority $?ids ?phy_mng ?head ? ? ?))
?f0<-(hindi_id_order $?order)
(not (removed_id_for_phy_mng ?phy_mng))
=>
	(retract ?f0)
	(loop-for-count(?i 1 (length $?ids))
        	(bind ?id (nth$ ?i $?ids))
		(if (neq ?id (nth$ ?head $?ids)) then
			(bind $?order (delete-member$ $?order ?id))
		)
	)
	(assert (hindi_id_order $?order))
	(assert (removed_id_for_phy_mng ?phy_mng))
)
;------------------------------------------------------------------------------------------------------------
(defrule get_eng_dic
(declare (salience 2001))
(id-word ?aid ?wrd)
(test (eq (numberp ?wrd) FALSE ))
(test (neq (gdbm_lookup "restricted_eng_words.gdbm" ?wrd) "FALSE"))
=>
	(bind $?dic_list (create$ ))
	(bind ?new_mng (gdbm_lookup "restricted_eng_words.gdbm" ?wrd))
	(bind ?slh_index (str-index "/" ?new_mng))
        (if (and (neq (length ?new_mng) 0)(neq ?slh_index FALSE)) then
                (while (neq ?slh_index FALSE)
                        (bind ?new_mng1 (sub-string 1 (- ?slh_index 1) ?new_mng))
                        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
                        (bind ?new_mng1 (remove_character "-" (implode$ (create$  ?new_mng1)) " "))
			(bind $?dic_list (create$ $?dic_list ?new_mng1 ,))
                        (bind ?new_mng (sub-string (+ ?slh_index 1) (length ?new_mng) ?new_mng))
                        (bind ?slh_index (str-index "/" ?new_mng))
                )
        )
	(bind ?new_mng1 (str-cat (sub-string 1 (length ?new_mng) ?new_mng)))
        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
        (bind ?new_mng1 (remove_character "-" (implode$ (create$ ?new_mng1)) " "))
	(bind $?dic_list (create$ $?dic_list ?new_mng1))
	(assert (anu_id-word-possible_mngs ?aid ?wrd $?dic_list))
)
;------------------------------------------------------------------------------------------------------------
;Guard, stop this donkey and let [me] get off [his] back! I can not do without him.
(defrule get_hnd_dic
(declare (salience 2001))
(manual_word_info (head_id ?mid) (word $?mng) (root ?root))
;(manual_id_en_hi-word-root-vib-grp_ids ?mid $?mng - ?root - $?vib - $?)
(test (eq (numberp (implode$ (create$ $?mng))) FALSE ))
(test (or (neq (gdbm_lookup "restricted_hnd_words.gdbm" (implode$ (create$ $?mng))) "FALSE")(neq (gdbm_lookup "restricted_hnd_words.gdbm" ?root) "FALSE")))
=>
	(bind $?dic_list (create$ ))
        (bind ?new_mng (gdbm_lookup "restricted_hnd_words.gdbm" (implode$ (create$ $?mng))))
	(if (eq ?new_mng "FALSE") then
		(bind ?new_mng (gdbm_lookup "restricted_hnd_words.gdbm" ?root))
	)
        (bind ?slh_index (str-index "/" ?new_mng))
        (if (and (neq (length ?new_mng) 0)(neq ?slh_index FALSE)) then
                (while (neq ?slh_index FALSE)
                        (bind ?new_mng1 (sub-string 1 (- ?slh_index 1) ?new_mng))
                        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
                        (bind ?new_mng1 (remove_character "-" (implode$ (create$  ?new_mng1)) " "))
			(bind $?dic_list (create$ $?dic_list ?new_mng1 ,))
                        (bind ?new_mng (sub-string (+ ?slh_index 1) (length ?new_mng) ?new_mng))
                        (bind ?slh_index (str-index "/" ?new_mng))
                )
		
        )
	(bind ?new_mng1 (str-cat (sub-string 1 (length ?new_mng) ?new_mng)))
        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
        (bind ?new_mng1 (remove_character "-" (implode$ (create$ ?new_mng1)) " "))
	(bind $?dic_list (create$ $?dic_list ?new_mng1))
        (assert (man_id-word-possible_mngs ?mid $?mng $?dic_list))
)   
;------------------------------------------------------------------------------------------------------------
;yaha vahI UrjA hE jo nABikIya Sakwi janana waWA nABikIya visPotoM meM mukwa howI hE
;This is the energy which is released in a nuclear power generation and nuclear explosions.
;The reflected ray simply retraces the path. -- parAvarwiwa kiraNa kevala [apanA] paWa punaH anureKiwa karawI hE .
;Imagine the world without a pair of functional eyes. -- jarA [isa] saMsAra kI kalpanA binA kriyAwmaka newroM ke yugala ke kIjie.
;For this, we develop the concepts of velocity and acceleration. isake lie hameM vega waWA wvaraNa kI XAraNA ko samaJanA hogA
(defrule potential_facts_for_eng
(declare (salience 2000))
(id-word ?aid ?wrd)
(anu_id-word-possible_mngs ?aid ?wrd $?pos_mngs)
(or (manual_id-word ?mid $?man_mng)(manual_word_info (head_id ?mid) (word $?man_mng)))
;(or (manual_id-word ?mid $?man_mng)(manual_id_en_hi-word-root-vib-grp_ids ?mid $?man_mng - ? - $? - $?))
(test (subsetp $?man_mng $?pos_mngs))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
	(assert (anu_id-man_id ?aid ?mid))
)
;------------------------------------------------------------------------------------------------------------
(defrule potential_facts_for_hnd
(declare (salience 2000))
(manual_id-word ?mid $?man_mng)
(id-word ?aid ?wrd)
(man_id-word-possible_mngs ?mid $?man_mng $?pos_mngs)
(test (member$ ?wrd $?pos_mngs))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
	(assert (man_id-anu_id ?mid ?aid))
)
;------------------------------------------------------------------------------------------------------------
(defrule potential_count_of_manual_id
(declare (salience 1500))
(or (potential_assignment_vacancy_id-candidate_id ?aid1 ?mid) (man_id-anu_id ?mid ?aid1)(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ?mid $?))
(not (man_id-candidate_ids ?mid $?))
=>
        (assert (man_id-candidate_ids ?mid))
)
;------------------------------------------------------------------------------------------------------------
(defrule potential_count_of_manual_id1
(declare (salience 1500))
(or (potential_assignment_vacancy_id-candidate_id ?aid ?mid) (man_id-anu_id ?mid ?aid)(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ?mid $?))
?f<-(man_id-candidate_ids ?mid $?mem)
(test (eq (member$ ?aid $?mem) FALSE))
=>
        (retract ?f)
        (bind $?mem (sort > (create$ $?mem ?aid)))
        (assert (man_id-candidate_ids ?mid $?mem))
)
;------------------------------------------------------------------------------------------------------------
(defrule potential_count_of_anu_id
(declare (salience 1200))
(or (potential_assignment_vacancy_id-candidate_id ?aid ?mid1) (anu_id-man_id ?aid ?mid1)(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ?mid $?))
(not (anu_id-candidate_ids ?aid $?))
=>
        (assert (anu_id-candidate_ids ?aid))
)
;------------------------------------------------------------------------------------------------------------
(defrule potential_count_of_anu_id1
(declare (salience 1200))
(or (potential_assignment_vacancy_id-candidate_id ?aid ?mid) (anu_id-man_id ?aid ?mid)(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ?mid $?))
?f<-(anu_id-candidate_ids ?aid $?mem)
(test (eq (member$ ?mid $?mem) FALSE))
(id-word ?aid ?word)
=>
        (retract ?f)
        (bind $?mem (sort > (create$ $?mem ?mid)))
        (assert (anu_id-candidate_ids ?aid $?mem))
)
;------------------------------------------------------------------------------------------------------------
