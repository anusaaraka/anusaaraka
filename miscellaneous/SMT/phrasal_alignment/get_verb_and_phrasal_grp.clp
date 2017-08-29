;This file is written by Shirisha Manju

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(slot tam (default 0))(multislot tam_components (default 0))(multislot group_ids (default 0)))


(deftemplate  database_info (slot root (default 0))(slot meaning (default 0))(multislot components (default 0))(slot database_name (default 0))( slot database_type (default 0))(multislot group_ids (default 0)))

(deftemplate tam_database_info (multislot e_tam (default 0)) (slot database_name (default 0)) (multislot meaning (default 0))(multislot components (default 0)))
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
;Added by Shirisha Manju 12-01-17
;The inquiring and imaginative human mind [has responded] to the wonder and awe of nature in different ways.
;prakqwi ke Ese AScaryoM evaM vismayoM ke prawi mAnava kA kalpanASIla waWA anveRI maswiRka viBinna prakAra se apanI [prawikriyAez vyakwa karawA rahA hE]  .
(defrule check_prev_2_words_for_kara_or_ho_or_xe_using_dic
(declare (salience 855))
?f0<-(chunk_name-chunk_ids-words ?chnk&VGF|VGNN|VGNF ?mid $?gids -  $?mng)
(manual_word_info (head_id ?mid) (word ?w))
(man_word-root-cat ?w ?r&kara|ho|xe|raKa|le v|modified_cat)
(manual_word_info (head_id ?mid1&:(= (- ?mid 1) ?mid1)) (word ?word)(group_ids ?mid1))
(manual_word_info (head_id ?mid2&:(= (- ?mid1 1) ?mid2)) (word ?word1)(group_ids ?mid2))
(man_word-root-cat ?word1 ?root2 ?)
(man_word-root-cat ?word ?root1 ?)
(or (database_info (components ?word1 ?word ?r))(database_info (components ?root2 ?root1 ?r)))
=>
       (retract ?f0 )
       (assert (chunk_name-chunk_ids-words ?chnk  ?mid2 ?mid1 ?mid $?gids - ?word1 ?word $?mng))
       (assert (id-man_root ?mid2 ?root2 ?root1 ?r))
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
(man_word-root-cat ?w ?r&kara|ho|xe|raKa|le v|modified_cat)
(manual_word_info (head_id ?mid1&:(= (- ?mid 1) ?mid1)) (word $?word)(group_ids $?ids))
(or (database_info (components $?word $? ?r) (root ?root))(database_info (components $?word kara|ho|xe|le)))
(not (id-Apertium_output ? $?word))
=>
       (retract ?f0 )
       (assert (chunk_name-chunk_ids-words ?chnk  $?ids ?mid $?gids - $?word $?mng))
       (assert (id-man_root ?mid1 $?word ?r))	
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 11-7-15
;match with word and vib in dic
;It [underlies] the macroscopic forces like 'tension', 'friction', 'normal force', 'spring force', etc..
;yaha 'wanAva', 'GarRaNa', 'sAmAnya bala', 'kamAnI bala' Axi jEse sWUla baloM ke [mUla meM howA hE].
(defrule check_prev_word_for_kara_or_ho_or_xe_using_dic1
(declare (salience 840))
?f0<-(chunk_name-chunk_ids-words ?chnk&VGF|VGNN|VGNF ?mid $?gids -  $?mng)
(manual_word_info (head_id ?mid) (word ?w))
(man_word-root-cat ?w ?r&kara|ho|xe|raKa v)
(manual_word_info (word $?word) (group_ids $?p ?mid1&:(= (- ?mid 1) ?mid1)) (vibakthi ?v))
(database_info (components $?word ?v ?r) (root ?root))
=>
       (retract ?f0 )
       (assert (chunk_name-chunk_ids-words ?chnk $?p ?mid1 ?mid $?gids - $?word ?v $?mng))
       (assert (id-man_root ?mid1 $?word ?v ?r))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 19-11-15
;Eng: It is important to note that displacement vector is the straight line joining the initial and final positions and [does not depend] on the actual path undertaken by the object between the two positions.
;yahAz yaha bAwa mahawvapUrNa hE ki 'visWApana saxiSa' ko eka sarala reKA se vyakwa karawe hEM jo vaswu kI anwima sWiwi ko usakI prAramBika sWiwi se jodawI hE waWA yaha usa vAswavika paWa para [nirBara nahIM karawA] jo vaswu xvArA biMxuoM ke maXya calA jAwA hE .
(defrule check_nahIM_prev_word_for_kara_or_ho_or_xe_using_dic1
(declare (salience 835))
?f0<-(chunk_name-chunk_ids-words ?chnk&VGF|VGNN|VGNF ?id ?mid $?gids -  $?mng)
(manual_word_info (head_id ?id) (word nahIM))
(manual_word_info (head_id ?mid) (word ?w))
(man_word-root-cat ?w ?r&kara|ho|xe|raKa v)
(manual_word_info (head_id ?mid1&:(= (- ?id 1) ?mid1)) (word $?word))
(or (database_info (components $?word ?r) (root ?root))(database_info (components $?word ho|kara) (root ?root)))
=>
       	(retract ?f0 )
	(assert (chunk_name-chunk_ids-words ?chnk  ?mid1 ?id ?mid $?gids - $?word $?mng))
       	(assert (id-man_root ?mid1 $?word ?r))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 16-06-17
;In most patients no symptoms occur. aXikawara marIjoM meM koI BI lakRaNa prakata nahIM howe.
(defrule check_nahIM_for_kara_or_ho_or_xe_using_dic
(declare (salience 835))
?f0<-(chunk_name-chunk_ids-words ?chnk&VGF|VGNN|VGNF ?mid $?gids -  $?mng)
(manual_word_info (head_id ?mid) (word ?w))
(man_word-root-cat ?w ?r&kara|ho|xe|raKa v)
(manual_word_info (head_id ?mid1&:(= (- ?mid 1) ?mid1)) (word nahIM))
(manual_word_info (head_id ?mid2&:(= (- ?mid1 1) ?mid2)) (word $?word))
(or (database_info (components $?word ?r))(database_info (components $?word ho|kara) (root ?root)))
=>
        (retract ?f0 )
        (assert (chunk_name-chunk_ids-words ?chnk  ?mid2 ?mid1 ?mid $?gids - $?word nahIM $?mng))
        (assert (id-man_root ?mid2 $?word ?r))
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
(id-HM-source ? $? ?r0 ?r ?) ; (viSeRa rUpa se [ulleKa kara] WSD_root_mng)
=>
       	(retract ?f0 )
       	(assert (chunk_name-chunk_ids-words ?chnk  ?mid1 ?mid $?gids - ?word $?mng))
	(assert (id-man_root ?mid1 ?r0 ?r))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 02-06-15
(defrule get_verb_chunk_with_root
(declare (salience 810))
?f<-(chunk_name-chunk_ids-words ?chnk&VGF|VGNN|VGNF $?gids - ?man_wrd $?r_mng)
?f1<-(manual_word_info (head_id ?mid)(word ?man_wrd $?))
(test (member$ ?mid $?gids))
(id-man_root ?mid $?root)
(not (manual_word_info (group_ids $?gids)))
=>
        (bind $?new_mng (create$ ?man_wrd $?r_mng))
	(bind ?nr (remove_character " " (implode$ (create$ $?root)) "_"))
	(bind ?tam (explode$ (sub-string (+ (length (implode$ $?root)) 1) (length (implode$ $?new_mng)) (implode$ $?new_mng))))
	(bind ?ntam (string-to-field (implode$  (remove_character " " (implode$ (create$ ?tam)) "_"))))
;	(printout t ?tam " "?ntam crlf)
	(modify ?f1 (word $?new_mng)(root ?nr)(root_components $?root) (group_ids $?gids)(tam ?ntam)(tam_components ?tam))
	(assert (root_decided ?mid))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 23-09-15
;usane vyAvahArika mahawva ke viRayoM ke lie upasWiwa howA huA ki [Coda xiyA] WA; usane karane ke lie saBI icCA KoI WI.
;pahuFcA xiyA = pahuFcA xe
(defrule get_vb_root_for_chunker_info
(declare (salience 805))
(or(chunk_name-chunk_ids-words ?chnk&VGF|VGNN|VGNF $?gids - ?man_wrd ?m)(chunk_name-chunk_ids-words ?chnk&VGF|VGNN|VGNF $?gids - ?man_wrd $? ?m))
(man_word-root-cat ?m&~hE&~kI ?r&kara|ho|xe|raha|bana v)
(man_word-root-cat ?man_wrd ?r1&~kara ?)
?f1<-(manual_word_info (head_id ?mid)(word ?man_wrd $?r_mng)(group_ids $?gids))
(not (root_decided ?mid))
=>
	(bind ?nr (remove_character " " (implode$ (create$ ?man_wrd ?r)) "_"))
	(modify ?f1 (root ?nr)(root_components ?man_wrd ?r) (group_ids $?gids))
        (assert (root_decided ?mid))
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
(not (manual_word_info (vibakthi ?vib&~0)(group_ids $?gids $?)));nahAne ke lie
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
?f2<-(manual_word_info (head_id ?id1&:(=(+ ?id0 1) ?id1)) (word ?tam&karawA|howA|karawI|howI|karawe|howe)(group_ids ?id1))
?f3<-(manual_word_info (head_id ?id2&:(=(+ ?id1 1) ?id2)) (word ?tam1&hE|hEM)(group_ids ?id2))
(man_word-root-cat ?tam ?root&kara|ho v)
(not (replaced_tam_with_root_tam ?id0))
=>
	(retract ?f2 ?f3)
	(bind ?nr (remove_character " " (implode$ (create$ ?iwa_word ?root)) "_"))
	(bind ?ntam (string-to-field (implode$ (remove_character " " (implode$ (create$ wA ?tam1)) "_"))))
       	(modify ?f1 (word $?noun ?iwa_word ?tam ?tam1)(root ?nr)(root_components ?iwa_word ?root)(tam ?ntam)(tam_components wA ?tam1)(group_ids $?grp_ids ?id1 ?id2))
        (assert (replaced_tam_with_root_tam ?id0))
	(assert (root_decided ?id0))
)
;-------------------------------------------------------------------------------------------------------------------------------
;It can be noted that each term represents a periodic function with a different angular frequency.
;XyAna xIjie, yahAz prawyeka paxa eka viBinna koNIya Avqwwi ke AvarwI Palana ko [nirUpiwa] [karawA hE].
(defrule verb_rule2
(declare (salience 730))
?f1<-(manual_word_info (head_id ?id0) (word $?noun ?iwa_word)(group_ids $?grp_ids))
(test (eq (numberp ?iwa_word) FALSE))
(test (eq (sub-string (- (length ?iwa_word) 2) (length ?iwa_word) ?iwa_word) "iwa"))
?f2<-(manual_word_info (head_id ?id1&:(=(+ ?id0 1) ?id1)) (word ?tam&karawA|howA|karawI|howI|karawe|howe ?tam1&hE|hEM)(group_ids ?id1 ?id2))
(man_word-root-cat ?tam ?root&kara|ho v)
(not (replaced_tam_with_root_tam ?id0))
(not (id-Apertium_output ? ?iwa_word))
=>
        (retract ?f2)
	(bind ?nr (remove_character " " (implode$ (create$ ?iwa_word ?root)) "_"))
	(bind ?ntam (string-to-field (implode$ (remove_character " " (implode$ (create$ wA ?tam1)) "_"))))
	(modify ?f1 (word $?noun $?noun ?iwa_word ?tam ?tam1)(root ?nr)(root_components ?iwa_word ?root)(tam ?ntam)(tam_components wA ?tam1)(group_ids $?grp_ids ?id1 ?id2))
        (assert (replaced_tam_with_root_tam ?id0))
	(assert (root_decided ?id0))
)
;-------------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 27-07-17
;On the addiction of nicotine coming once man [starts being dependent] on it and can not leave its habit easily.
;eka bAra nikotIna kI lawa padane para inasAna usa para [nirBara rahane lagawA hE] Ora isakI Axawa ko AsAnI se Coda nahIM sakawA
(defrule verb_rule3
(declare (salience 730))
(chunk_name-chunk_ids-words VGNN ?id - ?w)
?f1<-(manual_word_info (head_id ?id) (word ?w))
(test (eq (sub-string (- (length ?w) 1) (length ?w) ?w) "ne"))
?f2<-(manual_word_info (head_id ?id1&:(= (+ ?id 1) ?id1)) (word $?mng) (root laga)(group_ids $?ids))
;?f2<-(manual_word_info (head_id ?id1&:(= (+ ?id 1) ?id1)) (word $?mng) (root laga)(tam wA_hE) (group_ids $?ids))
=>
	(retract ?f1)
	(bind ?nr (string-to-field (str-cat ?w"_laga")))
	(modify ?f2 (word ?w $?mng)(root ?nr) (root_components ?w laga)(group_ids ?id $?ids))
	(assert (root_decided ?id1))
)
;-------------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 25-08-17
;SeyaroM ke [nirgamiwa] [hone ke pahale] kampaxanI ke nixeSakoM ko nimnaliKiwa viRayoM para nirNaya lenA hE
(defrule default_verb_grp
(declare (salience 730))
(chunk_name-chunk_ids-words VGNN ?id $?ids - ?w $?m)
?f1<-(manual_word_info (head_id ?id) (word ?w))
(test (eq (sub-string (- (length ?w) 1) (length ?w) ?w) "ne"))
(man_word-root-cat ?w ?r ?)
?f2<-(manual_word_info (head_id ?id1&:(= (- ?id 1) ?id1)) (word ?mng) (group_ids ?id1))
=>
	(retract ?f1)
	(bind ?nr (string-to-field (str-cat ?mng"_"?r)))
	(modify ?f2 (word ?mng ?w $?m)(root ?nr) (root_components ?mng ?r)(group_ids ?id1 ?id $?ids))
	(assert (root_decided ?id1))
)
;-------------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;Fresh breath and shining teeth enhance your personality. wAjA sAzseM Ora camacamAwe xAzwa Apake vyakwiwva ko [niKArawe hEM].  
;This causes a major upheaval in science.  ye prekRaNa hI vijFAna meM mahAna krAnwi kA [kAraNa banawe] [hEM].
;When this is an elastic collision, the magnitude of the velocity remains the same.
;jaba yaha takkara prawyAsWa howI hE wo vega kA parimANa aparivarwiwa [rahawA] [hE].
;We can also observe that the employment level in different production units also goes up or down together.
;hama Binna-Binna uwpAxana ikAiyoM meM rojagAra ke swara ko BI eka sAWa Gatawe yA [baDawe hue] xeKa sakawe hEM .
;In West Begal's Jailpaiguri district's Alipurdwar prison, a young prisoner Prajit Das had died under mysterious circumstances in March.
;paScima bafgAla ke jalapAIgudI ke alIpuraxvAra jela meM mArca mahIne pahale prAjiwa xAsa nAma ke eka yuvA kExI kI rahasyamaya parisWiwiyoM meM mOwa ho gaI WI .
(defrule group_WA_hEM
(declare (salience 730))
?f1<-(manual_word_info (head_id ?id0)(word $?noun ?m1)(group_ids $?grp_ids ?mid))
(test (neq (numberp ?m1) TRUE))
(test (or (eq (sub-string (- (length ?m1) 1) (length ?m1) ?m1  ) "wI") (eq (sub-string (- (length ?m1) 1) (length ?m1) ?m1  ) "we")(eq (sub-string (- (length ?m1) 1) (length ?m1) ?m1  ) "wA")(eq ?m1 gaI)(eq (sub-string (- (length ?m1) 2) (length ?m1) ?m1  ) "wIM")))
?f2<-(manual_word_info (head_id ?id&:(=(+ ?mid 1) ?id)) (word ?m2&hE|hEM|hue|huI|WI|WA|We|WIM))
(not (id-Apertium_output ? ?m1)) ;The lengths of the line segments representing these vectors are proportional to the magnitude of the vectors.
(chunk_name-chunk_ids ~NP $? ?mid $?);yUz wo hara wIrWa badZA Ora ahama hE , lekina sAwa sWAnoM kI badZI mahawwA Ora [mAnyawA] hE .
(man_word-root-cat ?m1 ?mr v)
=>
        (retract ?f2)
	(bind ?nr (remove_character " " (implode$ (create$ $?noun ?mr)) "_"))
	(bind ?ntam (string-to-field (implode$ (remove_character " " (implode$ (create$ wA ?m2)) "_"))))
	(modify ?f1 (word $?noun ?m1 ?m2)(root ?nr)(root_components $?noun ?mr)(tam ?ntam)(tam_components wA ?m2)(group_ids $?grp_ids ?mid ?id))
;        (assert (replaced_tam_with_root_tam ?id0))
	(assert (root_decided ?id0))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;We can broadly [describe] physics as a study of the basic laws of nature and their manifestation in different natural phenomena.
;mote wOra para hama BOwikI kA [varNana] prakqwi ke mUlaBUwa niyamoM kA aXyayana waWA viBinna prAkqwika pariGatanAoM meM inakI aBivyakwi ke rUpa meM [kara sakawe hEM].
;The technological exploitation of this property is generally [credited] to the Chinese.
;isa guNa ke wakanIkI upayoga kA [Sreya] AmawOra para cIniyoM ko [xiyA jAwA hE].
;Rather, it deals with systems in macroscopic equilibrium and [is concerned] with changes in internal energy, temperature, entropy, etc., of the system through external work and transfer of heat.
;apiwu yaha sWUla sanwulana ke nikAyoM para vicAra karawI hE, waWA isakA [sambanXa] bAhya kArya waWA URmA sWAnAnwaraNa xvArA nikAya kI Anwarika UrjA, wApa, EntroYpI Axi meM anwara se [howA hE].
(defrule group_kara
(declare (salience 640))
?f0<-(manual_word_info (head_id ?id0) (word ?m1 $?mng)(group_ids $?ids))
(man_word-root-cat ?m1	?r&kara|xe|raha|ho	v)
?f1<-(manual_word_info (head_id ?id1) (word ?m)(group_ids ?id1))
(database_info (root ~do) (components ?m ?r))
(not (id-Apertium_output ? ?m1 $?mng));The [work] [done] by the spring force in a cyclic process is zero. awaH spriMga bala xvArA kisI cakrIya prakrama meM [kiyA gayA] [kArya] SUnya howA hE.  dic -- kArya_kara
(test (< ?id1 ?id0))
(not (id-Apertium_output ? ?m));Keep doing small physical activities like climbing stairs, gardening, small domestic [works] or dancing.
(not (id-Apertium_output ? ?m1 $?))
(not (and (id-Apertium_output ? ?a)(man_word-root-cat ?a  ho v)))
(not (manual_id-word =(- ?id1 1) kA)) ;nahIM , mEMne subaha kA [nASwA] kAPI BArI [kiyA] WA  .
=>
	(bind ?nr (remove_character " " (implode$ (create$ ?m ?r)) "_"))
	(if (neq ?m1 ?r) then
		(bind ?last_wrd (string-to-field (sub-string (- (length ?m1) 1) (length ?m1) ?m1  )))
	else
		(bind ?last_wrd (create$))
	)
;	(printout t "lwrd "?last_wrd crlf)
	(if (neq (length ?last_wrd) 0) then
        	(retract ?f1)
		(bind ?ntam (string-to-field (implode$ (remove_character " " (implode$ (create$ ?last_wrd $?mng)) "_"))))
		(modify ?f0 (head_id ?id1)(word ?m ?m1 $?mng)(root ?nr)(root_components ?m ?r)(group_ids ?id1 $?ids)(tam ?ntam)(tam_components ?last_wrd $?mng))
		(assert (root_decided ?id1))
	else (if (neq (length $?mng) 0) then
	        (retract ?f1)
		(bind ?ntam (string-to-field (implode$ (remove_character " " (implode$ (create$ $?mng)) "_"))))
		(modify ?f0 (head_id ?id1)(word ?m ?m1 $?mng)(root ?nr)(root_components ?m ?r)(group_ids ?id1 $?ids)(tam ?ntam)(tam_components $?mng))
		(assert (root_decided ?id1))
	     )
	)
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;And each time he passed, the young man had a sick, frightened feeling, which made him scowl and feel ashamed.
;Ora uXara se gujarawe hue hara bAra usa nOjavAna ko JiJaka BI howI WI Ora dara BI lagawA WA, jisakI vajaha se usakI wyoriyoM para Sikana padZa jAwI WI Ora Sarma [mahasUsa howI WI]
;database : mahasUsa kara
(defrule group_kara_or_ho
(declare (salience 639))
?f1<-(manual_word_info (head_id ?id) (word ?m)(group_ids ?id))
(database_info (components ?m ?r&kara|ho))
?f<-(manual_word_info (word ?m1 $?m2)(group_ids ?id1&:(= (+ ?id 1) ?id1) $?ids))
(man_word-root-cat ?m1  ?r1&kara|ho v)
(not (id-Apertium_output ? ?m ))
=>
	(retract ?f1)
	(bind ?nr (remove_character " " (implode$ (create$ ?m ?r1)) "_"))
	(bind ?ntam (string-to-field (implode$ (remove_character " " (implode$ (create$ $?m2)) "_"))))
;	(bind ?ntam (string-to-field (implode$ (remove_character " " (implode$ (create$ 0 $?m2)) "_"))))
        (modify ?f1 (word ?m ?m1 $?m2)(root ?nr)(root_components ?m ?r1)(tam ?ntam)(tam_components $?m2)(group_ids ?id ?id1 $?ids))
;        (modify ?f1 (word ?m ?m1 $?m2)(root ?nr)(root_components ?m ?r1)(tam ?ntam)(tam_components 0 $?m2)(group_ids ?id ?id1 $?ids))
        (assert (root_decided ?id))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;kiyA jA rahA hE ==> kara , yA_jA_rahA_hE  ; karane ==> kara , ne
(defrule get_verbal_noun_and_kiyA_root-and_tam
(declare (salience 602))
?f<-(manual_word_info (head_id ?id) (word $?w ?word&karane|karanA|karanI|kiyA|kiye $?wrds)(vibakthi_components $?vib)(group_ids $?grp_ids))
(chunk_name-chunk_ids-words VGF|VGNN|VGNF $? ?id $? - $?)
(not (root_decided ?id))
=>
	(bind ?nr (remove_character " " (implode$ (create$ $?w kara)) "_"))
	(if (or (eq ?word kiyA) (eq ?word kiye)) then
	 	(bind ?ntam (string-to-field (implode$ (remove_character " " (implode$ (create$ yA $?wrds)) "_"))))
	       	(modify ?f (word $?w ?word $?wrds)(root ?nr)(root_components $?w kara)(tam ?ntam)(tam_components yA $?wrds))
	else	
	    (if (neq (length $?wrds) 0) then
	 	(bind ?ntam (string-to-field (implode$ (remove_character " " (implode$ (create$ nA $?wrds)) "_"))))
	       	(modify ?f (word $?w ?word $?wrds)(root ?nr)(root_components $?w kara)(tam ?ntam)(tam_components nA $?wrds))
	    else	
	       	(modify ?f (word $?w ?word $?wrds)(root ?nr)(root_components $?w kara)(tam nA)(tam_components nA))
		(assert (replaced_tam_with_root_tam ?id))
	   )
       )
       (assert (root_decided ?id))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule complex_predicate_tam
(declare (salience 601))
?f<-(manual_word_info (head_id ?id) (word $?w ?word $?wrds)(group_ids $?grp_ids))
(test (neq (length $?w) 0))
?f1<-(man_word-root-cat    ?word&~hE ?root&~hE    v)
(test (neq (integerp (member$ ?word (create$ hE jAwe jAwI jAwA jAne sakawe sakawI sakawA se cAhie))) TRUE))
(test (neq (integerp (member$ $?w (create$ kiyA karawe karAyA jAwI jAwA))) TRUE))
(chunk_name-chunk_ids-words VGF|VGNN|VGNF $? ?id $? - $?)
(not (root_decided ?id))
(not (replaced_tam_with_root_tam ?id))
=>
	(bind ?nr (remove_character " " (implode$ (create$ $?w ?root)) "_"))
;        (modify ?f (root ?nr)(root_components $?w ?root))
	(if (neq ?word ?root) then
		(if (neq (length ?word) (length ?root)) then
	               	(bind ?tam (string-to-field (sub-string (+ (length ?root) 1)  (length ?word) ?word)))
		else
			(bind ?tam (create$))
		)
	       	(bind ?ntam (string-to-field (implode$ (remove_character " " (implode$ (create$ ?tam $?wrds)) "_"))))
          	(modify ?f (root ?nr)(root_components $?w ?root)(tam ?ntam)(tam_components ?tam $?wrds ))
	else
             (if (neq (length $?wrds) 0) then
		(bind ?ntam (string-to-field (implode$ (remove_character " " (implode$ (create$ $?wrds)) "_"))))
                (modify ?f (root ?nr)(root_components $?w ?root)(tam ?ntam)(tam_components $?wrds))
	     )
	)
        (assert (root_decided ?id))
)
;----------------------------------
;Your self-confidence also increases with teeth.  xAzwoM se ApakA AwmaviSvAsa BI [baDawA hE] 
;As vib and tam both goes into same field...increasing tam rule and replace_tam_with_root-tam rule salience above than vib rules
;ex: More [precisely], a is the acceleration of the [center of] mass of the system.
(defrule tam
(declare (salience 590))
?f<-(manual_word_info (head_id ?id) (word ?word $?wrds)(group_ids $?grp_ids))
?f1<-(man_word-root-cat    ?word&~hE ?root    v) 
(chunk_name-chunk_ids-words VGF|VGNN|VGNF $? ?id $? - $?)
(not (root_decided ?id))
=>
       (if (eq (length ?word) (length ?root)) then
	      (if (neq (length $?wrds) 0) then
		 (bind ?ntam (string-to-field (implode$ (remove_character " " (implode$ (create$ $?wrds)) "_"))))
        	 (modify ?f (root ?root)(root_components ?root)(tam ?ntam)(tam_components $?wrds))
	      else
		(modify ?f (root ?root)(root_components ?root))
	      )	
       else
               (bind ?tam (string-to-field (sub-string (+ (length ?root) 1)  (length ?word) ?word)))
	       (bind ?ntam (string-to-field (implode$ (remove_character " " (implode$ (create$ ?tam $?wrds)) "_"))))
               (modify ?f (root ?root)(root_components ?root)(tam ?ntam)(tam_components ?tam $?wrds ))
       )
    (assert (root_decided ?id))
)
;----------------------------------------------------------------------------------------------------------
;This process continues till the capacitor is fully charged.
;yaha prakriyA waba waka [calawI rahawI hE] jaba waka ki saMXAriwra pUrI waraha AveSiwa nahIM ho jAwA hE.
;root = cala , tam = wA_rahawA_hE 
;Man has constantly made endeavors to improve the quality of communication with other human beings. 
;mAnava niranwara hI yaha [prayawna karawA rahA hE] ki usakA mAnava jAwi se saFcAra guNawA meM unnawa ho. 
(defrule replace_tam_with_root-tam
(declare (salience 550))
?f<-(manual_word_info (head_id ?id) (word ?word $?wrds)(root ?root $?r)(tam ?tam)(group_ids $?grp_ids))
(test (neq ?tam 0) )
(not (replaced_tam_with_root_tam ?id))
(not (vib_added ?id))
(not (vib_modified ?id))
=>
	(bind ?mng (gdbm_lookup "AllTam_rev.gdbm" ?tam))
;	(printout t ?mng " " (type ?mng) crlf)
	(if (neq ?mng "FALSE") then
		(bind ?new_tam (remove_character "_"  ?mng " "))
		(modify ?f (tam (string-to-field ?mng))(tam_components ?new_tam))
	)
  	(assert (replaced_tam_with_root_tam ?id))
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
(not (numberp ?man_mng))
(test (and (neq ?man_mng @PUNCT-Comma) (neq ?word @PUNCT-Comma)))
(test (neq (str-index "_" (implode$ (create$ ?man_mng))) FALSE))
=>
  (retract ?f)
  (bind ?new_mng (remove_character "_" (implode$ (create$ ?man_mng)) " "))
  (assert (anu_id-anu_mng-man_mng ?aid ?word ?new_mng))
  (assert (underscore_removed ?aid))
)
;----------------------------------------------------------------------------------------------------------
(defrule rm_underscore_M_layer
(declare (salience 450))
?f<-(eng_id-eng_wrd-man_wrd ?aid ?word ?man_mng)
(not (underscore_removed_in_M ?aid))
(not (numberp ?man_mng))
(test (and (neq ?man_mng @PUNCT-Comma) (neq ?word @PUNCT-Comma)))
(test (neq (str-index "_" (implode$ (create$ ?man_mng))) FALSE))
=>
  (retract ?f)
  (bind ?new_mng (remove_character "_" (implode$ (create$ ?man_mng)) " "))
  (assert (eng_id-eng_wrd-man_wrd ?aid ?word ?new_mng))
  (assert (underscore_removed_in_M ?aid))
)
;----------------------------------------------------------------------------------------------------------
;This suggests the definition of dipole moment. 
;isase xviXruva AGUrNa kI pariBARA kA [safkewa] [milawA hE].
; not: What major occupations do the people follow today?
(defrule verb_group_using_L_layer
(declare (salience 400))
?f2<-(chunk_name-chunk_ids-words VGF ?id0 $?ids - ?m1 $?mng)
?f<-(manual_word_info (head_id ?id0) (word ?m1 $?mng)(root $?r) (group_ids ?id0 $?ids))
(anu_id-anu_mng-man_mng ? ?a ?m ?m1 $?m2)
(not (id-Apertium_output ? ?m))
(not (id-HM-source ? ?m1 ?))
(not (database_info (root ?a) (meaning ?m))) ;ye SarIra Ora ximAga meM AksIjana kA [pravAha][baDAwe hEM] jisase ximAga kI sakriyawA baDawI hE  
?f0<-(manual_word_info (head_id ?id&:(=(- ?id0 1) ?id)) (word ?m)(group_ids $?ids1))
(man_word-root-cat ?m ? ~p)
(test (eq (integerp (member$ ?m (create$ kyA iwanA))) FALSE))
?f1<-(chunk_name-chunk_ids ? ?id)
=>
	(retract ?f ?f0 ?f1 ?f2)
  	(bind ?nr (remove_character " " (implode$ (create$ ?m $?r)) "_"))
	(modify ?f (head_id ?id)(word ?m ?m1 $?mng)(root ?nr)(root_components ?m $?r)(group_ids $?ids1 ?id0 $?ids))
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
  	(bind ?nr (remove_character " " (implode$ (create$ ?m ho)) "_"))
  	(bind ?ntam (string-to-field (implode$ (remove_character " " (implode$ (create$ $?mng)) "_"))))
        (modify ?f (head_id ?id)(word ?m huA $?mng)(root ?nr)(root_components ?m ho)(tam ?ntam)(tam_components $?mng)(group_ids $?ids1 ?id0 $?ids))
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
	(if (neq (length $?d) 0) then
		(assert (chunk_name-chunk_ids ?c $?d))
	)
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
(defrule group_using_anu_mng
(declare (salience 12))
?f0<-(manual_word_info (head_id ?id0) (word $?mng)(group_ids ?id $?ids))
(id-Apertium_output ? ?m $?mng)
?f1<-(manual_word_info (head_id ?id1&:(= (- ?id 1) ?id1)) (word ?m) (group_ids $?ids1))
=>
        (retract ?f0 ?f1)
        (assert (manual_word_info (head_id ?id1) (word ?m $?mng)(group_ids $?ids1 ?id $?ids)))
)
;Actually sir, I [am not expecting] very good marks.
;jI xaraasala , muJe bahuwa acCe nambaroM kI [ASA nahIM hE]  .
(defrule group_using_anu_mng1
(declare (salience 12))
(chunk_name-chunk_ids-words VGF ?id $?ids - nahIM $?mng)
?f0<-(manual_word_info (head_id ?id0) (word nahIM $?mng)(group_ids ?id $?ids))
(id-Apertium_output ? ?m nahIM $?)
?f1<-(manual_word_info (head_id ?id1&:(= (- ?id 1) ?id1)) (word ?m) (group_ids $?ids1))
=>
        (retract ?f0 ?f1)
        (assert (manual_word_info (head_id ?id1) (word ?m nahIM $?mng)(group_ids $?ids1 ?id $?ids)))
)
;May I come in Sir?  kyA mEM [anxara_A sakawA hUz] sara ?  kyA mEM [anxara A sakawA huM]?
(defrule group_using_anu_root
(declare (salience 12))
(chunk_name-chunk_ids-words VGF ?id $?ids - $?mng)
?f0<-(manual_word_info (head_id ?id0)(word $?mng) (root ?r)(group_ids ?id $?ids))
(id-HM-source ? ?m ?r ?)
?f1<-(manual_word_info (head_id ?id1&:(= (- ?id 1) ?id1)) (word ?m) (group_ids $?ids1))
=>
        (retract ?f0 ?f1)
  	(bind ?nr (remove_character " " (implode$ (create$ ?m ?r)) "_"))
        (assert (manual_word_info (head_id ?id1) (word ?m $?mng)(root ?nr)(root_components ?m ?r)(group_ids $?ids1 ?id $?ids)))
)
;--------------------------  corrections --- improve above rules then del these rules --------------------
;Added by Shirisha Manju
;(manual_word_info (word uTAe jAne cAhie) (root uTA) (vibakthi e jAne cAhie)) == (vibakthi jAne cAhie)
;(word WIM) (root WA)  (vibakthi M) == (vibakthi 0)
(defrule rm_jnk_from_vib
(declare (salience -12))
?f0<-(manual_word_info (head_id ?id0) (vibakthi ?j $?vib))
(test (eq (integerp (member$ ?j (create$ e EOF M Mge z I kara))) TRUE))
=>
	(if (eq (length $?vib) 0) then
		(modify ?f0 (vibakthi 0))
	else
		(modify ?f0 (vibakthi $?vib))
	)
	(assert (vib_modified ?id0))
)

;Added by Shirisha Manju
; (manual_word_info (word ho jAwA hE) (root hE) (root_components 0) (vibakthi EOF jAwA hE)
;(word ho) (root ho) (vibakthi jAwA hE)
(defrule modify_root_and_vib
(declare (salience -13))
?f0<-(manual_word_info (head_id ?id0) (word ?m&ho|howA|howI $?mng)(root ?r&~ho)(tam_components $?vib))
(test (neq (length $?mng) 0))
?f<-(chunk_name-chunk_ids ?c $? ?id0 $?)
=>
	(retract ?f)
	(if (eq ?c VGF) then
	  	(bind ?ntam (string-to-field (implode$ (remove_character " " (implode$ (create$ $?vib)) "_"))))
		(modify ?f0 (word ?m $?mng)(root ho)(root_components ho)(tam ?ntam)(tam_components $?vib))
	else
	  	(bind ?ntam (string-to-field (implode$ (remove_character " " (implode$ (create$ $?vib)) "_"))))
		(modify ?f0 (word ?m)(root ho)(root_components ho)(tam ?ntam)(tam_components $?vib))
	)
	(assert (vib_modified ?id0))
)

(defrule modify_tam
(declare (salience -13))
?f0<-(manual_word_info (head_id ?id0)(word $? ?w $?)(tam ?tam))
(test (member$ ?tam (create$ we_hEM ez yA_jAwA_hE ne)))
=>
	(if (eq ?tam we_hEM) then
		(modify ?f0 (tam wA_hE)(tam_components wA hE))
	     else (if (and (eq ?w ho)(eq ?tam yA_jAwA_hE)) then
			(bind ?ntam (string-to-field (implode$ (remove_character " " (implode$ (create$ 0 jAwA hE)) "_"))))
			(modify ?f0 (tam ?ntam)(tam_components 0 jAwA hE))
		  else (if (eq ?tam M) then
				(modify ?f0 (tam subj)(tam_components subj))
		       else (if (eq ?tam ne) then
				(modify ?f0 (tam nA)(tam_components nA))
		            )
			)
	     	  )
	)
)

(defrule default_root
(declare (salience -30))
?f0<-(manual_word_info (head_id ?id0)(word ?w))
(man_word-root-cat ?w ?r ?)
(not (got_default_root ?id0))
=>
	(modify ?f0 (root ?r)(root_components ?r))
	(assert (got_default_root ?id0))
)

;isake alAvA xUXa pInA @PUNCT-Comma gAjara KAnA BI PAyaxemanxa sAbiwa howA hE  .
(defrule default_root1
(declare (salience -31))
?f0<-(manual_word_info (head_id ?id0)(word ?w $?v))
(man_word-root-cat ?w ?r p)
(not (got_default_root ?id0))
=>
	(if (eq (integerp (member$ ?w (create$ isake usake inake Apake))) TRUE) then
		(modify ?f0 (root ?r)(root_components ?r) (vibakthi_components ke $?v))
	else
        	(modify ?f0 (root ?r)(root_components ?r))
	)
        (assert (got_default_root ?id0))
)

