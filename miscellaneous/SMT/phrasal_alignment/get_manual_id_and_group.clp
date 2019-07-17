(defglobal ?*id* = 1)

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(slot tam (default 0))(multislot tam_components (default 0))(multislot group_ids (default 0)))

(deftemplate  database_info (slot root (default 0))(slot meaning (default 0))(multislot components (default 0))(slot database_name (default 0))( slot database_type (default 0))(multislot group_ids (default 0)))

(deftemplate tam_database_info (slot e_tam (default 0)) (slot database_name (default 0)) (multislot meaning (default 0))(multislot components (default 0)))

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

;================================== generating ids for manual word =====================================
(defrule cp_manual_sen
(declare (salience 1000))
(manual_hin_sen $?man_sen)
=>
       (assert (manual_hin_sen_tmp $?man_sen))
       (assert (manual_hin_sen1))
)
;--------------------------------------------------------------------------------------------------------
(defrule get_id
(declare (salience 900))
?f<-(manual_hin_sen_tmp ?wrd $?remaining_sen)
?f1<-(manual_hin_sen1 $?sen)
=>
	(retract ?f)
        (assert (manual_id-word ?*id* ?wrd))
        (assert (manual_hin_sen_tmp $?remaining_sen))
        (if (and (neq ?wrd @PUNCT-Comma)(neq ?wrd @PUNCT-Colon)(neq ?wrd @PUNCT-Dot)(neq ?wrd ..)) then
	    (retract ?f1)
	    (assert (manual_hin_sen1 $?sen ?wrd))
        )
        (bind ?*id* (+ ?*id* 1))
)

;kqpayA nimnaliKiwa jAnakArI ko sAvaXAnI se [paDeM.] yaxi Apako aXika jAnakArI cAhie wo hameM bawAeM  .
;(defrule modify_word_fact
;(declare (salience 800))
;?f0<-(manual_id-word ?id ?mng&~.)
;(test (eq (numberp ?mng) FALSE))
;(test (neq (str-index "." ?mng) FALSE))
;(test (eq (sub-string (length ?mng) (length ?mng) ?mng ) "."))
;=>
;	(retract ?f0)
;	(bind ?n (string-to-field (sub-string 1 (- (length ?mng) 1) ?mng)))
;	(assert (manual_id-word ?id ?n))
;)
;	
 



(defrule get_dbase_fact_for_chandrabinxu
(declare (salience 1000))
(manual_id-word ?mid ?mng)
(test (eq (numberp ?mng) FALSE))
(test (neq (str-index "M" ?mng) FALSE))
(database_info (components $?p ?mng1 $?p1)(group_ids $?ids ))
(test (eq (numberp ?mng1) FALSE))
(test (neq (str-index "z" ?mng1) FALSE))
(test (eq (sub-string 1 (- (str-index "M" ?mng) 1) ?mng) (sub-string 1 (- (str-index "z" ?mng1) 1) ?mng1)))
(test (eq (sub-string (+ (str-index "M" ?mng) 1) (length ?mng) ?mng) (sub-string (+ (str-index "z" ?mng1) 1) (length ?mng1) ?mng1)))
(not (database_info (components $?p ?mng $?p1)(group_ids $?ids )))
=>
        (assert (database_info (components $?p ?mng $?p1) (group_ids $?ids )))
)

(defrule get_dbase_fact_for_chandrabinxu1
(declare (salience 1000))
(manual_id-word ?mid ?mng)
(test (eq (numberp ?mng) FALSE))
(test (neq (str-index "f" ?mng) FALSE))
(database_info (components $?p ?mng1 $?p1)(group_ids $?ids ))
(test (eq (numberp ?mng1) FALSE))
(test (neq (str-index "z" ?mng1) FALSE))
(test (eq (sub-string 1 (- (str-index "f" ?mng) 1) ?mng) (sub-string 1 (- (str-index "z" ?mng1) 1) ?mng1)))
(test (eq (sub-string (+ (str-index "f" ?mng) 1) (length ?mng) ?mng) (sub-string (+ (str-index "z" ?mng1) 1) (length ?mng1) ?mng1)))
(not (database_info (components $?p ?mng $?p1)(group_ids $?ids )))
=>
        (assert (database_info (components $?p ?mng $?p1) (group_ids $?ids )))
)


;===================================== Vibakthi Grouping =============================================================

