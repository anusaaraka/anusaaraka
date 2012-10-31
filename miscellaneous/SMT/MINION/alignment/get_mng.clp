(defglobal ?*dic_fp1*  = dic_fp1)

(defrule print_com
(declare (salience 1002))
=>
	(printout  ?*dic_fp1* "----------------- meanings with some logic -------------" crlf)
)

(defrule generate_cntrl_fact
(declare (salience 1001))
(manual_id-mng ?mid $?man_mng)
=>
        (assert (mng_to_be_aligned ?mid))
)

(defrule map_wrd_align_tmp_facts
(declare (salience 1000))
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?mng - ?mid $?mng1)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?mng - ?mid $?)
(manual_id-mapped_id ?mid ?mapped_id)
=>
	(retract ?f0 ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?mng - ?mapped_id $?mng1))
)

(defrule rm_ctrl_fact_for_aligned_facts
(declare (salience 990))
(or (anu_id-anu_mng-sep-man_id-man_mng ?aid $?mng - ?mid $?mng1)(mng_has_been_merged ?mid))
?f0<-(mng_to_be_aligned ?mid)
=>
	(retract ?f0)
)

;Eng sen  :: Thus, the result of measurement [should be reported] in a way that indicates the precision of measurement. 
;Man tran :: awaH mApana ke pariNAmoM ko isa prakAra [praswuwa kiyA jAnA cAhie] ki mApana kI pariSuxXawA spaRta ho jAe.
(defrule prev_wrd_of_kara
(declare (salience 900))
(manual_id-mng ?mid ?wrd $?)
(id-node-word-root ?id ? ?wrd - ho|kara|xe|karA|karezge)
?f<-(manual_id-mng ?mid1 $?mng1)
(test (eq ?mid1 (- ?mid 1)))
(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ? $?pre ?wrd $?pos)
(hindi_id_order $? ?aid $?)
(hin_pos-hin_mng-eng_ids-eng_words ? ?hnd_mng  $? ?aid $? ?eng_wrds)
(test (and (neq ?eng_wrds is)(neq ?eng_wrds are)))
=>

        (printout  ?*dic_fp1*  ?eng_wrds" :: " (implode$ (create$ $?mng1 $?pre ?wrd $?pos)) crlf)
	(assert (mng_has_been_merged ?mid1))
	(assert (mng_has_been_merged ?mid))
)

;Even when we are sleeping, air moves into and out of our lungs and blood flows in arteries and veins.
;iwanA hI nahIM , nixrAvasWA meM BI hamAre PePadoM meM vAyu kA praveSa evaM niRkAsana waWA hamArI XamaniyoM evaM SirAoM meM ruXira kA [saFcaraNa howA rahawA hE].
;this rule fires if the fact "anu_id-anu_mng-sep-man_id-man_mng" is not generated for the words "ho|kara|xe|karA|karezge"
(defrule prev_wrd_of_kara_for_last_id
(declare (salience 900))
(manual_id-mng ?mid ?wrd $?pos)
(id-node-word-root ?id ? ?wrd - ho|kara|xe|karA|karezge)
?f<-(manual_id-mng ?mid1 $?mng1)
(test (eq ?mid1 (- ?mid 1)))
(not (manual_id-mng ?mid2&:(> ?mid2 ?mid) $?))
(hindi_id_order $? ?aid)
(not (anu_id-anu_mng-sep-man_id-man_mng ?aid $?))
(hin_pos-hin_mng-eng_ids-eng_words ? ?hnd_mng  $? ?aid $? ?eng_wrds)
=>
        (assert (mng_has_been_merged ?mid1))
	(assert (mng_has_been_merged ?mid))
        (printout  ?*dic_fp1*  ?eng_wrds" :: " (implode$ (create$ $?mng1 ?wrd $?pos)) crlf)
)




;When this is an elastic collision, the magnitude of the velocity [remains] the same. 
;jaba yaha takkara prawyAsWa howI hE wo vega kA parimANa [aparivarwiwa rahawA hE].
(defrule prev_wrd_of_verb
(declare (salience 850))
(manual_id-mng ?mid $?mng)
(manual_id-mng ?mid1 $?mng1 ?last_word)
(test (eq ?mid1 (- ?mid 1)))
(test (eq (sub-string (- (length ?last_word) 3) (length ?last_word) ?last_word) "wiwa"))
(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ? $?pre $?mng $?pos)
(hindi_id_order $? ?aid $?)
(hin_pos-hin_mng-eng_ids-eng_words ? ?hnd_mng  $? ?aid $? ?eng_wrds)
=>

        (printout  ?*dic_fp1*  ?eng_wrds" :: " (implode$ (create$ $?mng1  ?last_word $?mng)) crlf)
)

