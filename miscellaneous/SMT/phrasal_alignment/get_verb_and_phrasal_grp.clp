;This file is written by Shirisha Manju

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

;================================================== verb rules =============================================
;What can you conclude from these observations?
;Apa ina prekRaNa se kyA [niRkarRa_nikAla] sakawe hEM?
(defrule rm_underscore_in_anu_out
(declare (salience 1001))
?f0<-(id-Apertium_output ?id $?p ?m $?p1)
(test (neq (str-index "_" ?m) FALSE))
=>
	(retract ?f0)
	(bind ?new_mng (remove_character "_" (implode$ (create$ ?m)) " "))
	(assert (id-Apertium_output ?id $?p $?new_mng $?p1))		
)
;----------------------------------------------------------------------------------------------------------

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
;(manual_word_info (head_id ?mid) (word $?man_wrd))
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
(man_word-root-cat ?w ?r&kara|ho|xe v)
(manual_word_info (head_id ?mid1&:(= (- ?mid 1) ?mid1)) (word $?word))
(database_info (components $?word $? ?r) (root ?root))
;(database_info (components $?word $? ?kar&kara|ho|xe) (root ?root))
=>
       (retract ?f0 )
       (assert (chunk_name-chunk_ids-words ?chnk  ?mid1 ?mid $?gids - $?word $?mng))
       (assert (id-kara_grouped ?mid1))
;      (assert (id-decided_root ?mid1 $?word ?r))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 12-2-15
;if there is no entry in database then check for the mng in WSD
;Caravans crossing the Gobi desert also [employed] magnetic needles. 
;gobI regiswAna ko pAra karane vAle kAPile BI cumbakIya suiyoM kA [upayoga karawe We].
;Today, most of the electrical devices we use [require] ac voltage.
;Ajakala jina vExyuwa yukwiyoM kA hama upayoga karawe hEM unameM se aXikAMSa ke lie @ac voltawA kI hI [AvaSyakawA howI hE].
(defrule check_prev_word_for_kara_or_ho_or_xe
(declare (salience 849))
?f0<-(chunk_name-chunk_ids-words ?chnk&VGF|VGNN|VGNF ?mid $?gids -  $?mng)
(manual_word_info (head_id ?mid) (word ?w))
(man_word-root-cat ?w ?r&kara|ho|xe v)
(manual_word_info (head_id ?mid1&:(= (- ?mid 1) ?mid1)) (word ?word))
(man_word-root-cat ?word ?r0 ?)
(id-HM-source ? ?a_mng ?)
(test (eq ?a_mng (string-to-field (str-cat ?r0 "_" ?r))))
=>
       	(retract ?f0 )
       	(assert (chunk_name-chunk_ids-words ?chnk  ?mid1 ?mid $?gids - ?word $?mng))
      	(assert (id-kara_grouped ?mid1))
 ;      (assert (id-decided_root ?mid1 ?r0 ?r))
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
;Added by Shirisha Manju 5-9-14
;The Princess began to weep. rAjakumArI ne ronA [SurU kara xiyA]. 
;Not Ex: ;olIka amla aNu ke sAija kA [Akalana karane kI] eka sarala viXi nIce xI gaI hE.
;        A simple method for estimating the molecular size of oleic acid is given below.
(defrule get_kara_root
(declare (salience 700))
?f0<-(id-kara_grouped ?id)
?f<-(manual_word_info (head_id ?id) (word $?m ?w)(group_ids $?grp_ids ?lid))
?f1<-(man_word-root-cat    ?w&~howI&~hE ?root&kara|ho|xe    v) ; nirBara karawA [hE]
(manual_id-word =(- ?lid 1) ?m1)
(not (man_word-root-cat ?m1 kara v))
=>
       (retract ?f0 ?f1)
       (modify ?f (root $?m ?root))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 8-9-14
;The average velocity can be positive or negative depending upon the sign of the displacement.
;Osawa vega kA qNAwmaka yA XanAwmaka honA visWApana ke cihna para [nirBara karawA hE] .
;Man has constantly made endeavors to improve the quality of communication with other human beings. 
;mAnava niranwara hI yaha [prayawna karawA rahA hE] ki usakA mAnava jAwi se saFcAra guNawA meM unnawa ho. 
;Today, most of the electrical devices we use [require] ac voltage.
;Ajakala jina vExyuwa yukwiyoM kA hama upayoga karawe hEM unameM se aXikAMSa ke lie @ac voltawA kI hI [AvaSyakawA howI hE].
(defrule get_kara_root1
(declare (salience 650))
?f0<-(id-kara_grouped ?id)
?f<-(manual_word_info (head_id ?id) (word $?m ?w $?m1)(group_ids $?grp_ids))
;?f1<-(man_word-root-cat    ?w&~howI ?root&kara|ho|xe    v)
?f1<-(man_word-root-cat    ?w ?root&kara|ho|xe    v)
(test (neq  (length $?m1) 0))
=>
        (retract ?f0 ?f1)
       (if (eq ?root kara) then
               (bind ?v (string-to-field (sub-string 5 (length ?w) ?w)))
               (modify ?f (root $?m ?root)(vibakthi ?v $?m1))
       else  (if (eq ?root ho) then
               (bind ?v (string-to-field (sub-string 3 (length ?w) ?w)))
               (modify ?f (root $?m ?root)(vibakthi ?v $?m1))
       	     
	     else (modify ?f (root $?m ?root)(vibakthi $?m1))
	)
       )
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
	;ert (manual_word_info (head_id ?id1) (word ?m kara $?mng)(root ?m kara) (group_ids ?id1 $?ids)))
	(assert (chunk_info_to_be_modiifed ?id1 $?ids))
	(assert	(replaced_tam_with_root_tam ?id1))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;Since the electromagnetic force is so much stronger than the gravitational force, it dominates all phenomena at atomic and molecular scales. 
;cUfki vixyuwa cumbakIya bala guruwvAkarRaNa bala kI apekRA kahIM aXika prabala howA hE yaha ANvika waWA paramANvIya pEmAne kI saBI pariGatanAoM para [CAyA] [rahawA hE].
(defrule verb_group_using_anu_out
(declare (salience 630))
(id-Apertium_output ? ?m $?mng)
?f0<-(manual_word_info (head_id ?id) (word ?m)(group_ids ?id))
?f1<-(manual_word_info (head_id ?id1&:(= (+ ?id 1) ?id1)) (word $?mng) (group_ids $?ids1))
;(or (id-Apertium_output ? ?m $?mng)(id-HM-source ? ?root&:(eq (string-to-field (str-cat ?m "_" ho)) ?root) ?))

=>
        (retract ?f0 ?f1)
        (assert (manual_word_info (head_id ?id) (word ?m $?mng)(group_ids ?id $?ids1)))
	(assert (chunk_info_to_be_modiifed ?id $?ids1))
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



