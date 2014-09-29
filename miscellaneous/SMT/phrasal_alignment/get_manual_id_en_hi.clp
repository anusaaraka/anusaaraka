(defglobal ?*id* = 1)

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))
(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot root (default 0))(multislot vibakthi (default 0))(multislot group_ids (default 0)))


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


(defrule rm_punct
(declare (salience 1001))
?f<-(anu_id-anu_mng-man_mng     ?aid ?anu_mng $?pre ?PUNCT $?post)
(test (eq (sub-string 1 6 (implode$ (create$ ?PUNCT))) "@PUNCT"))
=>
        (retract ?f)
        (assert (anu_id-anu_mng-man_mng  ?aid ?anu_mng $?pre $?post))
)




(defrule rm_underscore
(declare (salience 1000))
?f<-(anu_id-anu_mng-man_mng ?aid ?word ?man_mng)
(not (underscore_removed ?aid))
(test (and (neq ?man_mng @PUNCT-Comma) (neq ?word @PUNCT-Comma)))
=>
  (retract ?f)
  (bind ?new_mng (remove_character "_" (implode$ (create$ ?man_mng)) " "))
  (bind ?new_mng (remove_character "." (implode$ ?new_mng) " "))
  (bind ?new_mng (remove_character "," (implode$ ?new_mng) " "))
;  (bind ?new_mng (remove_character "@" (implode$ ?new_mng) " "))
  (assert (anu_id-anu_mng-man_mng ?aid ?word ?new_mng))
  (assert (underscore_removed ?aid))
)

(defrule cp_manual_sen
(declare (salience 1000))
(manual_hin_sen $?man_sen)
=>
       (assert (manual_hin_sen_tmp $?man_sen))
       (assert (manual_hin_sen1))
)

(defrule get_id
(declare (salience 900))
?f<-(manual_hin_sen_tmp ?wrd $?remaining_sen)
?f1<-(manual_hin_sen1 $?sen)
=>
	(retract ?f)
        (assert (manual_id-word ?*id* ?wrd))
        (assert (manual_hin_sen_tmp $?remaining_sen))
        (if (and (neq ?wrd @PUNCT-Comma)(neq ?wrd @PUNCT-Colon)(neq ?wrd @PUNCT-Dot)) then
	    (retract ?f1)
	    (assert (manual_hin_sen1 $?sen ?wrd))
        )
        (bind ?*id* (+ ?*id* 1))
)

;(defrule get_id1
;(declare (salience 60))
;?f<-(anu_id-anu_mng-man_mng	?aid ?a_wrd ?man_wrd)
;?f1<-(manual_id-word ?mid ?man_wrd)
;(not (mng_has_been_grouped ?mid))
;=>
;	(assert (manual_id_en_hi-word-root-vib-grp_ids ?mid ?man_wrd - - - - - ?mid))
;;        (assert (fact_modified_id ?mid)) 
;) 

(defrule get_verb_chunk_cp
(declare (salience 803))
?f<-(chunk_name-chunk_ids ?chnk&VGF|VGNN|VGNF $?gids)
=>
	(assert (chunk_name-chunk_ids-words  ?chnk $?gids - $?gids))
)

(defrule get_verb_chunk
(declare (salience 802))
?f<-(chunk_name-chunk_ids-words ?chnk&VGF|VGNN|VGNF $?gids - $?pre ?mid $?pos)
?f1<-(manual_id-word ?mid ?man_wrd)
=>
	(retract ?f)
	(assert (chunk_name-chunk_ids-words ?chnk  $?gids - $?pre ?man_wrd $?pos))
) 

;Added by Shirisha Manju 5-9-14
;The Princess began to weep. 					rAjakumArI ne ronA [SurU kara xiyA]. 
;And, turning to her guards, she ordered them to seize Dipu.    usane apane paharexAroM kI ora GUmakara xIpU ko pakadane kA [AxeSa xiyA]. 
;Dipu remarked.							xIpU ne [tippaNI kI].
;He must be very worried about me.				vaha avaSya hI mere lie bahuwa [ciMwiwa hogA].
(defrule check_prev_word_for_kara_or_ho_or_xe
(declare (salience 802))
?f0<-(chunk_name-chunk_ids-words ?chnk&VGF|VGNN|VGNF ?mid $?gids -  $?mng)
(manual_id-word ?mid ?w)
(man_word-root-cat ?w ?r&kara|ho|xe v)
(manual_id-word ?mid1&:(= (- ?mid 1) ?mid1) $?word)
(id-org_wrd-root-dbase_name-mng ? ? ?root ? $?word ?kar&kara|ho|xe)
=>
       	(retract ?f0 )
	(assert (chunk_name-chunk_ids-words ?chnk  ?mid1 ?mid $?gids - $?word $?mng))
	(assert (id-kara_grouped ?mid1))
)



