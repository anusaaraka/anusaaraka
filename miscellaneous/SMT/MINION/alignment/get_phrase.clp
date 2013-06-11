;This file is written by Shirisha Manju (08-10-12)
(defglobal ?*dic_fp2*  = dic_fp2)
(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))


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

(defrule print_com1
(declare (salience 100))
=>
        (printout  ?*dic_fp2* "----------------- phrases with some logic -------------" crlf)
)
;-------------------------------------------------------------------------------------------------------
(defrule get_light_verb_phrase_ids
(declare (salience 90))
?f0<-(phrase_ids-mng ?aid ?aid1 - $?mng)
(pada_info (group_head_id ?aid)(group_ids ?a_id))
(pada_info (group_head_id ?aid1)(group_ids $?ids))
=>
	(retract ?f0)
	(assert (phrase_ids-mng ?aid $?ids - $?mng))
)
;-------------------------------------------------------------------------------------------------------
;All of us [have the experience] of seeing a spark or hearing a crackle when we take off our synthetic clothes or sweater, particularly in dry weather. --hama saBI ko  @PUNCT-Comma  viSeRakara SuRka mOsama meM  @PUNCT-Comma  svetara aWavA saMSliRta vaswroM ko SarIra se uwArawe samaya cata - cata kI Xvani sunane aWavA cinagAriyAz xeKane kA [anuBava hogA]  @PUNCT-Dot
(defrule get_light_verb_phr
(declare (salience 80))
?f0<-(phrase_ids-mng $?ids - $?mng)
(English_Sen $?eng_list)
=>
	(bind ?eng_phrase (str-cat ""))
	(bind $?ids (sort > $?ids))
	(loop-for-count (?i 1 (length $?ids))
		(bind ?id (nth$ ?i $?ids))
                (if (eq ?i 1) then
                	(bind ?eng_phrase (nth$ ?id $?eng_list))
		else
                	(bind ?eng_phrase (str-cat ?eng_phrase "_" (nth$ ?id $?eng_list)))
		)
	)
	(printout ?*dic_fp2*  "light_verb_phrase:  "  ?eng_phrase " -- " (implode$ $?mng) crlf)
)
;-------------------------------------------------------------------------------------------------------
;Instead of visible light, we can use an [electron beam]. xqSya prakASa ke sWAna para hama , [ilektroYna - puFja kA] upayoga kara sakawe hEM.
(defrule get_phrase_with_prev_mng_same
(declare (salience 70))
(hindi_id_order $?pre ?id ?id1 $?post)
(anu_id-anu_mng-sep-man_id-man_mng ?id1 $? - ?mid ?mng $?mng1)
(not (anu_id-anu_mng-sep-man_id-man_mng ?id $?))
(not (anu_id-word-possible_mngs ?id $?))
(id-Apertium_output ?id ?mng)
(manual_id-mapped_id ?map_id ?mid)
(manual_id-cat-word-root-vib-grp_ids ?map_id ? $?m - $?root - $? - $?)
(id-word ?id ?w)
(id-word ?id1 ?w1)
(not (phrase_ids-mng $? ?id $?))
=>
	(bind ?new_m (remove_character " " (implode$ (create$  $?m)) "_"))
	(bind ?new_r (remove_character " " (implode$ (create$  $?root)) "_"))
	(printout ?*dic_fp2* ?w" "?w1 " -- " (implode$ ?new_m)"/"(implode$ ?new_r) crlf)
)
;-------------------------------------------------------------------------------------------------------
(defrule get_phrase_with_next_mng_with_root
(declare (salience 70))
(hindi_id_order $?pre ?id ?id1 $?post)
(anu_id-anu_mng-sep-man_id-man_mng ?id $?m - ?mid $?m ?m1 $?)
(not (anu_id-anu_mng-sep-man_id-man_mng ?id1 $?))
(not (anu_id-word-possible_mngs ?id1 $?))
(man_word-root-cat ?m1 ?root v|n)
(id-HM-source ?id1 ?root ?)
(pada_info (group_head_id ?id)(group_ids $?ids))
(pada_info (group_head_id ?id1)(group_ids $?ids1))
(English_Sen $?eng_list)
(not (phrase_ids-mng $? ?id $?))
=>
        (bind $?ids (sort > $?ids $?ids1))
        (loop-for-count (?i 1 (length $?ids))
                (bind ?id (nth$ ?i $?ids))
                (if (eq ?i 1) then
                        (bind ?eng_phrase (nth$ ?id $?eng_list))
                else
                        (bind ?eng_phrase (str-cat ?eng_phrase "_" (nth$ ?id $?eng_list)))
                )
        )
        (bind ?new_m (remove_character " " (implode$ (create$  $?m)) "_"))
        (bind ?new_m (str-cat (implode$ ?new_m)"_"?root))
        (printout ?*dic_fp2* ?eng_phrase " -- " ?new_m crlf)
)
;-------------------------------------------------------------------------------------------------------
;To measure [any time interval] we need a clock. --- [kisI BI samaya - anwarAla ko] mApane ke lie hameM GadI kI AvaSyakawA howI hE.
(defrule get_phrase_with_next_mng
(declare (salience 85))
(hindi_id_order $?pre ?id ?id1 $?post)
(anu_id-anu_mng-sep-man_id-man_mng ?id $?m - ?mid $?m ?m1 $?)
(not (anu_id-anu_mng-sep-man_id-man_mng ?id1 $?))
(not (anu_id-word-possible_mngs ?id1 $?))
(id-Apertium_output ?id1 ?m1)
(id-HM-source ?id1 ?root ?)
(pada_info (group_ids $?ids))
(test (and (member$ ?id $?ids) (member$ ?id1 $?ids)))
(English_Sen $?eng_list)
(not (phrase_ids-mng $? ?id $?))
=>
        (loop-for-count (?i 1 (length $?ids))
                (bind ?id (nth$ ?i $?ids))
                (if (eq ?i 1) then
                        (bind ?eng_phrase (nth$ ?id $?eng_list))
                else
                        (bind ?eng_phrase (str-cat ?eng_phrase "_" (nth$ ?id $?eng_list)))
                )
        )
        (bind ?new_m (remove_character " " (implode$ (create$  $?m)) "_"))
	(bind ?new_m (str-cat (implode$ ?new_m)"_"?root))
        (printout ?*dic_fp2* ?eng_phrase " -- " ?new_m crlf)
)
;-------------------------------------------------------------------------------------------------------
;Plants tend to turn [towards the source of light]. -- pOXe [roSanI kI ora] muda jAwe hE.
;(defrule get_phrase_with_vib
;(declare (salience 90))
;(pada_info (group_head_id ?hid)(group_ids $?ids ?l_id)(preposition  ?pid))
;(id-HM-source  ?pid   $?vib  ?)
;(test (and (neq $?vib (create$ kA))(neq $?vib (create$ meM))))
;(manual_id-cat-word-root-vib-grp_ids ?mid ? $?mng - $?root - $?vib - $?)
;(id-org_wrd-root-dbase_name-mng ? ?word ? ? $?root)
;(id-original_word ?id ?word)
;(hindi_id_order $? ?id $? ?hid $?)
;(pada_info (group_ids $?ids1)(preposition  ?pid1))
;(test (or (member$ ?id $?ids1) (eq ?id ?pid1)))
;(not (id_grouped ?id))
;=>
;	(bind $?grp (sort > (create$ $?ids ?l_id ?pid $?ids1 ?pid1)))
;	(bind $?n_mng (create$ $?mng $?vib))
;	(assert (phrase-mng $?grp - $?n_mng))
;	(assert (id_grouped ?id))
;)
;;---------------------------------------------------------------------------------------------------------------
;;Plants [tend to turn] towards the source of light. -- pOXe roSanI kI ora [muda jAwe hE].
;(defrule get_phrase_with_tam1
;(declare (salience 10))
;(pada_info (group_head_id ?hid)(group_ids $?ids) (H_tam ?tam&~yA))
;(id-node-tam ?mid ? ?tam1&~0)
;(test (neq (str-index "+" ?tam1) FALSE))
;(test (eq (string-to-field (sub-string (+ (str-index "+" ?tam1) 1) (length ?tam1) ?tam1)) ?tam))
;(id-node-root-cat-gen-num-per-case-tam ?mid ? $?root ? ? ? ? ? ?)
;(manual_id-cat-word-root-vib-grp_ids ? ? ?mng $? - $?root - $? - $?)
;(id-org_wrd-root-dbase_name-mng ? ?word ? ? $?root)
;(id-original_word ?id ?word)
;(hindi_id_order $? ?id $?gids ?hid $?)
;(manual_id-mng ?mid1 $?mng1 )
;(test (member$ ?mng $?mng1))
;(pada_info (group_ids $?ids1)(preposition  ?pid1))
;(test (or (member$ ?id $?ids1) (eq ?id ?pid1)))
;(not (id_grouped ?id))
;=>
;	(if (neq ?pid1 0) then
;        	(bind $?grp (sort > (create$ $?ids $?ids1 ?pid1)))
;	else
;		(bind $?grp (sort > (create$ $?ids $?ids1)))
;	)
;        (assert (phrase-mng $?grp - $?mng1))
;        (assert (id_grouped ?id))
;)
;;---------------------------------------------------------------------------------------------------------------
;;The path [twists and turns] for the next half mile. --- agale AXe mIla waka rAswA iXarauXara [mudawA hE].
;(defrule get_phrase_with_tam2
;(declare (salience 9))
;(pada_info (group_head_id ?hid)(group_ids $?ids) (H_tam ?tam))
;(id-node-tam ?mid ? ?tam&~0&~yA)
;(id-node-root-cat-gen-num-per-case-tam ?mid ? $?root ? ? ? ? ? ?)
;(manual_id-cat-word-root-vib-grp_ids ? ? ?mng $? - $?root - $? - $?)
;(id-org_wrd-root-dbase_name-mng ? ?word ? ? $?root)
;(id-original_word ?id ?word)
;(hindi_id_order $? ?id $?gids ?hid $?)
;(manual_id-mng ?mid1 $?mng1 )
;(test (member$ ?mng $?mng1))
;(pada_info (group_ids $?ids1)(preposition  ?pid1))
;(test (or (member$ ?id $?ids1) (eq ?id ?pid1)))
;(not (id_grouped ?id))
;=>
;        (if (neq ?pid1 0) then
;                (bind $?grp (sort > (create$ $?ids $?ids1 ?pid1)))
;        else
;                (bind $?grp (sort > (create$ $?ids $?ids1)))
;        )
;        (assert (phrase-mng $?grp - $?mng1))
;        (assert (id_grouped ?id))
;)
;;---------------------------------------------------------------------------------------------------------------
;;The path [twists [and] turns] for the next half mile.
;(defrule get_missed_id
;(declare (salience 8))
;?f0<-(phrase-mng ?id $?ids ?id1 - $?mng)
;(test (numberp ?id))
;(id-original_word ?miss_id ?word&and)
;(test (and (> ?miss_id ?id)(< ?miss_id ?id1)))
;(not (phrase-mng $? ?miss_id $? - $?))
;=>
;	(retract ?f0)
;	(bind $?g_ids (sort > (create$ ?id $?ids ?id1 ?miss_id)))
;	(assert (phrase-mng $?g_ids - $?mng))
;)
;;---------------------------------------------------------------------------------------------------------------
;(defrule relace_id_with_word
;(declare (salience 3))
;?f0<-(phrase-mng $?pre ?id $?post - $?n_mng)
;(id-original_word ?id ?word)
;=>
;	(retract ?f0)
;	(assert (phrase-mng $?pre ?word $?post - $?n_mng))
;)
;;---------------------------------------------------------------------------------------------------------------
;(defrule print_phrase
;?f0<-(phrase-mng $?word - $?mng)
;=>
;	(retract ?f0)
;	(printout ?*dic_fp2* (implode$ $?word) " -- "(implode$ $?mng) crlf)
;)
;