;--------------------------------------------------------------------------------------
;;Eng sen  :: Thus, the result of measurement should be reported [in a way] that indicates the precision of measurement. 
;;Man tran :: awaH mApana ke pariNAmoM ko [isa prakAra] praswuwa kiyA jAnA cAhie ki mApana kI pariSuxXawA spaRta ho jAe.
;(defrule left_with_prep_aligned_so_align_next_word_with_next_slot_only
;(declare (salience 100))
;?f<-(manual_id-mng ?mid isa)
;(mng_to_be_aligned ?mid)
;(manual_id-mapped_id ?id ?mid)
;(manual_id-mapped_id ?id1 ?mid1)
;(manual_id-mapped_id ?id2 ?mid2)
;(manual_id-mng ?mid2 $?mng2)
;(manual_id-mng ?mid1 $?mng1)
;(test (eq ?mid1 (- ?mid 1)))
;(test (eq ?mid2 (+ ?mid 1)))
;(manual_id-cat-word-root-vib-grp_ids ?id1 ? $? - $? - ?vib&~0 - $? =(- ?id 1))
;(anu_id-anu_mng-sep-man_id-man_mng ?aid2 $? - ? $? $?mng2 $?)
;(anu_id-anu_mng-sep-man_id-man_mng ?aid1 $? - ? $? $?mng1 $?)
;(hin_pos-hin_mng-eng_ids-eng_words ?pos ?hnd_mng  $?a1 ?aid2 $?a2 ?eng_wrds)
;=>
;         (retract ?f)
;         (printout ?*dic_fp1*  ?eng_wrds" :: isa "(implode$ $?mng2) crlf)
;)