(defrule get_verb_chunk1
(declare (salience 801))
?f<-(chunk_name-chunk_ids-words ?chnk&VGF|VGNN|VGNF $?gids - ?man_wrd $?r_mng)
?f1<-(manual_id-word ?mid ?man_wrd)
(test (member$ ?mid $?gids))
=>
	(bind $?ids (create$ ))
        (bind ?length (length $?gids))
        (bind $?new_mng (create$ ?man_wrd $?r_mng))
        (if (> ?length 0) then
        (loop-for-count (?i 1 ?length)
                        (bind ?new_id (nth$ ?i $?gids))
                        (bind ?word (nth$ ?i $?new_mng))
                        (assert (mng_has_been_grouped ?new_id))
                        (if (eq (sub-string 1 6 (implode$ (create$ ?word))) "@PUNCT") then
                        (bind $?gids (delete-member$  $?gids ?new_id))
                        (bind $?new_mng (delete-member$  $?new_mng ?word)))
        ))
        
        ;(assert (manual_id_en_hi-word-root-vib-grp_ids ?mid $?new_mng - - - - - $?gids))
        (assert (manual_word_info (head_id ?mid) (word $?new_mng)(group_ids $?gids)))
)

(defrule get_id2
(declare (salience 800))
?f<-(anu_id-anu_mng-man_mng     ?aid ?a_wrd ?man_wrd ?man_wrd1 $?mng)
?f1<-(manual_id-word ?mid ?man_wrd)
?f2<-(manual_id-word =(+ ?mid 1) ?man_wrd1)
=>
        (bind $?ids (create$ ))
        (bind ?length (length $?mng))
        (printout t ?length crlf)
        (bind ?new_id (+ ?mid 1))
        (if (> ?length 0) then
        (loop-for-count (?i 1 ?length)
                        (bind ?new_id (+ ?new_id 1))
                        (bind $?ids (create$ $?ids ?new_id))
                        (assert (mng_has_been_grouped ?new_id)) 
        ))
        ;(assert (manual_id_en_hi-word-root-vib-grp_ids ?mid ?man_wrd ?man_wrd1 $?mng - - - - - ?mid =(+ ?mid 1) $?ids))
        (assert (manual_word_info (head_id ?mid) (word ?man_wrd ?man_wrd1 $?mng)(group_ids ?mid =(+ ?mid 1) $?ids)))
;        (assert (fact_modified_id ?mid)) 
        (assert (mng_has_been_grouped ?mid)) 
        (assert (mng_has_been_grouped =(+ ?mid 1))) 
        
)

;Eng_semn:: The line connecting the two charges defines a direction in space.
;Man_sen :: xonoM  AveSoM  ko  saMyojiwa  karane  vAlI  reKA  xiksWAna  meM  kisI  xiSA  ko  [pariBARiwa  karawI  hE]  .
;Anu_tran :: xo AveSoM ko jodawe_hue lAina xiksWAna meM xiSA [sImAfkiwa karawI hE].
;(manual_id_en_hi-word-root-vib-grp_ids 13 pariBARiwa karawI - - - - - 13 14)
;(manual_id_en_hi-word-root-vib-grp_ids 14 karawI hE - - - - - 14 15)===> (manual_id_en_hi-word-root-vib-grp_ids 13 pariBARiwa karawI hE - - - - - 13 14 15)
;Added (length $?man_wrd) and (length $?man_wrd1) in the test condition for the sent. When a solid is deformed, the atoms or molecules are displaced from their equilibrium positions causing a change in the interatomic (or intermolecular) distances. "
(defrule combine_ids_common_in_two_different_facts
(declare (salience 750))
?f<-(manual_word_info (head_id ?mid) (word $?man_wrd)(group_ids $?pre ?id $?pos))
?f1<-(manual_word_info (head_id ?mid1) (word $?man_wrd1)(group_ids $?pre1 ?id $?pos1))
;?f<-(manual_id_en_hi-word-root-vib-grp_ids ?mid $?man_wrd  - $?r - $?vib - $?pre ?id $?pos)
;?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?mid1 $?man_wrd1 - $?r1 - $?vib1 - $?pre1 ?id $?pos1)
?f2<-(chunk_name-chunk_ids ?chnk&VGF|VGNN $?gids)
(test (neq ?mid ?mid1))
;(test (and (neq (length $?r) 0)(neq (length $?vib) 0)(neq (length $?man_wrd)0)))
;(test (and (neq (length $?r1) 0)(neq (length $?vib1) 0)(neq (length $?man_wrd1) 0)))
(manual_hin_sen1 $?man_hin_sen)
=>
	(retract ?f ?f1)
	(bind $?grp (sort > (create$ $?pre ?id $?pos $?pre1 $?pos1)))
 ;       (if (eq $?vib -) then (bind $?vib (create$ )))
        (bind $?mng (create$ ))
                                ;(printout t $?man_hin_sen crlf)
	(loop-for-count (?i 1 (length $?grp))
                                (bind ?j (nth$ ?i $?grp))
                                (bind $?mng (create$ $?mng (nth$ ?j $?man_hin_sen))) 
                                ;(printout t ?j $?mng crlf)
        )
        ;(assert (manual_id_en_hi-word-root-vib-grp_ids ?mid $?mng - - - - - $?grp))
        (assert (manual_word_info (head_id ?mid) (word $?mng)(group_ids $?grp)))
)

