;This file is written by Shirisha Manju and Mahalaxmi

(defglobal ?*dic_fp1*  = dic_fp1)

(defrule print_com
(declare (salience 1010))
=>
	(printout  ?*dic_fp1* "----------------- meanings with some logic -------------" crlf)
)
;--------------------------------------------------------------------------------------------------------
(defrule generate_cntrl_fact
(declare (salience 1001))
(manual_id-mng ?mid $?man_mng)
=>
        (assert (mng_to_be_aligned ?mid))
)
;--------------------------------------------------------------------------------------------------------
(defrule map_wrd_align_tmp_facts
(declare (salience 1000))
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?mng - ?mid $?mng1)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?mng - ?mid $?)
(manual_id-mapped_id ?mid ?mapped_id)
=>
	(retract ?f0 ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?mng - ?mapped_id $?mng1))
)
;--------------------------------------------------------------------------------------------------------
(defrule rm_ctrl_fact_for_aligned_facts
(declare (salience 990))
(or (anu_id-anu_mng-sep-man_id-man_mng ?aid $?mng - ?mid $?mng1)(mng_has_been_merged ?mid))
?f0<-(mng_to_be_aligned ?mid)
=>
	(retract ?f0)
)
;--------------------------------------------------------------------------------------------------------
;Eng sen  :: Thus, the result of measurement [should be reported] in a way that indicates the precision of measurement. 
;Man tran :: awaH mApana ke pariNAmoM ko isa prakAra [praswuwa kiyA jAnA cAhie] ki mApana kI pariSuxXawA spaRta ho jAe.
;Added by Maha Laxmi
(defrule prev_wrd_of_kara
(declare (salience 900))
(manual_id-mng ?mid ?wrd $?)
(id-node-word-root ?id ? ?wrd - ho|kara|xe|karA|karezge)
?f<-(manual_id-mng ?mid1 $?mng1)
(test (eq ?mid1 (- ?mid 1)))
(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ? $?pre ?wrd $?pos)
(hindi_id_order $? ?aid $?)
(hin_pos-hin_mng-eng_ids-eng_words ? ?hnd_mng  $? ?aid $? ?eng_wrds)
(test (and (neq ?eng_wrds is)(neq ?eng_wrds are)(neq ?eng_wrds has)))
=>

        (printout  ?*dic_fp1*  ?eng_wrds" :: " (implode$ (create$ $?mng1 $?pre ?wrd $?pos)) crlf)
	(assert (mng_has_been_merged ?mid1))
	(assert (mng_has_been_merged ?mid))
)
;--------------------------------------------------------------------------------------------------------
;Even when we are sleeping, air moves into and out of our lungs and blood flows in arteries and veins.
;iwanA hI nahIM , nixrAvasWA meM BI hamAre PePadoM meM vAyu kA praveSa evaM niRkAsana waWA hamArI XamaniyoM evaM SirAoM meM ruXira kA [saFcaraNa howA rahawA hE].
;this rule fires if the fact "anu_id-anu_mng-sep-man_id-man_mng" is not generated for the words "ho|kara|xe|karA|karezge"
;Added by Maha Laxmi
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
(test (and (neq ?eng_wrds is)(neq ?eng_wrds are)(neq ?eng_wrds has)))
=>
        (assert (mng_has_been_merged ?mid1))
	(assert (mng_has_been_merged ?mid))
        (printout  ?*dic_fp1*  ?eng_wrds" :: " (implode$ (create$ $?mng1 ?wrd $?pos)) crlf)
)
;--------------------------------------------------------------------------------------------------------
;When this is an elastic collision, the magnitude of the velocity [remains] the same. 
;jaba yaha takkara prawyAsWa howI hE wo vega kA parimANa [aparivarwiwa rahawA hE].
;Added by Maha Laxmi
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
;--------------------------------------------------------------------------------------------------------
;[This] distance is called the path length traversed by the car.
;[isa] xUrI ko kAra xvArA calI gaI paWa - lambAI kahawe hEM
;Added by Shirisha Manju 
(defrule match_for_first_restricted_word
(declare (salience 800))
(hindi_id_order ?aid $?)
(anu_id-word-possible_mngs ?aid ?word $?rest_mngs)
(not (anu_id-anu_mng-sep-man_id-man_mng ?aid $?))
(manual_id-mng 1 $?mng)
?f0<-(mng_to_be_aligned 1)
(test (member$ $?mng $?rest_mngs))
(not (got_first_res_word))
=>
        (retract ?f0)
        (assert (aid-word-mid-mng 1 ?word - 1 $?mng))
        (printout ?*dic_fp1*     ?word " :: " (implode$ $?mng) crlf)
        (assert (got_first_res_word))
)
;--------------------------------------------------------------------------------------------------------
;[Automobiles] and planes carry people from one place to the other.
;Added by Shirisha Manju 
(defrule match_for_first_word
(declare (salience 750))
(hindi_id_order ?aid $?)
(not (anu_id-word-possible_mngs ?aid $?))
(id-word ?aid ?word)
(not (anu_id-anu_mng-sep-man_id-man_mng ?aid $?))
(manual_id-mng 1 $?mng)
?f0<-(mng_to_be_aligned 1)
(not (man_id-word-possible_mngs 1 $? $?mng $?))
(not (got_first_word))
=>
        (retract ?f0)
        (assert (aid-word-mid-mng 1 ?word - 1 $?mng))
        (printout ?*dic_fp1*     ?word " :: " (implode$ $?mng) crlf)
        (assert (got_first_word))
)
;--------------------------------------------------------------------------------------------------------
;The sun itself is in motion in the Milky Way, which [is again moving] within its local group of galaxies.
;sUrya apane grahoM sahiwa hamArI AkASagafgA nAmaka manxAkinI meM vicaraNa karawA hE , waWA jo svayaM BI sWAnIya manxAkiniyoM ke samUha meM [gawi karawI hE]. 
;Added by Shirisha Manju 
(defrule match_for_last_word
(declare (salience 700))
(hindi_id_order $? ?aid)
(not (anu_id-anu_mng-sep-man_id-man_mng ?aid $?))
(not (aid-word-mid-mng ?aid $?))
(hin_pos-hin_mng-eng_ids-eng_words ? ? $? ?aid $? ?word)
(manual_id-mng ?mid $?mng)
(not (manual_id-mng ?mid1&:(> ?mid1 ?mid) $?))
?f0<-(mng_to_be_aligned ?mid)
(not (got_last_word))
=>
        (retract ?f0)
        (assert (aid-word-mid-mng ?aid  ?word - ?mid $?mng))
        (printout ?*dic_fp1*     ?word " :: " (implode$ $?mng) crlf)
        (assert (got_last_word))
)
;--------------------------------------------------------------------------------------------------------
;get meaning using previous slot alignment
;For the case of rectilinear motion with uniform [acceleration], a set of simple equations can be obtained.
;ekasamAna [wvariwa] sarala reKIya gawi ke lie kuCa sarala samIkaraNa prApwa kie jA sakawe hEM
;Added by Shirisha Manju
(defrule match_with_prev_word
(declare (salience 650))
(manual_id-mng ?mid $?mng)
?f0<-(mng_to_be_aligned ?mid)
(or (anu_id-anu_mng-sep-man_id-man_mng ?aid $? - =(- ?mid 1) $?)(aid-word-mid-mng ?aid ? - =(- ?mid 1) $?))
(hindi_id_order $?pre ?aid ?next_id $?)
(hin_pos-hin_mng-eng_ids-eng_words ? ? $? ?next_id $? ?word)
(not (anu_id-anu_mng-sep-man_id-man_mng ?next_id $?))
(not (anu_id-word-possible_mngs ?next_id ? $?))
=>
        (retract ?f0)
        (assert (aid-word-mid-mng ?next_id ?word - ?mid $?mng))
        (printout ?*dic_fp1*    ?word " :: " (implode$ $?mng) crlf)
)
;--------------------------------------------------------------------------------------------------------
;For the case of [rectilinear] motion with uniform acceleration, a set of simple equations can be obtained.
;ekasamAna wvariwa [sarala reKIya] gawi ke lie kuCa sarala samIkaraNa prApwa kie jA sakawe hEM .
;Added by Shirisha Manju (1-11-12)
(defrule merge_mng_to_lt_if_lt_and_rt_are_aligned
(declare (salience 600))
(manual_id-mng ?mid $?mng)
?f0<-(mng_to_be_aligned ?mid)
(or (anu_id-anu_mng-sep-man_id-man_mng ?aid $? - =(- ?mid 1) $?p_mng)(aid-word-mid-mng ?aid ? - =(- ?mid 1) $?p_mng))
(or (anu_id-anu_mng-sep-man_id-man_mng ?aid1 $? - =(+ ?mid 1) $?)(aid-word-mid-mng ?aid1 ? - =(+ ?mid 1) $?))
(hindi_id_order $? ?aid ?aid1 $?)
(hin_pos-hin_mng-eng_ids-eng_words ? ? $? ?aid $? ?word)
=>
	(retract ?f0)
	(printout ?*dic_fp1*    ?word " :: " (implode$ $?p_mng) " + " (implode$  $?mng) crlf)
	(printout t    ?word " :: " (implode$ $?p_mng) " + " (implode$  $?mng) crlf)
)
;--------------------------------------------------------------------------------------------------------
;As a simple case of motion in a plane, we shall discuss motion with constant acceleration and treat in detail the projectile motion.
;kisI samawala meM gawi ke sarala uxAharaNa ke rUpa meM hama ekasamAna wvariwa gawi kA aXyayana karezge waWA [eka prakRepya kI] gawi ke viRaya meM viswAra se paDezge.
;Automobiles [and] planes carry people from one place to the other.
;motaragAdI [Ora] vAyuyAna yAwriyoM ko eka sWAna se xUsare sWAna ko le jAwe hEM
;Added by Shirisha Manju
(defrule match_mng_with_restricted_word
(declare (salience 550))
(manual_id-mng ?mid $?mng)
?f0<-(mng_to_be_aligned ?mid)
(anu_id-anu_mng-sep-man_id-man_mng ?aid $?amng - =(+ ?mid 1) $?mmng)
(hindi_id_order $?pre ?prev_id ?aid $?)
(hin_pos-hin_mng-eng_ids-eng_words ? ?hnd_mng  $? ?prev_id $? ?eng_wrds)
(hin_pos-hin_mng-eng_ids-eng_words ? ?hnd_mng1  $? ?aid $? ?eng_wrd)
(not (anu_id-anu_mng-sep-man_id-man_mng ?prev_id $?))
(not (aid-word-mid-mng ?prev_id $?))
(anu_id-word-possible_mngs ?prev_id ?eng_wrds $?rest_mngs)
=>
	(retract ?f0)
	(if (member$ $?mng $?rest_mngs) then
		(assert (aid-word-mid-mng ?prev_id ?eng_wrds  - ?mid $?mng))
		(printout ?*dic_fp1*    ?eng_wrds " :: " (implode$ $?mng) crlf )
	else
		(assert (aid-word-mid-mng ?aid ?eng_wrd  - (+ ?mid 1) $?mng $?mmng))
       		(printout ?*dic_fp1*    ?eng_wrd " :: " (implode$ $?mng) " + " (implode$ $?mmng) crlf)
	)
)
;--------------------------------------------------------------------------------------
(defrule match_mng_with_next_word
(declare (salience 500))
(manual_id-mng ?mid $?mng)
?f0<-(mng_to_be_aligned ?mid)
(anu_id-anu_mng-sep-man_id-man_mng ?aid $?amng - =(+ ?mid 1) $?mmng)
(hindi_id_order $?pre ?prev_id ?aid $?)
(hin_pos-hin_mng-eng_ids-eng_words ? ?hnd_mng  $? ?prev_id $? ?eng_wrds)
(hin_pos-hin_mng-eng_ids-eng_words ? ?hnd_mng1  $? ?aid $? ?eng_wrd)
(not (anu_id-anu_mng-sep-man_id-man_mng ?prev_id $?))
(not (anu_id-word-possible_mngs ?prev_id $?))
=>
	(retract ?f0)
        (assert (aid-word-mid-mng ?prev_id ?eng_wrds  - ?mid $?mng))
        (printout ?*dic_fp1*    ?eng_wrds " :: " (implode$ $?mng) crlf )
)
;--------------------------------------------------------------------------------------
;get meaning using previous slot alignment (here previous slot is newly generate fact aid-word-mid-mng)
;Added by Shirisha Manju
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
;We can easily check their equality.
;hama inakI samAnawA kI [paraKa AsAnI se] kara sakawe hEM.
;Added by Maha Laxmi
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

;Added by Maha Laxmi
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
;Added by Maha Laxmi
(defrule count_left_out_words
(declare (salience 10))
(manual_id-mng ?mid $?mng)
(mng_to_be_aligned ?mid)
(not (anu_id-anu_mng-sep-man_id-man_mng ? $? - ?mid $?))
(not (aid-word-mid-mng ? ? - ?mid $?))
?f<-(left_out_words $?word_ids)
(test (eq (member$ ?mid $?word_ids) FALSE))
=>
        (retract ?f)
        (assert (left_out_words $?word_ids ?mid))
)
;Added by Maha Laxmi
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

;Added by Maha Laxmi
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

;(defrule print_com_word
;(declare (salience -4))
;=>
;	(printout ?*dic_fp1* "------------- left-out words in sentence ------------ " crlf)
;)
;
;
;(defrule print_left_out_words
;(declare (salience -5))
;(manual_id-mng ?mid $?mng)
;?f0<-(mng_to_be_aligned ?mid)
;=>
;	(retract ?f0)
;	(printout ?*dic_fp1* (implode$  $?mng) "  " )
;)	
