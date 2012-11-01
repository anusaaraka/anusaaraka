;This file is written by Shirisha Manju (08-10-12)
(defglobal ?*dic_fp2*  = dic_fp2)
(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))


;(deffunction remove_character(?char ?str ?replace_char)
;                        (bind ?new_str "")
;                        (bind ?index (str-index ?char ?str))
;                        (if (neq ?index FALSE) then
;                        (while (neq ?index FALSE)
;                        (bind ?new_str (str-cat ?new_str (sub-string 1 (- ?index 1) ?str) ?replace_char))
;                        (bind ?str (sub-string (+ ?index 1) (length ?str) ?str))
;                        (bind ?index (str-index ?char ?str))
;                        )
;                        )
;                (bind ?new_str (explode$ (str-cat ?new_str (sub-string 1 (length ?str) ?str))))
; )
;
;
;(defrule get_anu_tam
;(declare (salience 100))
;(pada_info (group_head_id ?hid)(group_ids $?ids) (H_tam ?tam&~0))
;=>
;	(if (neq (str-index "_" ?tam) FALSE) then
;		(bind ?tam (remove_character "_" (implode$ (create$  ?tam)) " "))
;	else
;		(bind ?tam ?tam)
;	)
;	(assert (id-tam ?hid ?tam)) 
;)

(defrule print_com1
(declare (salience 100))
=>
        (printout  ?*dic_fp2* "----------------- phrases with some logic -------------" crlf)
)


;Plants tend to turn [towards the source of light]. -- pOXe [roSanI kI ora] muda jAwe hE.
(defrule get_phrase_with_vib
(declare (salience 90))
(pada_info (group_head_id ?hid)(group_ids $?ids ?l_id)(preposition  ?pid))
(id-HM-source  ?pid   $?vib  ?)
(test (and (neq $?vib (create$ kA))(neq $?vib (create$ meM))))
(manual_id-cat-word-root-vib-grp_ids ?mid ? $?mng - $?root - $?vib - $?)
(id-org_wrd-root-dbase_name-mng ? ?word ? ? $?root)
(id-original_word ?id ?word)
(hindi_id_order $? ?id $? ?hid $?)
(pada_info (group_ids $?ids1)(preposition  ?pid1))
(test (or (member$ ?id $?ids1) (eq ?id ?pid1)))
(not (id_grouped ?id))
=>
	(bind $?grp (sort > (create$ $?ids ?l_id ?pid $?ids1 ?pid1)))
	(bind $?n_mng (create$ $?mng $?vib))
	(assert (phrase-mng $?grp - $?n_mng))
	(assert (id_grouped ?id))
)
;---------------------------------------------------------------------------------------------------------------
;Plants [tend to turn] towards the source of light. -- pOXe roSanI kI ora [muda jAwe hE].
(defrule get_phrase_with_tam1
(declare (salience 10))
(pada_info (group_head_id ?hid)(group_ids $?ids) (H_tam ?tam&~yA))
(id-node-tam ?mid ? ?tam1&~0)
(test (neq (str-index "+" ?tam1) FALSE))
(test (eq (string-to-field (sub-string (+ (str-index "+" ?tam1) 1) (length ?tam1) ?tam1)) ?tam))
(id-node-root-cat-gen-num-per-case-tam ?mid ? $?root ? ? ? ? ? ?)
(manual_id-cat-word-root-vib-grp_ids ? ? ?mng $? - $?root - $? - $?)
(id-org_wrd-root-dbase_name-mng ? ?word ? ? $?root)
(id-original_word ?id ?word)
(hindi_id_order $? ?id $?gids ?hid $?)
(manual_id-mng ?mid1 $?mng1 )
(test (member$ ?mng $?mng1))
(pada_info (group_ids $?ids1)(preposition  ?pid1))
(test (or (member$ ?id $?ids1) (eq ?id ?pid1)))
(not (id_grouped ?id))
=>
	(if (neq ?pid1 0) then
        	(bind $?grp (sort > (create$ $?ids $?ids1 ?pid1)))
	else
		(bind $?grp (sort > (create$ $?ids $?ids1)))
	)
        (assert (phrase-mng $?grp - $?mng1))
        (assert (id_grouped ?id))
)
;---------------------------------------------------------------------------------------------------------------
;The path [twists and turns] for the next half mile. --- agale AXe mIla waka rAswA iXarauXara [mudawA hE].
(defrule get_phrase_with_tam1
(declare (salience 9))
(pada_info (group_head_id ?hid)(group_ids $?ids) (H_tam ?tam))
(id-node-tam ?mid ? ?tam&~0&~yA)
(id-node-root-cat-gen-num-per-case-tam ?mid ? $?root ? ? ? ? ? ?)
(manual_id-cat-word-root-vib-grp_ids ? ? ?mng $? - $?root - $? - $?)
(id-org_wrd-root-dbase_name-mng ? ?word ? ? $?root)
(id-original_word ?id ?word)
(hindi_id_order $? ?id $?gids ?hid $?)
(manual_id-mng ?mid1 $?mng1 )
(test (member$ ?mng $?mng1))
(pada_info (group_ids $?ids1)(preposition  ?pid1))
(test (or (member$ ?id $?ids1) (eq ?id ?pid1)))
(not (id_grouped ?id))
=>
        (if (neq ?pid1 0) then
                (bind $?grp (sort > (create$ $?ids $?ids1 ?pid1)))
        else
                (bind $?grp (sort > (create$ $?ids $?ids1)))
        )
        (assert (phrase-mng $?grp - $?mng1))
        (assert (id_grouped ?id))
)
;---------------------------------------------------------------------------------------------------------------
;The path [twists [and] turns] for the next half mile.
(defrule get_missed_id
(declare (salience 8))
?f0<-(phrase-mng ?id $?ids ?id1 - $?mng)
(test (numberp ?id))
(id-original_word ?miss_id ?word&and)
(test (and (> ?miss_id ?id)(< ?miss_id ?id1)))
(not (phrase-mng $? ?miss_id $? - $?))
=>
	(retract ?f0)
	(bind $?g_ids (sort > (create$ ?id $?ids ?id1 ?miss_id)))
	(assert (phrase-mng $?g_ids - $?mng))
)
;---------------------------------------------------------------------------------------------------------------
(defrule relace_id_with_word
(declare (salience 3))
?f0<-(phrase-mng $?pre ?id $?post - $?n_mng)
(id-original_word ?id ?word)
=>
	(retract ?f0)
	(assert (phrase-mng $?pre ?word $?post - $?n_mng))
)
;---------------------------------------------------------------------------------------------------------------
(defrule print_phrase
?f0<-(phrase-mng $?word - $?mng)
=>
	(retract ?f0)
	(printout ?*dic_fp2* (implode$ $?word) " -- "(implode$ $?mng) crlf)
)

