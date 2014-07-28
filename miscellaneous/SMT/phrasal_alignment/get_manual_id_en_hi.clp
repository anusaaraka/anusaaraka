(defglobal ?*id* = 1)


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
?f<-(chunk_name-chunk_ids ?chnk&VGF $?gids)
=>
	(assert (chunk_name-chunk_ids-words  ?chnk $?gids - $?gids))
)

(defrule get_verb_chunk
(declare (salience 802))
?f<-(chunk_name-chunk_ids-words ?chnk&VGF $?gids - $?pre ?mid $?pos)
?f1<-(manual_id-word ?mid ?man_wrd)
=>
	(retract ?f)
	(assert (chunk_name-chunk_ids-words ?chnk  $?gids - $?pre ?man_wrd $?pos))
) 


(defrule get_verb_chunk1
(declare (salience 801))
?f<-(chunk_name-chunk_ids-words ?chnk&VGF $?gids - ?man_wrd $?r_mng)
?f1<-(manual_id-word ?mid ?man_wrd)
(test (member$ ?mid $?gids))
=>
	(bind $?ids (create$ ))
        (bind ?length (length $?gids))
        (if (> ?length 0) then
        (loop-for-count (?i 1 ?length)
                        (bind ?new_id (nth$ ?i $?gids))
                        (assert (mng_has_been_grouped ?new_id))
        ))
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?mid ?man_wrd $?r_mng - - - - - $?gids))
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
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?mid ?man_wrd ?man_wrd1 $?mng - - - - - ?mid =(+ ?mid 1) $?ids))
;        (assert (fact_modified_id ?mid)) 
        (assert (mng_has_been_grouped =(+ ?mid 1))) 
        
)



(defrule get_id3
(declare (salience 60))
?f1<-(manual_id-word ?mid ?man_wrd)
(test (neq (sub-string 1 6 (implode$ (create$ ?man_wrd))) "@PUNCT"))
(not (manual_id_en_hi-word-root-vib-grp_ids $? - $? ?mid $?))
(not (mng_has_been_grouped ?mid))
=>

	(assert (manual_id_en_hi-word-root-vib-grp_ids ?mid ?man_wrd - - - - - ?mid))
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
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 ?w  - - - ?w1 ?w2 - ?id0 ?id1 ?id2))
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
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 ?w  - ?w  - ?w1 ?w2 - ?id0 ?id1 ?id2))
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
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - ke ?w meM - ?id0 ?id1 ?id2 ?id3))
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
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - kI ?w meM - ?id0 ?id1 ?id2 ?id3))
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
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - kI ?w - ?id0 ?id1 ?id2))
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
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - ke ?w - ?id0 ?id1 ?id2))
        (assert (mng_has_been_grouped ?id1)) 
        (assert (mng_has_been_grouped ?id2)) 
)
;----------------------------------------------------------------------------------------------------------------
;Dispersion takes place because the refractive index of medium for different wavelengths (colors) is different.
;parikRepaNa kA kAraNa yaha hE ki kisI mAXyama kA apavarwanAfka viBinna warafgaxErGyoM  @PUNCT-OpenParenvarNoM @PUNCT-ClosedParen ke lie Binna - Binna howA hE
(defrule word_[hyphen]_word
(declare (salience 81))
?f1<-(manual_id-word ?id0 $?noun)
?f2<-(man_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) -)
?f3<-(man_id-word-cat ?id2&:(=(+ ?id0 2) ?id2) ?w)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
=>
        ;(retract ?f1 ?f2 ?f3)
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun ?w  - - - 0 - ?id0 ?id2))
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
=>
        (assert (manual_id-en_hi-word-root-vib-grp_ids ?id0 $?noun - - - ?vib - ?id0 ?id3))
)
;----------------------------------------------------------------------------------------------------------------
(defrule single_vib
(declare (salience 70))
?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?mid0 $?noun - - - - - $?grp_ids ?id0)
?f2<-(manual_id_en_hi-word-root-vib-grp_ids ?id1&:(=(+ ?id0 1) ?id1) ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA|vAlI|vAlA|vAle - - - - - $?grp_ids1)
(not (mng_has_been_grouped ?id1))
=>
        (retract ?f1 ?f2)
        (assert (mng_has_been_grouped ?id1)) 
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - ?vib - $?grp_ids ?id0 $?grp_ids1))
)