;get meaning using previous slot alignment
(defrule match_mng_with_prev_word
(declare (salience 90))
(manual_id-mng ?mid $?mng)
?f0<-(mng_to_be_aligned ?mid)
(anu_id-anu_mng-sep-man_id-man_mng ?aid $?amng - =(- ?mid 1) $?mmng)
(hindi_id_order $?pre ?aid ?next_id $?)
(id-word ?next_id ?word)
(not (anu_id-anu_mng-sep-man_id-man_mng ?next_id $?))
(not (anu_id-word-possible_mngs ?next_id ?word $?))
=>
	(retract ?f0)
	(assert (aid-word-mid-mng ?next_id ?word - ?mid $?mng))
	(printout ?*dic_fp1*  	?word " :: " (implode$ $?mng) crlf)
)
;--------------------------------------------------------------------------------------
;As a simple case of motion in a plane, we shall discuss motion with constant acceleration and treat in detail the projectile motion.
;kisI samawala meM gawi ke sarala uxAharaNa ke rUpa meM hama ekasamAna wvariwa gawi kA aXyayana karezge waWA [eka prakRepya kI] gawi ke viRaya meM viswAra se paDezge.
;Automobiles [and] planes carry people from one place to the other.
;motaragAdI [Ora] vAyuyAna yAwriyoM ko eka sWAna se xUsare sWAna ko le jAwe hEM
(defrule match_mng_with_restricted_word
(declare (salience 90))
(manual_id-mng ?mid $?mng)
?f0<-(mng_to_be_aligned ?mid)
(anu_id-anu_mng-sep-man_id-man_mng ?aid $?amng - =(+ ?mid 1) $?mmng)
(hindi_id_order $?pre ?prev_id ?aid $?)
(hin_pos-hin_mng-eng_ids-eng_words ? ?hnd_mng  $? ?prev_id $? ?eng_wrds)
(hin_pos-hin_mng-eng_ids-eng_words ? ?hnd_mng1  $? ?aid $? ?eng_wrd)
(not (anu_id-anu_mng-sep-man_id-man_mng ?prev_id $?))
(anu_id-word-possible_mngs ?prev_id ?eng_wrds $?rest_mngs)
=>
	(if (member$ $?mng $?rest_mngs) then
		(assert (aid-word-mid-mng ?prev_id ?eng_wrds  - ?mid $?mng))
		(printout ?*dic_fp1*    ?eng_wrds " :: " (implode$ $?mng) crlf )
	else
		(assert (aid-word-mid-mng ?aid ?eng_wrd  - (+ ?mid 1) $?mng $?mmng))
       		(printout ?*dic_fp1*    ?eng_wrd " :: " (implode$ (create$ $?mng $?mmng)) crlf)
	)
)
;--------------------------------------------------------------------------------------
(defrule match_mng_with_next_word
(declare (salience 90))
(manual_id-mng ?mid $?mng)
?f0<-(mng_to_be_aligned ?mid)
(anu_id-anu_mng-sep-man_id-man_mng ?aid $?amng - =(+ ?mid 1) $?mmng)
(hindi_id_order $?pre ?prev_id ?aid $?)
(hin_pos-hin_mng-eng_ids-eng_words ? ?hnd_mng  $? ?prev_id $? ?eng_wrds)
(hin_pos-hin_mng-eng_ids-eng_words ? ?hnd_mng1  $? ?aid $? ?eng_wrd)
(not (anu_id-anu_mng-sep-man_id-man_mng ?prev_id $?))
(not (anu_id-word-possible_mngs ?prev_id $?))
=>
        (assert (aid-word-mid-mng ?prev_id ?eng_wrds  - ?mid $?mng))
        (printout ?*dic_fp1*    ?eng_wrds " :: " (implode$ $?mng) crlf )
)
;--------------------------------------------------------------------------------------
(defrule match_for_last_word
(declare (salience 80))
(hindi_id_order $? ?aid)
(id-word ?aid ?word)
(not (anu_id-anu_mng-sep-man_id-man_mng ?aid $?))
(not (aid-word-mid-mng ?aid $?))
(manual_id-mng ?mid $?mng)
(not (manual_id-mng ?mid1&:(> ?mid1 ?mid) $?))
?f0<-(mng_to_be_aligned ?mid)
(not (anu_id-anu_mng-sep-man_id-man_mng ? $? - ?mid $?))
(not (got_last_word))
=>
	(retract ?f0)
	(assert (aid-word-mid-mng ?aid  ?word - ?mid $?mng))
	(printout ?*dic_fp1*     ?word " :: " (implode$ $?mng) crlf)
	(assert (got_last_word))
)
;--------------------------------------------------------------------------------------
;[Automobiles] and planes carry people from one place to the other.
(defrule match_for_first_word
(declare (salience 80))
(hindi_id_order ?aid $?)
(id-word ?aid ?word)
(not (anu_id-anu_mng-sep-man_id-man_mng ?aid $?))
?f0<-(manual_id-mng 1 $?mng)
(not (anu_id-anu_mng-sep-man_id-man_mng ? $? - 1 $?))
(not (got_first_word))
=>
        (retract ?f0)
	(assert (aid-word-mid-mng 1 ?word - 1 $?mng))
        (printout ?*dic_fp1*     ?word " :: " (implode$ $?mng) crlf)
        (assert (got_first_word))
)
;--------------------------------------------------------------------------------------
;Automobiles [and] planes carry people from one place to the other.
;(defrule match_for_restricted_word
;(declare (salience 70))
;?f0<-(manual_id-mng ?mid $?mng)
;(manual_id-mapped_id ?org_id  ?mid)
;(aid-word-mid-mng ?aid ? - =(- ?org_id 1) $?)
;(hindi_id_order $?pre ?aid ?next_id $?)
;(id-word ?next_id ?word)
;(not (anu_id-anu_mng-sep-man_id-man_mng ?aid $?))
;(not (anu_id-anu_mng-sep-man_id-man_mng ?next_id $?))
;(anu_id-word-possible_mngs ?next_id ?word $?pos_mngs)
;(test (subsetp $?mng $?pos_mngs))
;=>
;        (retract ?f0)
;        (assert (aid-word-mid-mng ?next_id ?word - ?mid $?mng))
;        (printout ?*dic_fp1*    ?word " :: " (implode$ $?mng) crlf)
;)
;--------------------------------------------------------------------------------------
;get meaning using previous slot alignment (here previous slot is newly generate fact aid-word-mid-mng)
(defrule match_using_abv_generated_fact1
(declare (salience 60))
(manual_id-mng ?mid $?mng)
?f0<-(mng_to_be_aligned ?mid)
(aid-word-mid-mng ?aid ? - =(- ?mid 1) $?)
(hindi_id_order $?pre ?aid ?next_id $?)
(id-word ?next_id ?word)
(not (anu_id-word-possible_mngs ?next_id ?word $?))
(not (anu_id-anu_mng-sep-man_id-man_mng ?aid $?))
=>
        (retract ?f0)
        (assert (aid-word-mid-mng ?next_id ?word - ?mid $?mng))
        (printout ?*dic_fp1*    ?word " :: " (implode$ $?mng) crlf)
)
;--------------------------------------------------------------------------------------
;(defrule get_res_word_next_id
;(declare (salience 55))
;(manual_id-mng ?mid $?mng)
;?f0<-(mng_to_be_aligned ?mid)
;(or (aid-word-mid-mng ?aid ? - =(- ?mid 1) $?)(anu_id-anu_mng-sep-man_id-man_mng ?aid ? - =(- ?mid 1) $?))
;(hindi_id_order $?pre ?aid ?next_id ?n1 $?)
;(id-word ?next_id ?word)
;(anu_id-word-possible_mngs ?next_id ?word $?)
;=>
;	(assert (id-next_id ?next_id ?n1))
;)
;;--------------------------------------------------------------------------------------
;(defrule get_next_id
;(declare (salience 50))
;?f0<-(id-next_id ?next_id ?n1)
;(or (anu_id-anu_mng-sep-man_id-man_mng  ?n1 $?)(aid-word-mid-mng ?n1 $?)) 
;(hindi_id_order $?pre ?n1 ?n2 $?)
;=>
;	(retract ?f0)
;	(assert (id-next_id ?next_id ?n2))
;)
;;--------------------------------------------------------------------------------------
;;Automobiles and planes carry people from one place to the other.
;(defrule match_with_res_word_next_empty_slot
;(declare (salience 45))
;(manual_id-mng ?mid $?mng)
;?f0<-(mng_to_be_aligned ?mid)
;(or (aid-word-mid-mng ?aid ? - =(- ?mid 1) $?)(anu_id-anu_mng-sep-man_id-man_mng ?aid ? - =(- ?mid 1) $?))
;(hindi_id_order $?pre ?aid ?res_w_id ?n1 $?)
;?f1<-(id-next_id ?res_w_id ?next_id)
;(id-word ?next_id ?word)
;(not (aid-word-mid-mng ?next_id $?))
;=>
;	(retract ?f0 ?f1)
;        (assert (aid-word-mid-mng ?next_id ?word - ?mid $?mng))
;        (printout ?*dic_fp1*    ?word " :: " (implode$ $?mng) crlf)
;)
;--------------------------------------------------------------------------------------
;We can easily check their equality.
;hama inakI samAnawA kI [paraKa AsAnI se] kara sakawe hEM.
(defrule chk_for_post_position_on_left_side_and_align_next_word_with_right_slot
(declare (salience 90))
(manual_id-mng ?mid $?mng ?vib&BI|kI|para|ko)
(manual_id-mng ?mid1 $?mng1)
(mng_to_be_aligned ?mid1)
(test (eq ?mid1 (+ ?mid 1)))
(manual_id-mng ?mid2 $?mng2)
(test (eq ?mid2 (+ ?mid1 1)))
(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ?mid $?mng ?vib)
(anu_id-anu_mng-sep-man_id-man_mng ?aid2 $? - ?mid2 $?mng2)
(hindi_id_order $? ?aid ?aid2 $?)
(hin_pos-hin_mng-eng_ids-eng_words ? ?hnd_mng  $?a1 ?aid2 $?a2 ?eng_wrds)
=>

        (printout  ?*dic_fp1*  ?eng_wrds" :: " (implode$ (create$ $?mng1 $?mng2)) crlf)
)