(defrule get_id3
(declare (salience 60))
?f1<-(manual_id-word ?mid ?man_wrd)
(test (neq (sub-string 1 6 (implode$ (create$ ?man_wrd))) "@PUNCT"))
;(not (manual_id_en_hi-word-root-vib-grp_ids $? - $? ?mid $?))
(not (manual_word_info (group_ids $? ?mid $?)))
(not (mng_has_been_grouped ?mid))
=>

	;(assert (manual_id_en_hi-word-root-vib-grp_ids ?mid ?man_wrd - - - - - ?mid))
        (assert (manual_word_info (head_id ?mid) (word ?man_wrd)(group_ids ?mid)))
)

;----------------------------------------------------------------------------------------------------------------
;It is mainly through light and the sense of vision that we know and interpret the world around us.
;Man tran :: muKya rUpa se prakASa evaM xqRti kI saMvexanA ke kAraNa hI hama [apane cAroM ora] ke saMsAra ko samaJawe evaM usakI vyAKyA karawe hEM.
;Anu tran :: yaha halake meM se waWA xUraxarSiwA kI saMvexanA meM se pramuKa rUpa se hE ki hama hamAre cAroM ora yuga vyAKyA kara waWA jAnawI hE.
(defrule multi_word0
(declare (salience 110))
?f0<-(manual_id-word ?id0 ?w&apane|unake)
?f1<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ?w1&cAroM)
?f2<-(manual_id-word ?id2&:(=(+ ?id1 1) ?id2)  ?w2&ora)
;(not (id-word ? surrounding))
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
=>
        ;(retract ?f0 ?f1 ?f2)
        ;(assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 ?w  - - - ?w1 ?w2 - ?id0 ?id1 ?id2))
        (assert (manual_word_info (head_id ?id0) (word ?w)(vibakthi ?w1 ?w2)(group_ids ?id0 ?id1 ?id2)))
        (assert (mng_has_been_grouped ?id1)) 
        (assert (mng_has_been_grouped ?id2)) 
)
;----------------------------------------------------------------------------------------------------------------
;To throw a stone upwards, one has to give it an upward push.-->kisI pawWara ko Upara kI ora Pefkane ke lie, hameM use Upara kI ora prakRepiwa karanA padawA hE .
;The resolution of such an electron microscope is limited finally by the fact that electrons can also behave as waves. ---> isa prakAra ke ilektroYna - sUkRmaxarSI kA viBexana BI anwawaH isI waWya xvArA sImiwa howA hE ki ilektroYna BI warafgoM kI waraha vyavahAra kara sakawe hEM.
(defrule multi_word1
(declare (salience 110))
?f0<-(manual_id-word ?id0 ?w)
?f1<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ?w1&kI)
?f2<-(manual_id-word ?id2&:(=(+ ?id1 1) ?id2)  ?w2&ora|waraha)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
=>
        ;(retract ?f0 ?f1 ?f2)
        ;(assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 ?w  - ?w  - ?w1 ?w2 - ?id0 ?id1 ?id2))
        (assert (manual_word_info (head_id ?id0) (word ?w)(root ?w)(vibakthi ?w1 ?w2)(group_ids ?id0 ?id1 ?id2)))
        (assert (mng_has_been_grouped ?id1)) 
        (assert (mng_has_been_grouped ?id2)) 
)
;----------------------------------------------------------------------------------------------------------------
;ke rUpa meM, ke bAre meM
;;Axya vicArakoM jEse araswU kI bala [ke viRaya meM] saMkalpanA galawa WI -- Early thinkers like Aristotle had wrong ideas about it.
;BOwikI ke anwargawa hama viviXa BOwika pariGatanAoM kI vyAKyA kuCa safkalpanAoM evaM niyamoM [ke paxoM meM] karane kA prayAsa karawe hEM --- In Physics, we attempt to explain diverse physical phenomena in terms of a few concepts and laws. 
;;xqSya prakASa ke sWAna para hama, ilektroYna - puFja kA upayoga kara sakawe hEM.---Instead of visible light, we can use an electron beam.
(defrule ke_[word]_meM
(declare (salience 90))
?f1<-(manual_id-word ?id0 $?noun)
?f2<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ke)
?f3<-(manual_id-word ?id2&:(=(+ ?id0 2) ?id2) ?w&rUpa|bAre|viRaya|AXAra|wOra|paxoM|sWAna)
?f4<-(manual_id-word ?id3&:(=(+ ?id0 3) ?id3) meM|para)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
(not (mng_has_been_grouped ?id3))
=>
        ;(retract ?f1 ?f2 ?f3 ?f4)
        ;(assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - ke ?w meM - ?id0 ?id1 ?id2 ?id3))
        (assert (manual_word_info (head_id ?id0) (word $?noun)(vibakthi ke ?w meM)(group_ids ?id0 ?id1 ?id2 ?id3)))
        (assert (mng_has_been_grouped ?id1)) 
        (assert (mng_has_been_grouped ?id2)) 
        (assert (mng_has_been_grouped ?id3)) 
)
;----------------------------------------------------------------------------------------------------------------
(defrule kI_[word]_meM
(declare (salience 90))
?f1<-(manual_id-word ?id0 $?noun)
?f2<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) kI)
?f3<-(manual_id-word ?id2&:(=(+ ?id0 2) ?id2) ?w&wulanA)
?f4<-(manual_id-word ?id3&:(=(+ ?id0 3) ?id3) meM)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
(not (mng_has_been_grouped ?id33))
=>
        ;(retract ?f1 ?f2 ?f3 ?f4)
        ;(assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - kI ?w meM - ?id0 ?id1 ?id2 ?id3))
        (assert (manual_word_info (head_id ?id0) (word $?noun)(vibakthi kI ?w meM)(group_ids ?id0 ?id1 ?id2 ?id3)))
        (assert (mng_has_been_grouped ?id1)) 
        (assert (mng_has_been_grouped ?id2)) 
        (assert (mng_has_been_grouped ?id3)) 
)
;----------------------------------------------------------------------------------------------------------------
;Since the electromagnetic force is so much stronger than the gravitational force, it dominates all phenomena at atomic and molecular scales. -- cUfki vixyuwa cumbakIya bala guruwvAkarRaNa bala kI apekRA kahIM aXika prabala howA hE yaha ANvika waWA paramANvIya pEmAne kI saBI pariGatanAoM para CAyA rahawA hE
(defrule kI_[word]
(declare (salience 80))
?f1<-(manual_id-word ?id0 $?noun)
?f2<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) kI)
?f3<-(manual_id-word ?id2&:(=(+ ?id0 2) ?id2) ?w&apekRA)
;(manual_id-word ?id3&:(=(+ ?id0 3) ?id3) ? ?c&~VM);It seems to turn around corners and enter regions where we would expect a shadow. yaha kone se mudakara usa kRewra meM praveSa karawA huA prawIwa howA hE jahAz hama CAyA kI apekRA karawe hEM
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
=>
        ;(retract ?f1 ?f2 ?f3)
        ;(assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - kI ?w - ?id0 ?id1 ?id2))
        (assert (manual_word_info (head_id ?id0) (word $?noun)(vibakthi kI ?w)(group_ids ?id0 ?id1 ?id2)))
        (assert (mng_has_been_grouped ?id1)) 
        (assert (mng_has_been_grouped ?id2)) 
)
;----------------------------------------------------------------------------------------------------------------
;ke liye , ke lie ,ke pariwaH ,ke sAWa,[besides --> ke awirikwa]
;xravyamAna kenxra kI pariBARA [jAnane ke bAxa] , aba hama isa sWiwi meM hEM ki kaNoM ke eka nikAya ke lie isake BOwika mahawva kI vivecanA kara sakeM.
;It is mainly through light and the sense of vision that we know and interpret the world around us.--> muKya rUpa se prakASa evaM xqRti kI [saMvexanA ke kAraNa] hI hama apane cAroM ora ke saMsAra ko samaJawe evaM usakI vyAKyA karawe hEM
;There is no loss of energy due to friction. [ke kAraNa]
;The apparent flattening (oval shape) of the sun at sunset and sunrise is also due to the same phenomenon.--->sUryAswa waWA [sUryoxaya ke samaya] sUrya kA ABAsI capatApana (aNdAkAra Akqwi) BI isI pariGatanA ke kAraNa hI hE.
;The restoring muscular forces again come into play and bring the body to rest.----- >prawyAnayanI peSIya baloM ke kAryarawa hone [ke kAraNa] SarIra virAma avasWA meM A jAwI hE
(defrule ke_[word]
(declare (salience 80))
?f1<-(manual_id-word ?id0 $?noun)
?f2<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ke)
?f3<-(manual_id-word ?id2&:(=(+ ?id0 2) ?id2) ?w&pariwaH|lie|liye|sAWa|anwargawa|ora|awirikwa|bAxa|kAraNa|samaya|xvArA|anusAra|aXIna|bIca|nIce|Upara|samAna|kAraNa|pare|BIwara)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
=>
        ;(retract ?f1 ?f2 ?f3)
        ;(assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - ke ?w - ?id0 ?id1 ?id2))
        (assert (manual_word_info (head_id ?id0) (word $?noun)(vibakthi ke ?w)(group_ids ?id0 ?id1 ?id2)))
        (assert (mng_has_been_grouped ?id1)) 
        (assert (mng_has_been_grouped ?id2)) 
)
;----------------------------------------------------------------------------------------------------------------
;Dispersion takes place because the refractive index of medium for different wavelengths (colors) is different.
;parikRepaNa kA kAraNa yaha hE ki kisI mAXyama kA apavarwanAfka viBinna warafgaxErGyoM  @PUNCT-OpenParenvarNoM @PUNCT-ClosedParen ke lie Binna - Binna howA hE
(defrule word_[hyphen]_word
(declare (salience 81))
?f1<-(manual_id-word ?id0 $?noun)
?f2<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) -)
?f3<-(manual_id-word ?id2&:(=(+ ?id0 2) ?id2) ?w)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
=>
        ;(retract ?f1 ?f2 ?f3)
        ;(assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun ?w  - - - 0 - ?id0 ?id2))
        (assert (manual_word_info (head_id ?id0) (word $?noun ?w)(group_ids ?id0 ?id2)))
        (assert (mng_has_been_grouped ?id1)) 
        (assert (mng_has_been_grouped ?id2)) 
)
;----------------------------------------------------------------------------------------------------------------
;Dispersion takes place because the refractive index of medium for different wavelengths (colors) is different.
;parikRepaNa kA kAraNa yaha hE ki kisI mAXyama kA apavarwanAfka viBinna warafgaxErGyoM  @PUNCT-OpenParenvarNoM @PUNCT-ClosedParen ke lie Binna - Binna howA hE @PUNCT-Dot
;Eng sen : Fig. 3.2 (b) shows the position-time graph of such a motion.
;Man sen : isa prakAra kI gawi kA sWiwi - samaya grAPa ciwra 3.2 @PUNCT-OpenParen @b @PUNCT-ClosedParen [meM] xiKalAyA gayA hE  @PUNCT-Dot