;Added by Shirisha Manju 2-07-15
;The national standard of time interval 'second' as well as the frequency is maintained through four cesium atomic clocks.
;cAra sIjiyama paramANu GadiyoM [ke mAXyama se], samaya-anwarAla ke rARtrIya mAnaka 'sekanda' kA anurakRaNa kiyA jAwA hE.
;;The electrons would be moving in orbits about the nucleus just as the planets do around the sun.
;ilektroYna, [nABika ke cAroM ora] kakRA meM cakkara lagAwe hEM, TIka Ese hI jEse [sUrya ke cAroM ora] graha cakkara lagAwe hEM.
(defrule get_multi_vib_3_from_dic
(declare (salience 710))
(database_info (components ?mng&ke|kI|se ?mng1 ?mng2))
(manual_id-word ?id ?mng)
(manual_id-word ?id1&:(=(+ ?id 1) ?id1) ?mng1)
(manual_id-word ?id2&:(=(+ ?id 2) ?id2) ?m)
(man_word-root-cat ?m ?mng2 ?)
(not (mng_has_been_grouped ?id1))
(not (chunk_name-chunk_ids VGF $? ?id1 $?))
(not (chunk_name-chunk_ids VGF $? ?id2 $?))
=>
	(assert (ids-multi_vib ?id ?id1 ?id2 -  ?mng ?mng1 ?m))
        (assert (mng_has_been_grouped ?id))
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 5-06-15
;In this example, the basis is the distance between the eyes.
;isa uxAharaNa meM xonoM AzKoM [ke bIca] kI xUrI AXAraka hE.
;On an exceptionally hot evening early in July a young man came out of the garret .
;SurU julAI kA eka xina, SAma kA samaya jaba umasaBarI garmI pada rahI WI, eka nOjavAna apanI xuCawwI [meM se] nikalA. 
(defrule get_multi_vib_2_from_dic
(declare (salience 650))
(database_info (components ?mng&ke|kI|se|meM ?mng1))
(manual_id-word ?id ?mng)
(manual_id-word ?id1&:(=(+ ?id 1) ?id1) ?mng1)
(not (mng_has_been_grouped ?id1))
(not (chunk_name-chunk_ids VGF $? ?id1 $?))
=>
        (assert (ids-multi_vib ?id ?id1 - ?mng ?mng1))
        (assert (mng_has_been_grouped ?id))
        (assert (mng_has_been_grouped ?id1))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
; cAroM_ora 
;Humans have always been curious about the world around them.
;mAnava kI saxEva apane [cAroM ora] PEle viSva ke bAre meM jAnane kI jijFAsA rahI hE .
(defrule multi_vib0
(declare (salience 700))
(manual_id-word ?id1 ?w2&cAroM)
(manual_id-word ?id3&:(=(+ ?id1 1) ?id3) ?w3&ora)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id3))
=>
	(assert (ids-multi_vib ?id1 ?id3 - ?w2 ?w3)) 
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id3))
)
;----------------------------------------------------------------------------------------------------------
;kI_wulanA_meM ; kI vajaha  se ; jisakI vajaha  se
;Ora uXara se gujarawe hue hara bAra usa nOjavAna ko JiJaka BI howI WI Ora dara BI lagawA WA, jisakI vajaha se usakI wyoriyoM para Sikana pada jAwI WI Ora Sarma mahasUsa howI WI.
(defrule kI_[word]_meM
(declare (salience 700))
(manual_id-word ?id1 ?m&kI|jisakI|usakI)
(manual_id-word ?id2&:(=(+ ?id1 1) ?id2) ?w&wulanA|vajaha)
(manual_id-word ?id3&:(=(+ ?id2 1) ?id3) ?v&meM|se)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
(not (mng_has_been_grouped ?id3))
=>
	(assert (ids-multi_vib ?id1 ?id2 ?id3 - kI ?w ?v)) 
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
        (assert (mng_has_been_grouped ?id3))
)
;----------------------------------------------------------------------------------------------------------
;ke rUpa meM, ke bAre meM
;;Axya vicArakoM jEse araswU kI bala [ke viRaya meM] saMkalpanA galawa WI -- Early thinkers like Aristotle had wrong ideas about it.
;BOwikI ke anwargawa hama viviXa BOwika pariGatanAoM kI vyAKyA kuCa safkalpanAoM evaM niyamoM [ke paxoM meM] karane kA prayAsa karawe hEM --- In Physics, we attempt to explain diverse physical phenomena in terms of a few concepts and laws. 
;;xqSya prakASa ke sWAna para hama, ilektroYna - puFja kA upayoga kara sakawe hEM.---Instead of visible light, we can use an electron beam.
;We shall study [about it] in Section 9.4.
;hama [isake bAre meM] KaNda 9.4 meM aXyayana kareMge.
(defrule ke_[word]_meM
(declare (salience 700))
(manual_id-word ?id1 ?w&ke)
(manual_id-word ?id2&:(=(+ ?id1 1) ?id2) ?w0&rUpa|bAre|viRaya|AXAra|wOra|paxoM|sWAna|maXya|bIca|pakRa|samparka)
(manual_id-word ?id3&:(=(+ ?id2 1) ?id3) ?w1&meM|para)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
(not (mng_has_been_grouped ?id3))
=>
	(assert (ids-multi_vib ?id1 ?id2 ?id3 - ?w ?w0 ?w1)) 
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
        (assert (mng_has_been_grouped ?id3))
)
;----------------------------------------------------------------------------------------------------------
;kI_ora, kI_waraha, kI_apekRA
;To throw a stone upwards, one has to give it an upward push.-->kisI pawWara ko Upara kI ora Pefkane ke lie, hameM use Upara kI ora prakRepiwa karanA padawA hE .
;The resolution of such an electron microscope is limited finally by the fact that electrons can also behave as waves. ---> isa prakAra ke ilektroYna - sUkRmaxarSI kA viBexana BI anwawaH isI waWya xvArA sImiwa howA hE ki ilektroYna BI warafgoM kI waraha vyavahAra kara sakawe hEM.
;Since the electromagnetic force is so much stronger than the gravitational force, it dominates all phenomena at atomic and molecular scales. -- cUfki vixyuwa cumbakIya bala guruwvAkarRaNa bala kI apekRA kahIM aXika prabala howA hE yaha ANvika waWA paramANvIya pEmAne kI saBI pariGatanAoM para CAyA rahawA hE
(defrule kI_[word]
(declare (salience 650))
(manual_id-word ?id1 ?w1&kI)
(manual_id-word ?id2&:(=(+ ?id1 1) ?id2)  ?w2&ora|waraha|apekRA|waraph|waraPa)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
=>
	(assert (ids-multi_vib ?id1 ?id2 - ?w1 ?w2)) 
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
)
;----------------------------------------------------------------------------------------------------------
;ke_liye, ke_lie, ke_pariwaH, ke_sAWa, ke_awirikwa, ke_bAxa ...
;xravyamAna kenxra kI pariBARA [jAnane ke bAxa] , aba hama isa sWiwi meM hEM ki kaNoM ke eka nikAya ke lie isake BOwika mahawva kI vivecanA kara sakeM.
;It is mainly through light and the sense of vision that we know and interpret the world around us.--> muKya rUpa se prakASa evaM xqRti kI [saMvexanA ke kAraNa] hI hama apane cAroM ora ke saMsAra ko samaJawe evaM usakI vyAKyA karawe hEM
;There is no loss of energy due to friction. [ke kAraNa]
;The apparent flattening (oval shape) of the sun at sunset and sunrise is also due to the same phenomenon.--->sUryAswa waWA [sUryoxaya ke samaya] sUrya kA ABAsI capatApana (aNdAkAra Akqwi) BI isI pariGatanA ke kAraNa hI hE.
;The restoring muscular forces again come into play and bring the body to rest.----- >prawyAnayanI peSIya baloM ke kAryarawa hone [ke kAraNa] SarIra virAma avasWA meM A jAwI hE
;EsI gEsoM meM paramANuoM [ke maXya] anwarAla aXika howA hE.
(defrule ke_[word]
(declare (salience 650))
(manual_id-word ?id1 ke)
(manual_id-word ?id2&:(=(+ ?id1 1) ?id2) ?w&pariwaH|lie|liye|sAWa|anwargawa|ora|awirikwa|bAxa|kAraNa|samaya|xvArA|anusAra|aXIna|bIca|nIce|Upara|samAna|pare|BIwara|Age|pICe|paScAwa|paScAw|nikata|sApekRa|maXya|anxara|bAhara|binA|jEsA|pAsa|viruxXa|xOrAna|sahiwa|anuxiSa|samIpa|KilAPa|sAWa-sAWa|bajAya|alAvA|prawi)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
=>
	(assert (ids-multi_vib ?id1 ?id2 - ke ?w)) 
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
)
;----------------------------------------------------------------------------------------------------------
;se_pahale, se_Age, se_pICe
;[Before] the discovery of transistor in 1948, such devices were mostly vacuum tubes (also called valves) like the vacuum diode which has two electrodes, viz., anode (often called plate) and cathode; triode which has three electrodes — cathode, plate and grid; tetrode and pentode (respectively with 4 and 5 electrodes). "
;सन् 1948 में ट्राञ्जिस्टर की खोज [से पहले] ऐसी युक्तियाँ अधिकांशतः निर्वात नलिकाएँ ( या वाल्व ) थीं , जैसे निर्वात डायोड जिसमें दो इलेक्ट्रोड ; एनोड ( प्लेट ) तथा कैथोड थोथा पेंटोड ( क्रमशः 4 तथा 5 इलेक्ट्रोडों के साथ ) .

