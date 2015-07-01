;This file is written by Shirisha Manju

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(multislot group_ids (default 0)))


(deftemplate  database_info (slot root (default 0))(slot meaning (default 0))(multislot components (default 0))(slot database_name (default 0))( slot database_type (default 0))(multislot group_ids (default 0)))

(deftemplate tam_database_info (slot e_tam (default 0)) (slot database_name (default 0)) (multislot meaning (default 0))(multislot components (default 0)))
;----------------------------------------------------------------------------------------------------------

(deffunction remove_character(?char ?str ?replace_char)
                        (bind ?new_str "")
                        (bind ?index (str-index ?char ?str))
                        (if (neq ?index FALSE) then
                        (while (neq ?index FALSE)
                        (bind ?new_str (str-cat ?new_str (sub-string 1  (- ?index 1) ?str) ?replace_char))
                        (bind ?str (sub-string (+ ?index 1) (length ?str) ?str))
                        (bind ?index (str-index ?char ?str))
                        )
                        )
                (bind ?new_str (explode$ (str-cat ?new_str (sub-string 1 (length ?str) ?str))))
)
;------------------------------ modifying anu output -----------------------------------------------------
 (defrule del_@PropN_in_aper_out
 (declare (salience 2001))
 ?f0<-(id-Apertium_output ?id ?mng $?w)
 (test (neq (str-index "@PropN" (implode$ (create$ ?mng))) FALSE))
 =>
        (retract ?f0)
        (bind ?mng (implode$ (create$ ?mng)))
        (bind ?mng (string-to-field (sub-string 9 (- (length ?mng) 6) ?mng))) ;Ex: \@PropN-newton-PropN
        (bind ?mng (string-to-field (str-cat "@" (upcase (sub-string 1 1 ?mng)) (sub-string 2 (length ?mng) ?mng)))) ;Ex:Newton
        (assert (id-Apertium_output ?id ?mng $?w))
 )
 ;-----------------------------------------------------------------------------------------------------------
 ;What can you conclude from these observations?
 ;Apa ina prekRaNa se kyA [niRkarRa_nikAla] sakawe hEM?
 (defrule rm_underscore_in_aper_op
 (declare (salience 2000))
 ?f<-(id-Apertium_output ?a_id $?a_grp)
 (not (id_aper_op_modified ?a_id))
 =>
        (retract ?f)
        (bind ?a_op "")
        (bind ?a_op (remove_character "\\@" (implode$ (create$  $?a_grp)) " "))
        (bind ?a_op (remove_character "\@" (implode$ (create$  ?a_op)) " "))
        (bind ?a_op (remove_character "-" (implode$ (create$  ?a_op)) " "))
        (bind ?a_op (remove_character "_" (implode$ (create$  ?a_op)) " "))
        (assert (id-Apertium_output ?a_id  ?a_op))
        (assert (id_aper_op_modified ?a_id))
 )
 ;-------------------------------------------------------------------------------------------------
 (defrule rm_underscore_in_hindi_mng
 (declare (salience 2000))
 ?f<-(id-HM-source   ?id   ?hmng&~-   ?src)
 (not (id_hmng_modified ?id))
 =>
        (retract ?f)
        (bind ?new_mng (remove_character "_" ?hmng " "))
        (bind ?new_mng (remove_character "-" (implode$ (create$  ?new_mng)) " "))
        (bind ?new_mng (remove_character "@" (implode$ (create$  ?new_mng)) ""))
        (assert (id-HM-source ?id ?new_mng ?src))
        (assert (id_hmng_modified ?id))
 )