;Eng sen :Acceleration, therefore, may result from a change in [speed (magnitude)], a change in direction or changes in both.
;Man sen : awaH yA wo [cAla]  @PUNCT-OpenParen parimANa @PUNCT-ClosedParen [meM] parivarwana @PUNCT-Comma  xiSA meM parivarwana aWavA ina xonoM meM parivarwana se wvaraNa kA uxBava ho sakawA hE  @PUNCT-Dot
(defrule single_vib_Paren
(declare (salience 70))
?f1<-(manual_id-word ?id0 $?noun)
(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) @PUNCT-OpenParen)
(manual_id-word ?id2 @PUNCT-ClosedParen)
(test (or (eq (- ?id2 ?id1) 3)(eq (- ?id2 ?id1) 2) (eq (- ?id2 ?id1) 1)(eq (- ?id2 ?id1) 4)))
?f3<-(manual_id-word ?id3&:(=(+ ?id2 1) ?id3) ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA|waka|hI)
(not (mng_has_been_grouped ?id3))
(not (vib_added ?id0))
=>
        (assert (manual_id-en_hi-word-root-vib-grp_ids ?id0 $?noun - - - ?vib - ?id0 ?id3))
        (assert (manual_word_info (head_id ?id0) (word $?noun)(vibakthi ?vib)(group_ids ?id0 ?id3)))
	(assert (vib_added ?id0))
)
;----------------------------------------------------------------------------------------------------------------
(defrule single_vib
(declare (salience 70))
?f1<-(manual_word_info (head_id ?mid0) (word $?noun)(group_ids $?grp_ids ?id0))
?f2<-(manual_word_info (head_id ?id1&:(=(+ ?id0 1) ?id1))(word ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA|vAlI|vAlA|vAle)(group_ids $?grp_ids1))
;?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?mid0 $?noun - - - - - $?grp_ids ?id0)
;?f2<-(manual_id_en_hi-word-root-vib-grp_ids ?id1&:(=(+ ?id0 1) ?id1) ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA|vAlI|vAlA|vAle - - - - - $?grp_ids1)
(not (mng_has_been_grouped ?id1))
(not (vib_added ?id0))
=>
        (retract ?f1 ?f2)
        (assert (mng_has_been_grouped ?id1)) 
        ;(assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - ?vib - $?grp_ids ?id0 $?grp_ids1))
        (assert (manual_word_info (head_id ?id0) (word $?noun)(vibakthi ?vib)(group_ids ?id0 $?grp_ids1)))
	(assert (vib_added ?id0))
)