(defrule se_[word]
(declare (salience 650))
(manual_id-word ?id1 se)
(manual_id-word ?id2&:(=(+ ?id1 1) ?id2) ?w&pahale|Age|pICe)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
=>
	(assert (ids-multi_vib ?id1 ?id2 - se ?w)) 
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
)
;----------------------------------------------------------------------------------------------------------
;What is the origin of the external force on the body?
;[piMda para lage] bAhya bala kA uxgama kyA hE ?
(defrule para_lage
(declare (salience 650))
(manual_id-word ?id1 para)
(manual_id-word ?id2&:(=(+ ?id1 1) ?id2) ?w&lage)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
=>
	(assert (ids-multi_vib ?id1 ?id2 - para ?w)) 
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
)
;----------------------------------------------------------------------------------------------------------
;Pira paFje [[se Upara] [kI ora]] mAliSa kareM EsA kaI bAra kareM .
;Added by Shirisha Manju
(defrule grp_contineous_multi_vib
(declare (salience 611))
?f0<-(ids-multi_vib $?ids ?id - $?v) 
?f1<-(ids-multi_vib ?id1&:(=(+ ?id 1) ?id1) $?ids1  - $?v1) 
=>	
	(retract ?f0 ?f1)
	(assert (ids-multi_vib $?ids ?id ?id1 $?ids1 - $?v $?v1))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;The distance between the two points of observation is called the basis.
;xo prekRaNa [biMxuoM] (@A evaM @B) [ke bIca] kI xUrI ko AXAraka kahA jAwA hE.
;Since momentum is a vector this implies three equations for the three directions {x, y, z}.
;cUzki saMvega eka saxiSa rASi hE, awaH yaha wIna [xiSAoM {@x, @y, @z} ke lie] wIna samIkaraNa praxarSiwa karawA hE.
(defrule group_multi_vib_Paren
(declare (salience 610))
?f<-(manual_word_info (head_id ?h)(group_ids $?gids ?id0))
(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) @PUNCT-OpenParen|{)
(manual_id-word ?id2 @PUNCT-ClosedParen|})
(test (or (eq (- ?id2 ?id1) 3)(eq (- ?id2 ?id1) 2) (eq (- ?id2 ?id1) 1)(eq (- ?id2 ?id1) 4)(eq (- ?id2 ?id1) 6)))
?f1<-(ids-multi_vib ?id3&:(=(+ ?id2 1) ?id3) $?ids - $?vib)
=>
        (retract ?f1)
	(bind ?nv (remove_character " " (implode$ (create$ $?vib)) "_"))
        (modify ?f (vibakthi ?nv)(vibakthi_components $?vib)(group_ids $?gids ?id0 ?id3 $?ids))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;This fact was emphasised in the previous chapter also while discussing motion along a straight line.
;piCale aXyAya meM BI eka [sarala reKA] [ke anuxiSa] gawimAna vaswu ke lie isa waWya ko BalIBAnwi samaJAyA gayA WA .
(defrule group_multi_vib
(declare (salience 600))
?f<-(ids-multi_vib ?id $?vids - $?vib)
?f0<-(manual_word_info (head_id ?h)(word $?mng )(group_ids $?ids ?id1&:(=(- ?id 1) ?id1)))
(not (manual_id-word ?id1 @PUNCT-ClosedParen|}))
=>
	(retract ?f)
	(bind ?nv (remove_character " " (implode$ (create$ $?vib)) "_"))
	(modify ?f0 (vibakthi ?nv)(vibakthi_components $?vib)(group_ids $?ids ?id1 ?id $?vids))
)
	