(defrule count_left_out_slots
(declare (salience 10))
(hindi_id_order $? ?aid $?)
(not (anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ? $?))
(not (aid-word-mid-mng ?aid $?))
?f<-(left_out_slots $?slot_ids)
(test (eq (member$ ?aid $?slot_ids) FALSE))
=>
        (retract ?f)
        (assert (left_out_slots $?slot_ids ?aid))
)

(defrule count_left_out_words
(declare (salience 10))
(manual_id-mng ?mid $?mng)
(not (anu_id-anu_mng-sep-man_id-man_mng ? $? - ?mid $?))
(not (aid-word-mid-mng ? ? - ?mid $?))
?f<-(left_out_words $?word_ids)
(test (eq (member$ ?mid $?word_ids) FALSE))
=>
        (retract ?f)
        (assert (left_out_words $?word_ids ?mid))
)

(defrule leftout_single_word_and_single_slot
(declare (salience 7))
(left_out_slots ?aid)
(left_out_words ?mid)
(manual_id-mng ?mid $?mng)
?f0<-(mng_to_be_aligned ?mid)
(hin_pos-hin_mng-eng_ids-eng_words ? ?hnd_mng  $?a1 ?aid $?a2 ?eng_wrds)
=>
	(retract ?f0)
        (printout ?*dic_fp1*  ?eng_wrds" :: "(implode$ $?mng) crlf)
)

(defrule only_single_word_leftout
(declare (salience 5))
(left_out_words ?mid)
(manual_id-mng ?mid $?mng)
?f0<-(mng_to_be_aligned ?mid)
(manual_id-mng ?mid1 $?mng1)
(manual_id-mng ?mid2 $?mng2)
(test (and (< ?mid1 ?mid) (> ?mid2 ?mid)))
(anu_id-anu_mng-sep-man_id-man_mng ?aid1 $? - ? $? $?mng1 $?)
(anu_id-anu_mng-sep-man_id-man_mng ?aid2 $? - ? $? $?mng2 $?)
(hin_pos-hin_mng-eng_ids-eng_words ? ? $? ?aid2 $? ?eng_wrds2)
(hin_pos-hin_mng-eng_ids-eng_words ? -  $? ?aid1 $? ?eng_wrds1)
=>
	(retract ?f0)
        (printout ?*dic_fp1*  ?eng_wrds1" :: "(implode$ (create$ $?mng1 $?mng)) crlf)
)