(defrule single_vib1
(declare (salience 70))
?f1<-(manual_word_info (head_id ?mid0) (word $?noun)(group_ids $?grp_ids ?id0))
?f2<-(manual_word_info (head_id ?id1&:(=(+ ?id0 1) ?id1))(word ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA|vAlI|vAlA|vAle $?r_wrd)(group_ids ?id1 $?grp_ids1))
(test (neq (length $?r_wrd) 0))
(not (vib_added ?id0))
(not (vib_added ?new_id))
=>
        (retract ?f1 ?f2)
        (bind ?new_id (nth$ 1 $?grp_ids1))
        ;(assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - ?vib - $?grp_ids ?id0 ?id1))
        ;(assert (manual_id_en_hi-word-root-vib-grp_ids ?new_id $?r_wrd - - - - - $?grp_ids1))
        (assert (manual_word_info (head_id ?id0) (word $?noun)(vibakthi ?vib)(group_ids $?grp_ids ?id0 ?id1)))
        (assert (manual_word_info (head_id ?new_id) (word $?r_wrd)(group_ids $?grp_ids1)))
	(assert (vib_added ?id0))
	(assert (vib_added ?new_id))
)
;-------------------------------------------------------------------------------------------------------------------------------
(defrule single_vib2
(declare (salience 60))
?f1<-(manual_word_info (head_id ?id0) (word $?noun ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA|vAlI|vAlA|vAle)(group_ids $?grp_ids))
(test (neq (length $?noun) 0))
(not (vib_added ?id0))
=>
	(modify ?f1 (word $?noun)(vibakthi ?vib))
	(assert (vib_added ?id0))
)