;============================================  Word Grouping ============================================

;Added by Shirisha Manju
;You should now be able to handle a large variety of problems in mechanics. 
;aba Apa yAnwrikI kI viviXa prakAra kI samasyAoM ko [hala karane meM sakRama] hEM.
(defrule multi_word_4_with_dic
(declare (salience 600))
(database_info (components ?mng ?mng1 ?mng2 ?mng3))
(manual_id-word ?id0 ?mng&~ke&~kI&~se)
(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ?mng1)
(manual_id-word ?id2&:(=(+ ?id0 2) ?id2) ?mng2)
(man_word-root-cat ?m ?mng3 ?)
(manual_id-word ?id3&:(=(+ ?id0 3) ?id3) ?m)
(not (mng_has_been_grouped ?id0))
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
(not (mng_has_been_grouped ?id3))
(not (chunk_name-chunk_ids VGF $? ?id1 $?))
=>
        (assert (manual_word_info (head_id ?id3) (word ?mng ?mng1 ?mng2 ?m)(group_ids ?id0 ?id1 ?id2 ?id3)))
        (assert (mng_has_been_grouped ?id0))
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
        (assert (mng_has_been_grouped ?id3))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;For the case of [rectilinear motion] with uniform acceleration, a set of simple equations can be obtained.
;ekasamAna wvariwa [sarala reKIya gawi] ke lie kuCa sarala samIkaraNa prApwa kie jA sakawe hEM.
;The [microscopic [domain]] includes atomic, molecular and nuclear phenomena.
;jabaki [sUkRma praBAva kRewra] ke anwargawa paramANvIya, ANvika waWA nABikIya pariGatanAez AwI hEM.
(defrule multi_word_3_with_dic
(declare (salience 590))
(database_info (components ?mng ?mng1 ?mng2))
(manual_id-word ?id0 ?mng&~ke&~kI&~se)
(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ?mng1)
(manual_id-word ?id2&:(=(+ ?id0 2) ?id2) ?m)
(man_word-root-cat ?m ?mng2 ?)
(not (mng_has_been_grouped ?id0))
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
(not (chunk_name-chunk_ids VGF $? ?id2 $?))
;(not (chunk_name-chunk_ids VGF $? ?id1 $?))
=>
        (assert (manual_word_info (head_id ?id2) (word ?mng ?mng1 ?m)(group_ids ?id0 ?id1 ?id2)))
        (assert (mng_has_been_grouped ?id0))
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;E: These unit vectors are perpendicular to each other.
;M: ye ekAfka saxiSa [eka xUsare ke] lambavaw hEM .  dic: eka xUsare se
;E: The experimental discoveries of Oersted and Faraday showed that electric and magnetic phenomena are in general inseparable.
;M: oYrsteda waWA PErAde ne prAyogika KojoM xvArA xarSAyA ki [vyApaka rUpa meM] vExyuwa waWA cumbakIya pariGatanAez avicCexya hEM.
;     dic == vyApaka rUpa se
(defrule multi_word_3_with_dic1
(declare (salience 590))
(database_info (components ?mng ?mng1 ?mng2))
(manual_id-word ?id0 ?mng&~ke&~kI&~se)
(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ?mng1)
(manual_id-word ?id2&:(=(+ ?id0 2) ?id2) ?m)
(test (eq (integerp (member$ ?mng2 (create$ ke se meM kA ko))) TRUE))
(test (eq (integerp (member$ ?m (create$ ke se meM kA ko))) TRUE))
(not (mng_has_been_grouped ?id0))
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
(not (chunk_name-chunk_ids VGF $? ?id1 $?))
=>
        (assert (manual_word_info (head_id ?id2) (word ?mng ?mng1 ?m)(group_ids ?id0 ?id1 ?id2)))
        (assert (mng_has_been_grouped ?id0))
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;Eng: The canned juice you take from the market should be 100 percent pure [fruit juice]. 
;Man: Apa bAjAra se jo dibbAbanxa jUsa leM vaha 100 PIsaxI [PaloM kA rasa] honA cAhie.
(defrule multi_word_3_with_anu
(declare (salience 580))
(id-HM-source ? ?mng ?mng1 ?mng2 ?)
(manual_id-word ?id0 ?mng&~ke&~kI&~se)
(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ?mng1)
(or (manual_id-word ?id2&:(=(+ ?id1 1) ?id2) ?mng2)
    (and (man_word-root-cat ?m ?mng2 ?c&~v)(manual_id-word ?id2&:(=(+ ?id1 1) ?id2) ?m))
)
(not (mng_has_been_grouped ?id0))
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
(not (chunk_name-chunk_ids VGF $? ?id2 $?))
=>
        (assert (manual_word_info (head_id ?id2) (word ?mng ?mng1 ?mng2)(group_ids ?id0 ?id1 ?id2)))
        (assert (mng_has_been_grouped ?id0))
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;rojAnA [jyAxA se jyAxA] pAnI piez .
(defrule multi_word_3
(declare (salience 580))
(manual_id-word ?id0 ?mng)
(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) se)
(manual_id-word ?id2&:(=(+ ?id1 1) ?id2) ?mng)
(not (mng_has_been_grouped ?id0))
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
=>
        (assert (manual_word_info (head_id ?id2) (word ?mng se ?mng)(group_ids ?id0 ?id1 ?id2)))
        (assert (mng_has_been_grouped ?id0))
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule multi_word_2_with_anu
(declare (salience 580))
(id-HM-source ? ?mng ?mng1 ?)
(manual_id-word ?id0 ?mng&~ke&~kI&~se)
(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ?m&~Axi)
(man_word-root-cat ?m ?mng1 ?c&~v)
(not (mng_has_been_grouped ?id0))
(not (mng_has_been_grouped ?id1))
(not (chunk_name-chunk_ids VGF $? ?id1 $?))
=>
        (assert (manual_word_info (head_id ?id1) (word ?mng ?m)(root_components ?mng ?m)(group_ids ?id0 ?id1)))
        (assert (mng_has_been_grouped ?id0))
        (assert (mng_has_been_grouped ?id1))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;Languages and methods used in communication have kept evolving from prehistoric to [modern times], to meet the growing demands in terms of speed and complexity of information.
;mAnava prAgEwihAsika kAla se [AXunika kAla] waka, saFcAra meM upayoga hone vAlI nayI - nayI BARAoM evaM viXiyoM kI Koja karane ke lie prayawnaSIla rahA hE, wAki saFcAra kI gawi evaM jatilawAoM ke paxoM meM baDawI AvaSyakawAoM kI pUrwi ho sake.
;[Similarly], we can argue that it lies on the median MQ and NR.
;[isI prakAra] hama warka kara sakawe hEM ki yaha mAXyikA MQ Ora NR para BI avasWiwa hogA.
(defrule multi_word_2_with_dic
(declare (salience 575))
(database_info (components ?mng ?mng1 ))
(manual_id-word ?id0 ?mng&~ke&~kI&~se)
(or (and (manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ?m)(test (eq ?m ?mng1)))
    (and (manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ?m)(man_word-root-cat ?m ?mng1 ?c&~v)))
(not (mng_has_been_grouped ?id0))
(not (mng_has_been_grouped ?id1))
(not (chunk_name-chunk_ids VGF $? ?id1 $?))
(not (and (id-HM-source ?aid ?mng ?)(id-HM-source =(+ ?aid 1) ?mng1 ?))) ;a biennial life cycle. eka xvivArRika jIvana cakra
(not (and (database_info (components ?mng)(group_ids ?aid))(id-HM-source =(+ ?aid 1) ?mng1 ?))) ;cause : mUla kAraNa ; main : mUla
=>
        (assert (manual_word_info (head_id ?id1) (word ?mng ?m)(group_ids ?id0 ?id1)))
        (assert (mng_has_been_grouped ?id0))
        (assert (mng_has_been_grouped ?id1))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 2-08-17
;dic : pUrI waraha se  Man: pUrI waraha
;CUta xekara : jaba saMvixakArI pakRa xUsare pakRa xvArA saMvixA ke niRpAxana meM [pUrI waraha] yA AMSika rUpa se CUta xewA hE yA niRpAxana ke lie samayAvaXi baDA xewA hE yA niRpAxana ke sWAna para koI anya prawipUrwi svIkAra kara lewA hE, waba saMvixA CUta xI gaI sImA waka Kawma ho gaI samaJI jAwI hE 
(defrule multi_word_2_with_dic1
(declare (salience 590))
(database_info (components ?mng ?mng1 ?mng2))
(manual_id-word ?id0 ?mng)
(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ?mng1)
(test (eq (integerp (member$ ?mng2 (create$ ke se meM kA ko))) TRUE))
(not (mng_has_been_grouped ?id0))
(not (mng_has_been_grouped ?id1))
(not (chunk_name-chunk_ids VGF $? ?id1 $?))
=>
        (assert (manual_word_info (head_id ?id1) (word ?mng ?mng1)(group_ids ?id0 ?id1)))
        (assert (mng_has_been_grouped ?id0))
        (assert (mng_has_been_grouped ?id1))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;Circular motion is a familiar class of motion that has a special significance in [daily-life] situations.
;vqwwIya gawi se hama BalIBAzwi pariciwa hEM jisakA hamAre [xEnika jIvana] meM viSeRa mahawwva hE .
(defrule get_hypen_word_grp
(declare (salience 570))
(id-left_word-possible_mngs ?aid $? ?m $?)
(id-right_word-possible_mngs ?aid $? ?m1 $?)
(manual_id-word ?id ?m)
(manual_id-word ?id1&:(=(+ ?id 1) ?id1) ?m1)
(not (mng_has_been_grouped ?id))
(not (mng_has_been_grouped ?id1))
=>
	(assert (manual_word_info (head_id ?id1) (word ?m ?m1) (group_ids ?id ?id1)))
        (assert (mng_has_been_grouped ?id))
        (assert (mng_has_been_grouped ?id1))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;a black-and-white TV -- eka kAle Ora saPexa tI vI.
(defrule get_hypen_word_grp1
(declare (salience 570))
(id-left_word-possible_mngs ?aid $? ?m $?)
(id-right_word-possible_mngs ?aid $? ?m1 $?)
(or (manual_id-word ?id ?m) (and (manual_id-word ?id ?w)(man_word-root-cat ?w ?m n)))
(manual_id-word ?id1&:(=(+ ?id 1) ?id1) ?o&Ora|yA)
(manual_id-word ?id2&:(=(+ ?id1 1) ?id2) ?m1)
(not (mng_has_been_grouped ?id))
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
=>
        (assert (manual_word_info (head_id ?id1) (word ?m ?o ?m1) (group_ids ?id ?id1 ?id2)))
        (assert (mng_has_been_grouped ?id))
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;Ayana maNdala == AyanamaNdala == ionosphere
(defrule get_dic_group
(declare (salience 570))
(manual_id-word ?mid ?m)
(manual_id-word ?mid1&:(=(+ ?mid 1) ?mid1) ?m1)
(test (eq (numberp ?m1) FALSE))
(database_info (meaning ?mng))
(test (eq (string-to-field (str-cat ?m ?m1)) ?mng))
(not (mng_has_been_grouped ?mid))
(not (mng_has_been_grouped ?mid1))
=>
	(assert (manual_word_info (head_id ?mid1) (word ?m ?m1) (group_ids ?mid ?mid1)))
        (assert (mng_has_been_grouped ?mid))
        (assert (mng_has_been_grouped ?mid1))
)
;----------------------------------------------------------------------------------------------------------
;Dispersion takes place because the refractive index of medium for different wavelengths (colors) is different.
;parikRepaNa kA kAraNa yaha hE ki kisI mAXyama kA apavarwanAfka viBinna warafgaxErGyoM  @PUNCT-OpenParenvarNoM @PUNCT-ClosedParen ke lie Binna - Binna howA hE
(defrule word_[hyphen]_word
(declare (salience 570))
?f1<-(manual_id-word ?id0 ?noun&~hEM&~hE&~.);vyApaka rUpa se, vExyuwa waWA cumbakIya praBAva avicCexa hEM - isIlie isa bala ko vixyuwa-cumbakIya bala kahawe hEM.
?f2<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) -)
?f3<-(manual_id-word ?id2&:(=(+ ?id0 2) ?id2) ?w&~isa)
(test (eq (member$ ?w (create$ isa agara yaxi Apako @PUNCT-ClosedParen)) FALSE))
(test (eq (member$ ?noun (create$ isa agara yaxi Apako @PUNCT-ClosedParen)) FALSE))
(not (mng_has_been_grouped ?id0))
(not (mng_has_been_grouped ?id2))
=>
	(bind ?nw (string-to-field (str-cat ?noun"-"?w)))
        (assert (manual_word_info (head_id ?id0) (word ?nw)(group_ids ?id0 ?id2)))
;        (assert (manual_word_info (head_id ?id0) (word ?noun ?w)(group_ids ?id0 ?id2)))
        (assert (mng_has_been_grouped ?id0))
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
)
;----------------------------------------------------------------------------------------------------------
(defrule pronoun_multi_group_meM
(declare (salience 570))
(manual_id-word ?id1 ?w&isake|usake|inake|unake)
(manual_id-word ?id2&:(=(+ ?id1 1) ?id2) ?w0&rUpa|bAre|viRaya|AXAra|wOra|paxoM|sWAna|maXya|bIca|pakRa|samparka)
(manual_id-word ?id3&:(=(+ ?id2 1) ?id3) ?w1&meM|para)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
(not (mng_has_been_grouped ?id3))
=>
        (assert (manual_word_info (head_id ?id1) (word ?w ?w0 ?w1)(group_ids ?id1 ?id2 ?id3)))
        (assert (mng_has_been_grouped ?id2))
        (assert (mng_has_been_grouped ?id3))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 
;isa prakAra, isI prakAra , isI waraha
(defrule pronoun_group2
(declare (salience 570))
?f1<-(manual_word_info (head_id ?mid) (word ?p&isake|isakI|usake|inake|isa|isI|apane|jisake|wumhAre|Apake|sabake|unake))
?f<-(manual_word_info (head_id ?h) (word ?w&awirikwa|prakAra|waraha|vajaha)(group_ids ?mid1&:(=(+ ?mid 1) ?mid1)))
=>
	(retract ?f1)
	(modify ?f  (word ?p ?w)(group_ids ?mid ?mid1))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 
;The units of all other physical quantities can be expressed as combinations of the base units.
;inake awirikwa anya saBI BOwika rASiyoM ke mAwrakoM ko mUla mAwrakoM ke saMyojana xvArA vyakwa kiyA jA sakawA hE.
;The little flats in such houses always have bells that ring like that. 
;[isa waraha ke] Cote-Cote PlEtoM kI GaNtiyAz hameSA isI waraha kI AvAja karawI hEM .
;jEse ki,  inake bAxa, apane|inake KilAPa
(defrule pronoun_group
(declare (salience 570))
?f1<-(manual_word_info (head_id ?mid) (word ?p&isake|isakI|usake|inake|isa|jEse|isI|apane|jisake|jinake|wumhAre|Apake|sabake|unake|mere))
?f<-(manual_word_info (head_id ?h) (word ?w&bAxa|ki|pAsa|KilAPa|sAWa|Asa-pAsa|liye|xOrAna|alAvA|bIca $?d)(group_ids ?mid1&:(=(+ ?mid 1) ?mid1) $?ids))
=>
	(retract ?f1)
        (bind ?new_v (remove_character " " (implode$ (create$ ?w $?d)) "_"))
	(modify ?f (head_id ?mid) (word ?p )(vibakthi ?new_v)(vibakthi_components ?w $?d)(group_ids ?mid ?mid1 $?ids))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 
(defrule pronoun_group1
(declare (salience 570))
?f1<-(manual_id-word ?id0 ?noun&kisI)
?f2<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ne)
(not (mng_has_been_grouped ?id0))
(not (mng_has_been_grouped ?id1))
=>
        (bind ?new_mng (remove_character " " (implode$ (create$ ?noun ne)) ""))
        (assert (manual_word_info (head_id ?id0) (word ?new_mng)(group_ids ?id0 ?id1)))
        (assert (mng_has_been_grouped ?id0))
        (assert (mng_has_been_grouped ?id1))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 
(defrule wOra_para
(declare (salience 570))
(manual_id-word ?id0 ?n)
(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) wOra)
(manual_id-word ?id2&:(=(+ ?id1 1) ?id2) para)
(not (mng_has_been_grouped ?id0))
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
=>
	(assert (manual_word_info (head_id ?id0) (word ?n wOra para)(group_ids ?id0 ?id1 ?id2)))
        (assert (mng_has_been_grouped ?id0))
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
)
;----------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 
;cabAez Sugara rahiwa cuiMga gama 
(defrule grp_rahiwa
(declare (salience 560))
(manual_id-word ?id0 ?n)
(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ?n1&rahiwa|yukwa)
(not (mng_has_been_grouped ?id0))
(not (mng_has_been_grouped ?id1))
=>
        (assert (manual_word_info (head_id ?id1) (word ?n ?n1)(group_ids ?id0 ?id1)))
        (assert (mng_has_been_grouped ?id0))
        (assert (mng_has_been_grouped ?id1))
)

;====================================== Default Word Grouping =======================================
(defrule get_default_group
(declare (salience 500))
?f1<-(manual_id-word ?mid ?man_wrd&~kA&~se&~ke&~{&~}&~.&~-&~@SYMBOL-TELDA&~...)
(test (neq (sub-string 1 6 (implode$ (create$ ?man_wrd))) "@PUNCT"))
(not (manual_word_info (group_ids $? ?mid $?)))
(not (mng_has_been_grouped ?mid))
=>

        (assert (manual_word_info (head_id ?mid) (word ?man_wrd)(group_ids ?mid)))
)

;====================================== Single Vibakthi ==============================================
;Dispersion takes place because the refractive index of medium for different wavelengths (colors) is different.
;parikRepaNa kA kAraNa yaha hE ki kisI mAXyama kA apavarwanAfka viBinna warafgaxErGyoM  @PUNCT-OpenParenvarNoM @PUNCT-ClosedParen ke lie Binna - Binna howA hE @PUNCT-Dot
;Eng sen : Fig. 3.2 (b) shows the position-time graph of such a motion.
;Man sen : isa prakAra kI gawi kA sWiwi - samaya grAPa ciwra 3.2 @PUNCT-OpenParen @b @PUNCT-ClosedParen [meM] xiKalAyA gayA hE  @PUNCT-Dot

;Eng sen :Acceleration, therefore, may result from a change in [speed (magnitude)], a change in direction or changes in both.
;Man sen : awaH yA wo [cAla]  @PUNCT-OpenParen parimANa @PUNCT-ClosedParen [meM] parivarwana @PUNCT-Comma  xiSA meM parivarwana aWavA ina xonoM meM parivarwana se wvaraNa kA uxBava ho sakawA hE  @PUNCT-Dot
(defrule single_vib_Paren
(declare (salience 550))
?f1<-(manual_word_info (head_id ?h) (word $?noun) (group_ids $?ids ?id0))
(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) @PUNCT-OpenParen)
(manual_id-word ?id2 @PUNCT-ClosedParen)
(test (or (eq (- ?id2 ?id1) 3)(eq (- ?id2 ?id1) 2) (eq (- ?id2 ?id1) 1)(eq (- ?id2 ?id1) 4)))
?f3<-(manual_id-word ?id3&:(=(+ ?id2 1) ?id3) ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|jEsI|xvArA|waka|hI)
(not (mng_has_been_grouped ?id3))
(not (vib_added ?h))
=>
	(modify ?f1 (vibakthi ?vib)(vibakthi_components ?vib)(group_ids $?ids ?id0 ?id3))
        (assert (mng_has_been_grouped ?id3))
)
;----------------------------------------------------------------------------------------------------------------
;He made pioneering contributions in the field of optics.
;unhoMne [prakASikI  ke] kRewra meM paWa praxarSaka yogaxAna xiyA .
;In this example, the basis is the distance between the eyes.
;isa uxAharaNa meM xonoM [AzKoM ke bIca] [kI] xUrI AXAraka hE.
(defrule single_vib
(declare (salience 540))
?f1<-(manual_word_info (head_id ?id0) (word $?noun) (vibakthi ?v $?v1)(group_ids $?grp_ids ?lid))
(test (eq (integerp (member$ $?noun (create$ va Ora yA))) FALSE))
(manual_id-word ?id1&:(=(+ ?lid 1) ?id1) ?vib&kA|kI|ke|se|sA|sI)
(not (chunk_name-chunk_ids VGF|VGNF $? ?id1 $?)) ;The details are discussed in Section 12.2.anucCexa 12.2 meM isakI viswAra se vyAKyA [kI] gaI hE. isase usa vyakwi kI use [sUciwa kI gaI] praswAva kI SarwoM se AbaxXa hone kI icCAe vyakwa howI hE
(not (id-Apertium_output ? ?vib)) ;10.0 tAipa sI .
(not (mng_has_been_grouped ?id1))
=>
	(if (eq ?vib sA) then
                (modify ?f1 (word $?noun ?vib)(group_ids $?grp_ids ?lid ?id1))
	else
		(if (eq ?v 0) then
        	        (modify ?f1 (vibakthi ?vib)(vibakthi_components ?vib)(group_ids $?grp_ids ?lid ?id1))
        	else 
	        	(bind ?new_v (remove_character " " (implode$ (create$ ?v $?v1 ?vib)) "_"))
                	(modify ?f1 (vibakthi ?new_v)(vibakthi_components ?v $?v1 ?vib)(group_ids $?grp_ids ?lid ?id1))
        	)
	)
        (assert (mng_has_been_grouped ?id1))
)
;----------------------------------------------------------------------------------------------------------------
;Dispersion takes place because the refractive index of medium for different wavelengths (colors) is different.
;parikRepaNa kA kAraNa yaha hE ki kisI mAXyama kA apavarwanAfka viBinna warafgaxErGyoM  @PUNCT-OpenParenvarNoM @PUNCT-ClosedParen [ke] [lie] Binna - Binna howA hE @PUNCT-Dot
;The average velocity can be positive or negative depending upon the sign of the displacement.
;Osawa vega [kA] qNAwmaka yA XanAwmaka honA visWApana ke cihna para nirBara karawA hE .
;evaM isase banI [sIDZI numA] [GAtI ne] isa manorama jalaprapAwa kA sqjana kiyA hogA .
(defrule single_vib1
(declare (salience 540))
?f1<-(manual_word_info (head_id ?mid0) (word $?noun)(vibakthi ?v $?v1)(group_ids $?grp_ids ?id0))
(test (eq (integerp (member$ $?noun (create$ hEM hE howA hE kiye ))) FALSE)) ;--- anwaHsWApiwa  hEM  jEse  kisI --- 
;(test (eq (integerp (member$ $?noun (create$ hEM hE howA hE kiye karane ))) FALSE)) ;--- anwaHsWApiwa  hEM  jEse  kisI --- 
?f2<-(manual_word_info (head_id ?id1&:(=(+ ?id0 1) ?id1))(word ?vib&ne|para|ko|meM|lie|xvArA|vAlI|vAlA|vAle|waka|numA|hewu)(group_ids $?grp_ids1))
;?f2<-(manual_word_info (head_id ?id1&:(=(+ ?id0 1) ?id1))(word ?vib&ne|para|ko|meM|lie|jEse|jEsI|xvArA|vAlI|vAlA|vAle|waka|numA|hewu)(group_ids $?grp_ids1))
(test (and (neq (integerp (member$ ?vib $?v1)) TRUE) (neq ?v ?vib)))
(not (chunk_name-chunk_ids VGF $? ?mid0 $?))
(not (vib_added ?id0))
=>
        (retract ?f2)
	(if (eq ?v 0) then
        	(modify ?f1 (vibakthi ?vib)(vibakthi_components ?vib)(group_ids $?grp_ids ?id0 $?grp_ids1))
	else
	        (bind ?new_v (remove_character " " (implode$ (create$ ?v $?v1 ?vib)) "_"))
        	(modify ?f1 (vibakthi ?new_v)(vibakthi_components ?v $?v1 ?vib)(group_ids $?grp_ids ?id0 $?grp_ids1))
	)
)
;1920 waka EsA mAnA jAwA WA ki BArawIya saByawA kA uxBava [6 vIM] SawAbxI IsA pUrva se hI mAnA jAwA WA  .
(defrule single_vib2
(declare (salience 40))
?f1<-(manual_word_info (head_id ?mid0) (word $?noun)(vibakthi ?v $?v1)(group_ids $?grp_ids ?id0))
(test (eq (integerp (member$ $?noun (create$ hEM hE howA hE kiye ))) FALSE))  
(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) @SYMBOL-TELDA)
?f2<-(manual_word_info (head_id ?id2&:(=(+ ?id1 1) ?id2))(word ?vib&ne|para|ko|meM|lie|jEse|jEsI|xvArA|vAlI|vAlA|vAle|waka|numA|hewu/vIM)(group_ids $?grp_ids1))
(test (and (neq (integerp (member$ ?vib $?v1)) TRUE) (neq ?v ?vib)))
(not (chunk_name-chunk_ids VGF $? ?mid0 $?))
(not (vib_added ?id0))
=>
        (retract ?f2)
        (if (eq ?v 0) then
                (modify ?f1 (vibakthi ?vib)(vibakthi_components ?vib)(group_ids $?grp_ids ?id0 $?grp_ids1))
        else
                (bind ?new_v (remove_character " " (implode$ (create$ ?v $?v1 ?vib)) "_"))
                (modify ?f1 (vibakthi ?new_v)(vibakthi_components ?v $?v1 ?vib)(group_ids $?grp_ids ?id0 $?grp_ids1))
	)
 )                                                     

;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 18-5-15
;to map man punct's same as anu punt's
(defrule map_punct
(declare (salience 100))
?f0<-(manual_word_info  (head_id ?mid) (word ?w))
(test (integerp (member$ ?w (create$ / )))) 
=>
	(modify ?f0 (word @SYMBOL-@SLASH))
)
;==================================== get hyphen word inf0 ==============================
;Added by Shirisha Manju
;In a good number of situations in real-life, the size of objects can be neglected and they can be considered as point-like objects without much error.
;vAswavika jIvana meM [bahuwa-sI] sWiwiyoM meM vaswuoM ke AmApa (sAija) kI upekRA kI jA sakawI hE Ora binA aXika wruti ke unheM eka [biMxu-vaswu] mAnA jA sakawA hE .
;not modified in manual_word_info bcoz we are not modifying phrasal info
(defrule cp_man_hypen_word
(declare (salience 100))
(or (manual_word_info (head_id ?mid) (word ?mng)(vibakthi_components $?v))(id-word-vib ?mid - ?mng - $?v))
(test (eq (numberp ?mng) FALSE))
(test (neq (str-index "-" ?mng) FALSE))
(not (id-hyphen_word-vib ?mid $?))
=>
        (bind ?new_mng (remove_character "-" (implode$ (create$  ?mng)) " "))
        (assert (id-hyphen_word-vib ?mid - ?new_mng - $?v))
        (bind ?new_mng1 (remove_character " " (implode$ (create$  ?new_mng)) ""))
        (assert (id-hyphen_word-vib ?mid - ?new_mng1 - $?v))
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;ex : man: praXAnamanwrI dic : praXAna manwrI 
(defrule cp_man_fact
(declare (salience 100))
(manual_word_info (head_id ?mid) (word ?mng)(vibakthi_components $?vib))
(or (id-Apertium_output ? ?m ?m1) (id-Apertium_output ? ?m ?m1 ?v&ko|ke|se)(database_info (components ?m ?m1 )))
(test (eq (numberp ?mng) FALSE))
(test (eq (string-to-field (str-cat ?m ?m1)) ?mng))
(not (id-hyphen_word-vib ?mid $?))
=>
        (assert (id-hyphen_word-vib ?mid - ?m ?m1 - $?vib))
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;ex : man: praXAna manwrI dic : praXAnamanwrI 
(defrule cp_man_fact1
(declare (salience 100))
(manual_word_info (head_id ?mid) (word ?m ?m1)(vibakthi_components $?vib))
(or (id-Apertium_output ? ?mng) (id-Apertium_output ? ?mng ?v&ko|ke|se)(database_info (components ?mng)))
(test (eq (numberp ?mng) FALSE))
(test (eq (string-to-field (str-cat ?m ?m1)) ?mng))
(not (id-hyphen_word-vib ?mid $?))
=>
        (assert (id-hyphen_word-vib ?mid - ?mng - $?vib))
)