(defrule single_vib1
(declare (salience 70))
?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?mid0 $?noun - - - - - $?grp_ids ?id0)
?f2<-(manual_id_en_hi-word-root-vib-grp_ids ?id1&:(=(+ ?id0 1) ?id1) ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA|vAlI|vAlA|vAle $?r_wrd - - - - - ?id1 $?grp_ids1)
(test (neq (length $?r_wrd) 0))
=>
        (retract ?f1 ?f2)
        (bind ?new_id (nth$ 1 $?grp_ids1))
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - ?vib - $?grp_ids ?id0 ?id1))
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?new_id $?r_wrd - - - - - $?grp_ids1))
)


(defrule single_vib2
(declare (salience 60))
?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA|vAlI|vAlA|vAle - - - - - $?grp_ids)
(test (neq (length $?noun) 0))
=>
        (retract ?f1)
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - ?vib - $?grp_ids))
)

;----------------------------------------------------------------------------------------------------------------
(defrule verb_rule1
(declare (salience 50)) 
?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun ?iwa_word - - - - - $?grp_ids)
(test (eq (numberp ?iwa_word) FALSE))
(test (or (eq (sub-string (- (length ?iwa_word) 2) (length ?iwa_word) ?iwa_word) "iwa") (eq (sub-string (- (length ?iwa_word) 2) (length ?iwa_word) ?iwa_word) "rpa") ))
?f2<-(manual_id_en_hi-word-root-vib-grp_ids ?id1&:(=(+ ?id0 1) ?id1) ?tam&karawA|howA|karawI|howI|karawe|howe|karanA - - - - - ?id1)
?f3<-(manual_id_en_hi-word-root-vib-grp_ids ?id2&:(=(+ ?id1 1) ?id2) ?tam1&hE|hEM - - - - - ?id2)
(man_word-root-cat ?tam ?root&kara|ho v)
=>
        (retract ?f1 ?f2 ?f3)
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun ?iwa_word ?tam ?tam1  - ?iwa_word ?root - wA ?tam1 - $?grp_ids ?id1 ?id2))
)


(defrule verb_rule2
(declare (salience 50))
?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun ?iwa_word - - - - - $?grp_ids)
(test (eq (numberp ?iwa_word) FALSE))
(test (eq (sub-string (- (length ?iwa_word) 2) (length ?iwa_word) ?iwa_word) "iwa"))
?f2<-(manual_id_en_hi-word-root-vib-grp_ids ?id1&:(=(+ ?id0 1) ?id1) ?tam&karawA|howA|karawI|howI|karawe|howe|karanA ?tam1&hE|hEM - - - - - ?id1 ?id2) 
(man_word-root-cat ?tam ?root&kara|ho v)
=>
        (retract ?f1 ?f2)
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun ?iwa_word ?tam ?tam1  - ?iwa_word ?root - wA ?tam1 - $?grp_ids ?id1 ?id2))
)

(defrule verb_rule3
(declare (salience 50))
?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?id0 ?tam&honA|karanA|kahanA ?wrd&cAhie - - - - - $?grp_ids)
(man_word-root-cat ?tam ?root&kara|ho|kaha v)
=>
        (retract ?f1)
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 ?tam ?wrd  - ?root - nA ?wrd -  $?grp_ids ))
)
;
(defrule verb_rule4
(declare (salience 50))
?f1<-(manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun - - - - - $?grp_ids)
?f2<-(manual_id_en_hi-word-root-vib-grp_ids ?id1&:(=(+ ?id0 1) ?id1)  ?tam&honA|karanA|kahanA ?wrd&cAhie - - - - - $?grp_ids1)
(man_word-root-cat ?tam ?root&kara|ho|kaha v)
=>
        (retract ?f1 ?f2)
        (assert (manual_id_en_hi-word-root-vib-grp_ids ?id0 $?noun ?tam ?wrd - $?noun ?root - nA ?wrd - $?grp_ids $?grp_ids1))

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