;-------------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 5-9-14
;The Princess began to weep. rAjakumArI ne ronA [SurU kara xiyA]. 
(defrule get_kara_root
(declare (salience 77))
?f0<-(id-kara_grouped ?id)
?f<-(manual_word_info (head_id ?id) (word $?m ?w)(group_ids $?grp_ids))
?f1<-(man_word-root-cat    ?w&~howI ?root&kara|ho|xe    v)
=>
	(retract ?f0 ?f1)
	(modify ?f (root $?m ?root))
)
;-------------------------------------------------------------------------------------------------------------------------------
(defrule get_kara_root1
(declare (salience 76))
(id-kara_grouped ?id)
?f<-(manual_word_info (head_id ?id) (word $?m ?w $?m1)(group_ids $?grp_ids))
?f1<-(man_word-root-cat    ?w&~howI ?root&kara|ho|xe    v)
(test (neq  (length $?m) 0))
=>
        (retract ?f1)
        (if (eq (length $?m1) 0) then
                (modify ?f (root $?m ?root))
        else
                (modify ?f (root $?m ?root)(vibakthi $?m1))
        )
)
;-------------------------------------------------------------------------------------------------------------------------------

;As vib and tam both goes into same field...increasing tam rule and replace_tam_with_root-tam rule salience above than vib rules
;ex: More [precisely], a is the acceleration of the [center of] mass of the system.
(defrule tam
(declare (salience 75))
?f<-(manual_word_info (head_id ?id) (word ?word $?wrds)(group_ids $?grp_ids))
;?f<-(manual_id_en_hi-word-root-vib-grp_ids ?id   ?word $?wrds - - - - - $?grp_ids)
?f1<-(man_word-root-cat    ?word ?root&~kara&~ho    v)
(chunk_name-chunk_ids-words VGF|VGNN|VGNF $? ?id $? - $?)
;(test (neq (length ?root) (length ?word)))
=>
	(if (eq ?word ?root) then ;Ex: You can neither inherit it, nor pass it on to your progeny. न तो आप इसे उत्तराधिकार में पा सकते हैं और न ही अपनी सन्तति को विरासत में दे सकते हैं
		;(assert (manual_id_en_hi-word-root-vib-grp_ids ?id  ?word $?wrds - ?root -  0 $?wrds  - $?grp_ids))
		(assert (manual_word_info (head_id ?id) (word ?word $?wrds)(root ?root)(vibakthi 0 $?wrds)(group_ids $?grp_ids)))

		(retract ?f ?f1)
	else
		(bind ?tam (string-to-field (sub-string (+ (length ?root) 1)  (length ?word) ?word)))
		;(assert (manual_id_en_hi-word-root-vib-grp_ids ?id  ?word $?wrds - ?root -  ?tam $?wrds  - $?grp_ids))
		(assert (manual_word_info (head_id ?id) (word ?word $?wrds)(root ?root)(vibakthi ?tam $?wrds)(group_ids $?grp_ids)))
		(retract ?f ?f1)
	)
)
;-------------------------------------------------------------------------------------------------------------------------------
;This process continues till the capacitor is fully charged.
;yaha prakriyA waba waka [calawI rahawI hE] jaba waka ki saMXAriwra pUrI waraha AveSiwa nahIM ho jAwA hE.
;root = cala , tam = wA_rahawA_hE 
(defrule replace_tam_with_root-tam
(declare (salience 72))
?f<-(manual_word_info (head_id ?id) (word ?word $?wrds)(root ?root)(vibakthi ?tam $?wrds)(group_ids $?grp_ids))
;?f <- (manual_id_en_hi-word-root-vib-grp_ids ?id  ?word $?wrds - ?root -  ?tam $?wrds  - $?grp_ids)
(test (neq ?tam -))
(not (replaced_tam_with_root_tam ?id))
(not (vib_added ?id))
=>
	(bind ?new_mng (remove_character " " (implode$ (create$ ?tam $?wrds)) "_"))
	(printout t (implode$ ?new_mng) crlf)
	(bind ?mng (gdbm_lookup "AllTam_rev.gdbm" (implode$ ?new_mng)))
	(if (neq ?mng "FALSE") then
		(bind ?root_tam (string-to-field (implode$ (remove_character "_"  (implode$ (create$ ?mng)) " "))))
		(printout t ?root_tam crlf)
		(if (eq ?root ?word) then 
			;;(assert (manual_id_en_hi-word-root-vib-grp_ids ?id  ?word $?wrds - ?root - (explode$ ?root_tam) - $?grp_ids))
			(assert (manual_word_info (head_id ?id) (word ?word $?wrds)(root ?root)(vibakthi ?root ?tam)(group_ids $?grp_ids)))
			(assert (replaced_tam_with_root_tam ?id)) 
		else
		(bind ?new_tam (sub-string 2 (length ?root_tam) ?root_tam))
		(printout t ?new_tam ?root_tam crlf)
			;;(assert (manual_id_en_hi-word-root-vib-grp_ids ?id  ?word $?wrds - ?root - (explode$ ?new_tam) - $?grp_ids))
			(assert (manual_word_info (head_id ?id) (word ?word $?wrds)(root ?root)(vibakthi ?new_tam)(group_ids $?grp_ids)))
			(assert (replaced_tam_with_root_tam ?id))
		)
		(retract ?f)
	)
)	
;-------------------------------------------------------------------------------------------------------------------------------
;(defrule nahIM_case
;(declare (salience 55))

(defrule verb_rule1
(declare (salience 50)) 
?f1<-(manual_word_info (head_id ?id0) (word $?noun ?iwa_word)(group_ids $?grp_ids))
;?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun ?iwa_word - - - - - $?grp_ids)
(test (eq (numberp ?iwa_word) FALSE))
(test (or (eq (sub-string (- (length ?iwa_word) 2) (length ?iwa_word) ?iwa_word) "iwa") (eq (sub-string (- (length ?iwa_word) 2) (length ?iwa_word) ?iwa_word) "rpa") ))
?f2<-(manual_word_info (head_id ?id1&:(=(+ ?id0 1) ?id1)) (word ?tam&karawA|howA|karawI|howI|karawe|howe|karanA)(group_ids ?id1))
?f3<-(manual_word_info (head_id ?id2&:(=(+ ?id1 1) ?id2)) (word ?tam1&hE|hEM)(group_ids ?id2))
;?f2<-(manual_id_en_hi-word-root-vib-grp_ids ?id1&:(=(+ ?id0 1) ?id1) ?tam&karawA|howA|karawI|howI|karawe|howe|karanA - - - - - ?id1)
;?f3<-(manual_id_en_hi-word-root-vib-grp_ids ?id2&:(=(+ ?id1 1) ?id2) ?tam1&hE|hEM - - - - - ?id2)
(man_word-root-cat ?tam ?root&kara|ho v)
(not (replaced_tam_with_root_tam ?id0))
=>
        (retract ?f1 ?f2 ?f3)
       ; ;(assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun ?iwa_word ?tam ?tam1  - ?iwa_word ?root - wA ?tam1 - $?grp_ids ?id1 ?id2))
	(assert (manual_word_info (head_id ?id0) (word $?noun ?iwa_word ?tam ?tam1)(root ?iwa_word ?root)(vibakthi wA ?tam1)(group_ids $?grp_ids ?id1 ?id2)))
        (assert (replaced_tam_with_root_tam ?id0))
)