;================================================== verb rules =============================================
;If the box is stationary relative to the train, it is in fact accelerating along with the train.
;yaxi boYksa relagAdI ke ApekRa sWira hE @PUNCT-Comma wo vAswava meM vaha relagAdI ke sAWa wvariwa ho rahA hE.
;(chunk_name-chunk_ids VGF 7 8) -- where 8 is @PUNCT-Comma id
(defrule rm_punct_id_from_verb_chunk
(declare (salience 1001))
?f<-(chunk_name-chunk_ids ?chnk&VGF|VGNN|VGNF $?pre ?mid $?pos)
(not (manual_word_info (group_ids $? ?mid $?) ))
=>
       (retract ?f)
       (assert (chunk_name-chunk_ids ?chnk  $?pre $?pos))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;The applications of physics are not always easy to foresee.
;BOwikI ke anuprayogoM kA saxEva pUrvajFAna raKanA sarala [nahIM hE].
(defrule modify_chunk_for_nahIM
(declare (salience 1000))
?f<-(chunk_name-chunk_ids VGF ?id $?ids)
(manual_word_info (head_id ?id) (word nahIM))
(not (pada_info (group_head_id ?h) (group_cat VP) (preceeding_part_of_verb nahIM)))
=>
	(retract ?f)
       	(assert (chunk_name-chunk_ids VGF $?ids))
)
;----------------------------------------------------------------------------------------------------------
(defrule get_verb_chunk_cp
(declare (salience 1000))
?f<-(chunk_name-chunk_ids ?chnk&VGF|VGNN|VGNF $?gids)
=>
       (assert (chunk_name-chunk_ids-words  ?chnk $?gids - $?gids))
)
;----------------------------------------------------------------------------------------------------------
(defrule get_verb_chunk
(declare (salience 950))
?f<-(chunk_name-chunk_ids-words ?chnk&VGF|VGNN|VGNF $?gids - $?pre ?mid $?pos)
?f1<-(manual_id-word ?mid ?man_wrd)
=>
       (retract ?f)
       (assert (chunk_name-chunk_ids-words ?chnk  $?gids - $?pre $?man_wrd $?pos))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 29-12-14
(defrule rm_grouped_verb_id
(declare (salience 900))
?f1<-(manual_word_info (head_id ?mid))
(manual_word_info (head_id ?hid)(group_ids $?ids))
(test (and (eq (integerp (member$ ?mid $?ids) ) TRUE)(eq (integerp (member$ ?hid $?ids)) TRUE)))
(test (neq ?mid ?hid))
=>
	(retract ?f1)
)
;----------------------------------------------------------------------------------------------------------
(defrule rm_grouped_chunk_fact
(declare (salience 900))
?f0<-(chunk_name-chunk_ids-words ? ?id - ?m)
(chunk_name-chunk_ids-words ? $? ?id $?  - ? ? $?mng)
=>
	(retract ?f0)
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 5-9-14
;The Princess began to weep.                                   rAjakumArI ne ronA [SurU kara xiyA]. 
;And, turning to her guards, she ordered them to seize Dipu.   usane apane paharexAroM kI ora GUmakara xIpU ko pakadane kA [AxeSa xiyA]. 
;Dipu remarked.                                                xIpU ne [tippaNI kI].
;He must be very worried about me.                             vaha avaSya hI mere lie bahuwa [ciMwiwa hogA].
;Similarly, we can argue that it lies on the median MQ and NR. isI prakAra hama [warka kara sakawe hEM] ki yaha mAXyikA @MQ Ora @NR para BI avasWiwa hogA.
(defrule check_prev_word_for_kara_or_ho_or_xe_using_dic
(declare (salience 850))
?f0<-(chunk_name-chunk_ids-words ?chnk&VGF|VGNN|VGNF ?mid $?gids -  $?mng)
(manual_word_info (head_id ?mid) (word ?w))
(man_word-root-cat ?w ?r&kara|ho|xe|raKa v)
(manual_word_info (head_id ?mid1&:(= (- ?mid 1) ?mid1)) (word $?word))
(database_info (components $?word $? ?r) (root ?root))
=>
       (retract ?f0 )
       (assert (chunk_name-chunk_ids-words ?chnk  ?mid1 ?mid $?gids - $?word $?mng))
       (assert (id-kara_grouped ?mid1))
       (assert (id-man_root ?mid1 $?word ?r))	
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 12-2-15
;if there is no entry in database then check for the mng in WSD
;Caravans crossing the Gobi desert also [employed] magnetic needles. 
;gobI regiswAna ko pAra karane vAle kAPile BI cumbakIya suiyoM kA [upayoga karawe We].
;Today, most of the electrical devices we use [require] ac voltage.
;Ajakala jina vExyuwa yukwiyoM kA hama upayoga karawe hEM unameM se aXikAMSa ke lie @ac voltawA kI hI [AvaSyakawA howI hE].
;Since the electromagnetic force is so much stronger than the gravitational force, it dominates all phenomena at atomic and molecular scales. 
;cUfki vixyuwa cumbakIya bala guruwvAkarRaNa bala kI apekRA kahIM aXika prabala howA hE yaha ANvika waWA paramANvIya pEmAne kI saBI pariGatanAoM para [CAyA] [rahawA hE].
;This causes a major upheaval in science. ye prekRaNa hI vijFAna meM mahAna krAnwi kA [kAraNa banawe] hEM.
(defrule check_prev_word_for_kara_or_ho_or_xe
(declare (salience 849))
?f0<-(chunk_name-chunk_ids-words ?chnk&VGF|VGNN|VGNF ?mid $?gids -  $?mng)
(manual_word_info (head_id ?mid) (word ?w))
(man_word-root-cat ?w ?r&kara|ho|xe|raha|bana v)
(manual_word_info (head_id ?mid1&:(= (- ?mid 1) ?mid1)) (word ?word))
(man_word-root-cat ?word ?r0 ?)
(id-HM-source ? ?r0 ?r ?)
=>
       	(retract ?f0 )
       	(assert (chunk_name-chunk_ids-words ?chnk  ?mid1 ?mid $?gids - ?word $?mng))
      	(assert (id-kara_grouped ?mid1))
	(assert (id-man_root ?mid1 ?r0 ?r))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 02-06-15
(defrule get_verb_chunk_with_root
(declare (salience 801))
?f<-(chunk_name-chunk_ids-words ?chnk&VGF|VGNN|VGNF $?gids - ?man_wrd $?r_mng)
?f1<-(manual_word_info (head_id ?mid)(word ?man_wrd))
(test (member$ ?mid $?gids))
(id-man_root ?mid $?root)
(not (manual_word_info (group_ids $?gids)))
=>
        (bind $?new_mng (create$ ?man_wrd $?r_mng))
	(modify ?f1 (word $?new_mng)(root $?root)(root_components $?root) (group_ids $?gids))
)
;----------------------------------------------------------------------------------------------------------
;Ex for not:This is mainly because most of the electrical energy sold by power companies is transmitted and distributed as alternating current.
;isakA muKya kAraNa yaha hE ki aXikAMSa vixyuwa kampaniyoM xvArA becI jA rahI vixyuwa UrjA prawyAvarwI XArA ke rUpa meM hI sampreRiwa evaM [viwariwa howI hE].
(defrule get_verb_chunk1
(declare (salience 800))
?f<-(chunk_name-chunk_ids-words ?chnk&VGF|VGNN|VGNF $?gids - ?man_wrd $?r_mng)
?f1<-(manual_word_info (head_id ?mid)(word ?man_wrd))
(test (member$ ?mid $?gids))
(not (manual_word_info (group_ids $?gids)))
=>
        (bind $?new_mng (create$ ?man_wrd $?r_mng))
        (modify ?f1 (word $?new_mng)(group_ids $?gids))
)
;----------------------------------------------------------------------------------------------------------
(defrule verb_rule1
(declare (salience 740)) 
?f1<-(manual_word_info (head_id ?id0) (word $?noun ?iwa_word)(group_ids $?grp_ids))
(test (eq (numberp ?iwa_word) FALSE))
(test (or (eq (sub-string (- (length ?iwa_word) 2) (length ?iwa_word) ?iwa_word) "iwa") (eq (sub-string (- (length ?iwa_word) 2) (length ?iwa_word) ?iwa_word) "rpa") ))
?f2<-(manual_word_info (head_id ?id1&:(=(+ ?id0 1) ?id1)) (word ?tam&karawA|howA|karawI|howI|karawe|howe|karanA)(group_ids ?id1))
?f3<-(manual_word_info (head_id ?id2&:(=(+ ?id1 1) ?id2)) (word ?tam1&hE|hEM)(group_ids ?id2))
(man_word-root-cat ?tam ?root&kara|ho v)
(not (replaced_tam_with_root_tam ?id0))
=>
	(retract ?f2 ?f3)
       	(modify ?f1 (word $?noun ?iwa_word ?tam ?tam1)(root ?iwa_word ?root)(vibakthi wA ?tam1)(group_ids $?grp_ids ?id1 ?id2))
        (assert (replaced_tam_with_root_tam ?id0))
)
;-------------------------------------------------------------------------------------------------------------------------------
;It can be noted that each term represents a periodic function with a different angular frequency.
;XyAna xIjie, yahAz prawyeka paxa eka viBinna koNIya Avqwwi ke AvarwI Palana ko [nirUpiwa] [karawA hE].
(defrule verb_rule2
(declare (salience 730))
?f1<-(manual_word_info (head_id ?id0) (word $?noun ?iwa_word)(group_ids $?grp_ids))
(test (eq (numberp ?iwa_word) FALSE))
(test (eq (sub-string (- (length ?iwa_word) 2) (length ?iwa_word) ?iwa_word) "iwa"))
?f2<-(manual_word_info (head_id ?id1&:(=(+ ?id0 1) ?id1)) (word ?tam&karawA|howA|karawI|howI|karawe|howe|karanA ?tam1&hE|hEM)(group_ids ?id1 ?id2))
(man_word-root-cat ?tam ?root&kara|ho v)
(not (replaced_tam_with_root_tam ?id0))
=>
        (retract ?f2)
	(modify ?f1 (word $?noun $?noun ?iwa_word ?tam ?tam1)(root ?iwa_word ?root)(vibakthi wA ?tam1)(group_ids $?grp_ids ?id1 ?id2))
        (assert (replaced_tam_with_root_tam ?id0))
)
;-------------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;This causes a major upheaval in science.  ye prekRaNa hI vijFAna meM mahAna krAnwi kA [kAraNa banawe] [hEM].
;When this is an elastic collision, the magnitude of the velocity remains the same.
;jaba yaha takkara prawyAsWa howI hE wo vega kA parimANa aparivarwiwa [rahawA] [hE].
(defrule group_WA_hEM
(declare (salience 730))
?f1<-(manual_word_info (word $?noun ?m1)(group_ids $?grp_ids ?mid))
(test (or (eq (sub-string (- (length ?m1) 1) (length ?m1) ?m1  ) "wI") (eq (sub-string (- (length ?m1) 1) (length ?m1) ?m1  ) "we")(eq (sub-string (- (length ?m1) 1) (length ?m1) ?m1  ) "wA")))
?f2<-(manual_word_info (head_id ?id&:(=(+ ?mid 1) ?id)) (word ?m2&hE|hEM))
=>
        (retract ?f2)
	(modify ?f1 (word $?noun ?m1 ?m2)(vibakthi wA ?m2)(group_ids $?grp_ids ?mid ?id))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;We can broadly [describe] physics as a study of the basic laws of nature and their manifestation in different natural phenomena.
;mote wOra para hama BOwikI kA [varNana] prakqwi ke mUlaBUwa niyamoM kA aXyayana waWA viBinna prAkqwika pariGatanAoM meM inakI aBivyakwi ke rUpa meM [kara sakawe hEM].
;The technological exploitation of this property is generally [credited] to the Chinese.
;isa guNa ke wakanIkI upayoga kA [Sreya] AmawOra para cIniyoM ko [xiyA jAwA hE].
(defrule group_kara
(declare (salience 640))
?f0<-(manual_word_info (head_id ?id0) (word ?m1 $?mng)(group_ids $?ids))
(man_word-root-cat ?m1	?r&kara|xe|raha	v)
?f1<-(manual_word_info (head_id ?id1) (word ?m)(group_ids ?id1))
(database_info (components ?m kara|xe|raha))
=>
        (retract ?f0 ?f1)
	(modify ?f0 (head_id ?id1) (word ?m ?m1 $?mng)(root ?m ?r)(vibakthi 0 $?mng) (group_ids ?id1 $?ids))
	(assert (chunk_info_to_be_modiifed ?id1 $?ids))
	(assert	(replaced_tam_with_root_tam ?id1))
)
;----------------------------------------------------------------------------------------------------------
;As vib and tam both goes into same field...increasing tam rule and replace_tam_with_root-tam rule salience above than vib rules
;ex: More [precisely], a is the acceleration of the [center of] mass of the system.
(defrule tam
(declare (salience 600))
?f<-(manual_word_info (head_id ?id) (word ?word $?wrds)(group_ids $?grp_ids))
?f1<-(man_word-root-cat    ?word&~hE ?root&~kara    v)
(chunk_name-chunk_ids-words VGF|VGNN|VGNF $? ?id $? - $?)
(not (root_decided ?id))
;(test (neq (length ?root) (length ?word)))
=>
       (if (eq ?word ?root) then ;Ex: You can neither inherit it, nor pass it on to your progeny. न तो आप इसे उत्तराधिकार में पा सकते हैं और न ही अपनको विरासत में दे सकते हैं
               (modify ?f (root ?root)(vibakthi 0 $?wrds))
               (assert (root_decided ?id))
       else
               (bind ?tam (string-to-field (sub-string (+ (length ?root) 1)  (length ?word) ?word)))
	       (if (neq ?tam ne) then	;lene ke paScAwa
               		(modify ?f (root ?root)(vibakthi ?tam $?wrds ))
		else
			(modify ?f (root ?root))
	       )
               (assert (root_decided ?id))
       )
)
;----------------------------------------------------------------------------------------------------------
;This process continues till the capacitor is fully charged.
;yaha prakriyA waba waka [calawI rahawI hE] jaba waka ki saMXAriwra pUrI waraha AveSiwa nahIM ho jAwA hE.
;root = cala , tam = wA_rahawA_hE 
;Man has constantly made endeavors to improve the quality of communication with other human beings. 
;mAnava niranwara hI yaha [prayawna karawA rahA hE] ki usakA mAnava jAwi se saFcAra guNawA meM unnawa ho. 
(defrule replace_tam_with_root-tam
(declare (salience 550))
?f<-(manual_word_info (head_id ?id) (word ?word $?wrds)(root ?root $?r)(vibakthi ?tam $?tams)(group_ids $?grp_ids))
(test (and (neq ?tam 0) (eq (integerp (member$ ?tam (create$ meM se para))) FALSE)))
(not (replaced_tam_with_root_tam ?id))
(not (vib_added ?id))
=>
       (bind ?new_mng (remove_character " " (implode$ (create$ ?tam $?tams)) "_"))
 ;      (printout t (implode$ ?new_mng) crlf)
       (bind ?mng (gdbm_lookup "AllTam_rev.gdbm" (implode$ ?new_mng)))
       (if (neq ?mng "FALSE") then
               (bind ?root_tam (string-to-field (implode$ (remove_character "_"  (implode$ (create$ ?mng)) " "))))
 ;              (printout t ?root_tam crlf)
               (if (eq ?root ?word) then 
                       (modify ?f (vibakthi ?root ?tam))
                       (assert (replaced_tam_with_root_tam ?id)) 
               else
               (bind ?new_tam (sub-string 2 (length ?root_tam) ?root_tam))
;               (printout t ?new_tam ?root_tam crlf)
                       (modify ?f (root ?root $?r)(vibakthi (explode$ ?new_tam)))
                       (assert (replaced_tam_with_root_tam ?id))
               )
       )
)      

;============================================ phrasal rules ==================================
(defrule rm_L_layer_punct
(declare (salience 500))
?f<-(anu_id-anu_mng-man_mng     ?aid ?anu_mng $?pre ?PUNCT $?post)
(test (eq (sub-string 1 6 (implode$ (create$ ?PUNCT))) "@PUNCT"))
=>
        (retract ?f)
        (assert (anu_id-anu_mng-man_mng  ?aid ?anu_mng $?pre $?post))
)
;----------------------------------------------------------------------------------------------------------
(defrule rm_M_layer_punct
(declare (salience 500))
?f<-(eng_id-eng_wrd-man_wrd  ?aid ?anu_mng $?pre ?PUNCT $?post)
(test (eq (sub-string 1 6 (implode$ (create$ ?PUNCT))) "@PUNCT"))
=>
        (retract ?f)
        (assert (eng_id-eng_wrd-man_wrd  ?aid ?anu_mng $?pre $?post))
)
;----------------------------------------------------------------------------------------------------------
(defrule rm_underscore_L_layer
(declare (salience 450))
?f<-(anu_id-anu_mng-man_mng ?aid ?word ?man_mng)
(not (underscore_removed ?aid))
(test (and (neq ?man_mng @PUNCT-Comma) (neq ?word @PUNCT-Comma)))
(test (neq (str-index "_" ?man_mng) FALSE))
=>
  (retract ?f)
  (bind ?new_mng (remove_character "_" (implode$ (create$ ?man_mng)) " "))
;  (bind ?new_mng (remove_character "." (implode$ ?new_mng) " "))
  (bind ?new_mng (remove_character "," (implode$ ?new_mng) " "))
  (assert (anu_id-anu_mng-man_mng ?aid ?word ?new_mng))
  (assert (underscore_removed ?aid))
)
;----------------------------------------------------------------------------------------------------------
(defrule rm_underscore_M_layer
(declare (salience 450))
?f<-(eng_id-eng_wrd-man_wrd ?aid ?word ?man_mng)
(not (underscore_removed_in_M ?aid))
(test (and (neq ?man_mng @PUNCT-Comma) (neq ?word @PUNCT-Comma)))
(test (neq (str-index "_" ?man_mng) FALSE))
=>
  (retract ?f)
  (bind ?new_mng (remove_character "_" (implode$ (create$ ?man_mng)) " "))
 ; (bind ?new_mng (remove_character "." (implode$ ?new_mng) " "))
  (bind ?new_mng (remove_character "," (implode$ ?new_mng) " "))
  (assert (eng_id-eng_wrd-man_wrd ?aid ?word ?new_mng))
  (assert (underscore_removed_in_M ?aid))
)
;----------------------------------------------------------------------------------------------------------
;This suggests the definition of dipole moment. 
;isase xviXruva AGUrNa kI pariBARA kA [safkewa] [milawA hE].
(defrule verb_group_using_L_layer
(declare (salience 400))
?f2<-(chunk_name-chunk_ids-words VGF ?id0 $?ids - ?m1 $?mng)
?f<-(manual_word_info (head_id ?id0) (word ?m1 $?mng)(root $?r) (group_ids ?id0 $?ids))
(anu_id-anu_mng-man_mng ? ? ?m ?m1 $?m2)
?f0<-(manual_word_info (head_id ?id&:(=(- ?id0 1) ?id)) (word ?m)(group_ids $?ids1))
?f1<-(chunk_name-chunk_ids ? ?id)
=>
	(retract ?f ?f0 ?f1 ?f2)
	(modify ?f (head_id ?id)(word ?m ?m1 $?mng)(root ?m $?r)(group_ids $?ids1 ?id0 $?ids))
	(assert (chunk_name-chunk_ids-words VGF ?id ?id0 $?ids - ?m ?m1 $?mng))
	(assert (replaced_tam_with_root_tam ?id0))
)
;----------------------------------------------------------------------------------------------------------
;This human endeavor led, in course of time, to modern science and technology.
;Man: kAlAnwara meM mAnava ke inhIM prayAsoM se AXunika vijFAna waWA prOxyogikI kA [mArga praSaswa huA hE].
(defrule verb_group_using_L_layer_and_huA
(declare (salience 400))
?f2<-(chunk_name-chunk_ids-words VGF ?id0 $?ids - huA $?mng)
?f<-(manual_word_info (head_id ?id0) (word huA $?mng)(root $?r) (group_ids ?id0 $?ids))
?f0<-(manual_word_info (head_id ?id&:(=(- ?id0 1) ?id)) (word ?m)(group_ids $?ids1))
(anu_id-anu_mng-man_mng ? ? $? ?m)
?f1<-(chunk_name-chunk_ids ? ?id)
=>
        (retract ?f ?f0 ?f1 ?f2)
        (modify ?f (head_id ?id)(word ?m huA $?mng)(root ?m ho)(group_ids $?ids1 ?id0 $?ids))
        (assert (chunk_name-chunk_ids-words VGF ?id ?id0 $?ids - ?m huA $?mng))
        (assert (replaced_tam_with_root_tam ?id0))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;This causes a major upheaval in science.  ye prekRaNa hI vijFAna meM mahAna krAnwi kA [kAraNa banawe hEM].
(defrule modify_verb_chunk
(declare (salience 10))
(manual_word_info (head_id ?id0) (word $?noun)(group_ids ?id $?ids $?vids))
?f0<-(chunk_name-chunk_ids-words VGF $?vids - $?wrds)
?f1<-(chunk_name-chunk_ids ?c ?id $?d)
=>
        (retract ?f0 ?f1)
	(assert (chunk_name-chunk_ids ?c $?d))
        (assert (chunk_name-chunk_ids-words VGF  ?id $?ids $?vids  - ?id $?ids $?wrds))
)

;Counter example: Mass is a basic property of matter.
;		  xravyamAna paxArWa kA eka AXAraBUwa guNa hE. phrasal grp : [xravyamAna AXAraBUwa]
;The effort is to see the physical world as manifestation of some universal laws in different domains and conditions.
;isakA uxxeSya viBinna [praBAva kRewroM] waWA parisWiwiyoM meM BOwika jagawa ko kuCa sArvawrika niyamoM kI aBivyakwi ke rUpa meM xeKane kA prayAsa hE .
;(defrule group_using_L_layer
;(declare (salience 400))
;(anu_id-anu_mng-man_mng ? ? ?m ?m1)
;?f<-(manual_word_info (head_id ?id) (word ?m) (group_ids ?id))
;?f1<-(manual_word_info (head_id ?id1) (word ?m1) (group_ids ?id1 $?ids))
;(test (neq ?id ?id1))
;=>
;	(retract ?f)
;	(modify ?f1 (word ?m ?m1)(group_ids ?id ?id1 $?ids))
;)


;---------------------------- group using Anu output -------------------------------
;The component of velocity normal to the force [remains] unchanged.
;bala ke aBilambavaw vega kA Gataka aparivarwiwa [rahawA hE].
;In order to specify position, we need to use a reference point and a set of axes.
;sWiwi ke nirXAraNa ke lie eka [sanxarBa biMxu] waWA akRoM ke eka samuccaya kI AvaSyakawA howI hE.
(defrule group_using_anu_out
(declare (salience 12))
?f0<-(manual_word_info (head_id ?id0) (word $?mng)(group_ids ?id $?ids))
(id-Apertium_output ? ?m $?mng)
?f1<-(manual_word_info (head_id ?id1&:(= (- ?id 1) ?id1)) (word ?m) (group_ids $?ids1))
=>
        (retract ?f0 ?f1)
        (assert (manual_word_info (head_id ?id1) (word ?m $?mng)(group_ids $?ids1 ?id $?ids)))
)