(defrule verb_rule2
(declare (salience 50))
?f1<-(manual_word_info (head_id ?id0) (word $?noun ?iwa_word)(group_ids $?grp_ids))
;?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun ?iwa_word - - - - - $?grp_ids)
(test (eq (numberp ?iwa_word) FALSE))
(test (eq (sub-string (- (length ?iwa_word) 2) (length ?iwa_word) ?iwa_word) "iwa"))
?f2<-(manual_word_info (head_id ?id1&:(=(+ ?id0 1) ?id1)) (word ?tam&karawA|howA|karawI|howI|karawe|howe|karanA ?tam1&hE|hEM)(group_ids ?id1 ?id2))
;?f2<-(manual_id_en_hi-word-root-vib-grp_ids ?id1&:(=(+ ?id0 1) ?id1) ?tam&karawA|howA|karawI|howI|karawe|howe|karanA ?tam1&hE|hEM - - - - - ?id1 ?id2) 
(man_word-root-cat ?tam ?root&kara|ho v)
(not (replaced_tam_with_root_tam ?id0))
=>
        (retract ?f1 ?f2)
	(assert (manual_word_info (head_id ?id0) (word $?noun $?noun ?iwa_word ?tam ?tam1)(root ?iwa_word ?root)(vibakthi wA ?tam1)(group_ids $?grp_ids ?id1 ?id2)))
        (assert (replaced_tam_with_root_tam ?id0))
        ;(assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun ?iwa_word ?tam ?tam1  - ?iwa_word ?root - wA ?tam1 - $?grp_ids ?id1 ?id2))
)

;Eng_semn:: The line connecting the two charges defines a direction in space.
;Man_sen :: xonoM  AveSoM  ko  saMyojiwa  karane  vAlI  reKA  xiksWAna  meM  kisI  xiSA  ko  [pariBARiwa  karawI  hE]  .
;Anu_tran :: xo AveSoM ko jodawe_hue lAina xiksWAna meM xiSA [sImAfkiwa karawI hE].
;(manual_id_en_hi-word-root-vib-grp_ids 13 pariBARiwa karawI hE - - - - - 13 14 15) ==> (manual_id_en_hi-word-root-vib-grp_ids 13 pariBARiwa karawI hE - pariBARiwa kara - wA hE - 13 14 15)
(defrule verb_rule5
(declare (salience 50))
?f<-(manual_word_info (head_id ?id) (word $?noun ?iwa_word ?tam&karawA|howA|karawI|howI|karawe|howe ?tam1&hE|hEM)(group_ids $?grp_ids))
;?f<-(manual_id_en_hi-word-root-vib-grp_ids ?id $?noun ?iwa_word ?tam&karawA|howA|karawI|howI|karawe|howe ?tam1&hE|hEM - - - - - $?grp_ids)
(test (eq (numberp ?iwa_word) FALSE))
(test (eq (sub-string (- (length ?iwa_word) 2) (length ?iwa_word) ?iwa_word) "iwa"))
(man_word-root-cat ?tam ?root&kara|ho v)
(not (replaced_tam_with_root_tam ?id))
=>
        (retract ?f)
	(assert (manual_word_info (head_id ?id) (word $?noun ?iwa_word ?tam ?tam1)(root ?iwa_word ?root)(vibakthi wA ?tam1)(group_ids $?grp_ids)))
        (assert (replaced_tam_with_root_tam ?id))
        ;(assert (manual_id_en_hi-word-root-vib-grp_ids ?id $?noun ?iwa_word ?tam ?tam1  - ?iwa_word ?root - wA ?tam1 - $?grp_ids))
)

(defrule verb_rule3
(declare (salience 50))
?f1<-(manual_word_info (head_id ?id0) (word ?tam&honA|karanA|kahanA ?wrd&cAhie)(group_ids $?grp_ids))
;?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?id0 ?tam&honA|karanA|kahanA ?wrd&cAhie - - - - - $?grp_ids)
(man_word-root-cat ?tam ?root&kara|ho|kaha v)
(not (replaced_tam_with_root_tam ?id0))
=>
        (retract ?f1)
	(assert (manual_word_info (head_id ?id0) (word ?tam ?wrd)(root ?root)(vibakthi nA ?wrd)(group_ids $?grp_ids)))
        (assert (replaced_tam_with_root_tam ?id0))
        ;(assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 ?tam ?wrd  - ?root - nA ?wrd -  $?grp_ids ))
)
;
(defrule verb_rule4
(declare (salience 50))
?f1<-(manual_word_info (head_id ?id0) (word $?noun)(group_ids $?grp_ids))
?f2<-(manual_word_info (head_id ?id1&:(=(+ ?id0 1) ?id1)) (word ?tam&honA|karanA|kahanA ?wrd&cAhie)(group_ids $?grp_ids1))
;?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - - - $?grp_ids)
;?f2<-(manual_id_en_hi-word-root-vib-grp_ids ?id1&:(=(+ ?id0 1) ?id1)  ?tam&honA|karanA|kahanA ?wrd&cAhie - - - - - $?grp_ids1)
(man_word-root-cat ?tam ?root&kara|ho|kaha v)
(not (replaced_tam_with_root_tam ?id0))
=>
        (retract ?f1 ?f2)
	(assert (manual_word_info (head_id ?id0) (word $?noun ?tam ?wrd)(root $?noun ?root)(vibakthi nA ?wrd)(group_ids $?grp_ids $?grp_ids1)))
        (assert (replaced_tam_with_root_tam ?id0))
        ;(assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun ?tam ?wrd - $?noun ?root - nA ?wrd - $?grp_ids $?grp_ids1))

)

;(defrule verb_rule5
;(declare (salience 50))
;?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun ?iwa_word - - - - - $?grp_ids)
;(chunk_name-chunk_ids ?chnk&JJP $? ?id0 $?mng)
;(test (eq (numberp ?iwa_word) FALSE))
;?f2<-(manual_id_en_hi-word-root-vib-grp_ids ?id1&:(=(+ ?id0 1) ?id1) ?tam&karawA|howA|karawI|howI|karawe|howe|kiyA $?rem_wrds - - - - - ?id1 $?gids)
;(man_word-root-cat ?tam ?root&kara|ho v)
;=>
;        (retract ?f1 ?f2)
;        (if (eq (length $?rem_wrds) 0) then (bind $?rem_wrds (create$ -)))
;        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun ?iwa_word ?tam $?rem_wrds - ?iwa_word ?root - $?rem_wrds - $?grp_ids ?id1 $?gids))
;)
;


