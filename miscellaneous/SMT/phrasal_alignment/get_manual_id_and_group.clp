(defglobal ?*id* = 1)

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(multislot group_ids (default 0)))

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
        (if (and (neq ?wrd @PUNCT-Comma)(neq ?wrd @PUNCT-Colon)(neq ?wrd @PUNCT-Dot)) then
	    (retract ?f1)
	    (assert (manual_hin_sen1 $?sen ?wrd))
        )
        (bind ?*id* (+ ?*id* 1))
)
;====================================== noun multi-word grouping =======================================
;Added by Shirisha Manju
; ke_cAroM_ora
;The electrons would be moving in orbits about the nucleus just as the planets do around the sun.
;ilektroYna, [nABika ke cAroM ora] kakRA meM cakkara lagAwe hEM, TIka Ese hI jEse [sUrya ke cAroM ora] graha cakkara lagAwe hEM.
(defrule multi_word00
(declare (salience 800))
?f0<-(manual_id-word ?id0 ?w)
(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ?w1&kA|ke)
(manual_id-word ?id2&:(=(+ ?id1 1) ?id2) ?w2&cAroM)
(manual_id-word ?id3&:(=(+ ?id2 1) ?id3) ?w3&ora)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
(not (mng_has_been_grouped ?id3))
=>
        (assert (manual_word_info (head_id ?id0) (word ?w)(vibakthi ?w1 ?w2 ?w3)(group_ids ?id0 ?id1 ?id2 ?id3)))
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
        (assert (mng_has_been_grouped ?id3))
)
;---------------------------------------------------------------------------------------------------------------
;;apane_cAroM_ora, unake_cAroM_ora

;It is mainly through light and the sense of vision that we know and interpret the world around us.
;Man tran :: muKya rUpa se prakASa evaM xqRti kI saMvexanA ke kAraNa hI hama [apane cAroM ora] ke saMsAra ko samaJawe evaM usakI vyAKyA karawe hEM.
;Anu tran :: yaha halake meM se waWA xUraxarSiwA kI saMvexanA meM se pramuKa rUpa se hE ki hama hamAre cAroM ora yuga vyAKyA kara waWA jAnawI hE.
(defrule multi_word0
(declare (salience 800))
?f0<-(manual_id-word ?id0 ?w&apane|unake)
?f1<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ?w1&cAroM)
?f2<-(manual_id-word ?id2&:(=(+ ?id1 1) ?id2)  ?w2&ora)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
=>
        (assert (manual_word_info (head_id ?id0) (word ?w)(vibakthi ?w1 ?w2)(group_ids ?id0 ?id1 ?id2)))
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
)
;---------------------------------------------------------------------------------------------------------------
;kI_wulanA_meM
(defrule kI_[word]_meM
(declare (salience 800))
?f1<-(manual_id-word ?id0 ?noun)
?f2<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) kI)
?f3<-(manual_id-word ?id2&:(=(+ ?id0 2) ?id2) ?w&wulanA)
?f4<-(manual_id-word ?id3&:(=(+ ?id0 3) ?id3) meM)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
(not (mng_has_been_grouped ?id33))
=>
        (assert (manual_word_info (head_id ?id0) (word ?noun)(vibakthi kI ?w meM)(group_ids ?id0 ?id1 ?id2 ?id3)))
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
        (assert (mng_has_been_grouped ?id3))
)
;---------------------------------------------------------------------------------------------------------------
;kI_ora, kI_waraha, kI_apekRA
;To throw a stone upwards, one has to give it an upward push.-->kisI pawWara ko Upara kI ora Pefkane ke lie, hameM use Upara kI ora prakRepiwa karanA padawA hE .
;The resolution of such an electron microscope is limited finally by the fact that electrons can also behave as waves. ---> isa prakAra ke ilektroYna - sUkRmaxarSI kA viBexana BI anwawaH isI waWya xvArA sImiwa howA hE ki ilektroYna BI warafgoM kI waraha vyavahAra kara sakawe hEM.
;Since the electromagnetic force is so much stronger than the gravitational force, it dominates all phenomena at atomic and molecular scales. -- cUfki vixyuwa cumbakIya bala guruwvAkarRaNa bala kI apekRA kahIM aXika prabala howA hE yaha ANvika waWA paramANvIya pEmAne kI saBI pariGatanAoM para CAyA rahawA hE
(defrule kI_[word]
(declare (salience 800))
?f0<-(manual_id-word ?id0 ?w)
?f1<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ?w1&kI)
?f2<-(manual_id-word ?id2&:(=(+ ?id1 1) ?id2)  ?w2&ora|waraha|apekRA)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
=>
        (assert (manual_word_info (head_id ?id0) (word ?w)(root ?w)(vibakthi ?w1 ?w2)(group_ids ?id0 ?id1 ?id2)))
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
)
;---------------------------------------------------------------------------------------------------------------
;ke rUpa meM, ke bAre meM
;;Axya vicArakoM jEse araswU kI bala [ke viRaya meM] saMkalpanA galawa WI -- Early thinkers like Aristotle had wrong ideas about it.
;BOwikI ke anwargawa hama viviXa BOwika pariGatanAoM kI vyAKyA kuCa safkalpanAoM evaM niyamoM [ke paxoM meM] karane kA prayAsa karawe hEM --- In Physics, we attempt to explain diverse physical phenomena in terms of a few concepts and laws. 
;;xqSya prakASa ke sWAna para hama, ilektroYna - puFja kA upayoga kara sakawe hEM.---Instead of visible light, we can use an electron beam.
(defrule ke_[word]_meM
(declare (salience 800))
?f1<-(manual_id-word ?id0 ?noun)
?f2<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ke)
?f3<-(manual_id-word ?id2&:(=(+ ?id0 2) ?id2) ?w&rUpa|bAre|viRaya|AXAra|wOra|paxoM|sWAna|maXya|bIca|pakRa|samparka)
?f4<-(manual_id-word ?id3&:(=(+ ?id0 3) ?id3) meM|para)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
(not (mng_has_been_grouped ?id3))
=>
        (assert (manual_word_info (head_id ?id0) (word ?noun)(vibakthi ke ?w meM)(group_ids ?id0 ?id1 ?id2 ?id3)))
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
        (assert (mng_has_been_grouped ?id3))
)
;---------------------------------------------------------------------------------------------------------------
;ke_liye, ke_lie, ke_pariwaH, ke_sAWa, ke_awirikwa, ke_bAxa ...
;xravyamAna kenxra kI pariBARA [jAnane ke bAxa] , aba hama isa sWiwi meM hEM ki kaNoM ke eka nikAya ke lie isake BOwika mahawva kI vivecanA kara sakeM.
;It is mainly through light and the sense of vision that we know and interpret the world around us.--> muKya rUpa se prakASa evaM xqRti kI [saMvexanA ke kAraNa] hI hama apane cAroM ora ke saMsAra ko samaJawe evaM usakI vyAKyA karawe hEM
;There is no loss of energy due to friction. [ke kAraNa]
;The apparent flattening (oval shape) of the sun at sunset and sunrise is also due to the same phenomenon.--->sUryAswa waWA [sUryoxaya ke samaya] sUrya kA ABAsI capatApana (aNdAkAra Akqwi) BI isI pariGatanA ke kAraNa hI hE.
;The restoring muscular forces again come into play and bring the body to rest.----- >prawyAnayanI peSIya baloM ke kAryarawa hone [ke kAraNa] SarIra virAma avasWA meM A jAwI hE
;EsI gEsoM meM paramANuoM [ke maXya] anwarAla aXika howA hE.
(defrule ke_[word]
(declare (salience 800))
?f1<-(manual_id-word ?id0 ?noun)
?f2<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ke)
?f3<-(manual_id-word ?id2&:(=(+ ?id0 2) ?id2) ?w&pariwaH|lie|liye|sAWa|anwargawa|ora|awirikwa|bAxa|kAraNa|samaya|xvArA|anusAra|aXIna|bIca|nIce|Upara|samAna|pare|BIwara|Age|pICe|paScAwa|paScAw|nikata|sApekRa|maXya|anxara|bAhara|binA|jEsA|pAsa|viruxXa|xOrAna|sahiwa)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
=>
        (assert (manual_word_info (head_id ?id0) (word ?noun)(vibakthi ke ?w)(group_ids ?id0 ?id1 ?id2)))
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
)
;---------------------------------------------------------------------------------------------------------------
;se_pahale, se_Age, se_pICe
;[Before] the discovery of transistor in 1948, such devices were mostly vacuum tubes (also called valves) like the vacuum diode which has two electrodes, viz., anode (often called plate) and cathode; triode which has three electrodes — cathode, plate and grid; tetrode and pentode (respectively with 4 and 5 electrodes). "
;सन् 1948 में ट्राञ्जिस्टर की खोज [से पहले] ऐसी युक्तियाँ अधिकांशतः निर्वात नलिकाएँ ( या वाल्व ) थीं , जैसे निर्वात डायोड जिसमें दो इलेक्ट्रोड ; एनोड ( प्लेट ) तथा कैथोड थोड , प्लेट तथा ग्रिड होते हैं ; टेट्रोड तथा पेंटोड ( क्रमशः 4 तथा 5 इलेक्ट्रोडों के साथ ) .

(defrule se_[word]
(declare (salience 800))
?f1<-(manual_id-word ?id0 ?noun)
?f2<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) se)
?f3<-(manual_id-word ?id2&:(=(+ ?id0 2) ?id2) ?w&pahale|Age|pICe)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
=>
        (assert (manual_word_info (head_id ?id0) (word ?noun)(vibakthi se ?w)(group_ids ?id0 ?id1 ?id2)))
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
)
;---------------------------------------------------------------------------------------------------------------
;What is the origin of the external force on the body?
;[piMda para lage] bAhya bala kA uxgama kyA hE ?
(defrule para_lage
(declare (salience 800))
?f1<-(manual_id-word ?id0 ?noun)
?f2<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) para)
?f3<-(manual_id-word ?id2&:(=(+ ?id0 2) ?id2) ?w&lage)
(not (mng_has_been_grouped ?id1))
(not (mng_has_been_grouped ?id2))
=>
        (assert (manual_word_info (head_id ?id0) (word ?noun)(vibakthi para ?w)(group_ids ?id0 ?id1 ?id2)))
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
)
;---------------------------------------------------------------------------------------------------------------
(defrule pronoun_vib
(declare (salience 800))
?f1<-(manual_id-word ?id0 ?noun&kisI)
?f2<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ne)
(not (mng_has_been_grouped ?id1))
=>
	(bind ?new_mng (remove_character " " (implode$ (create$ ?noun ne)) ""))
        (assert (manual_word_info (head_id ?id0) (word ?new_mng)(group_ids ?id0 ?id1)))
        (assert (mng_has_been_grouped ?id1))
)
;---------------------------------------------------------------------------------------------------------------
;Dispersion takes place because the refractive index of medium for different wavelengths (colors) is different.
;parikRepaNa kA kAraNa yaha hE ki kisI mAXyama kA apavarwanAfka viBinna warafgaxErGyoM  @PUNCT-OpenParenvarNoM @PUNCT-ClosedParen ke lie Binna - Binna howA hE
(defrule word_[hyphen]_word
(declare (salience 800))
?f1<-(manual_id-word ?id0 ?noun)
?f2<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) -)
?f3<-(manual_id-word ?id2&:(=(+ ?id0 2) ?id2) ?w)
(not (mng_has_been_grouped ?id0))
(not (mng_has_been_grouped ?id2))
=>
        (assert (manual_word_info (head_id ?id0) (word ?noun ?w)(group_ids ?id0 ?id2)))
        (assert (mng_has_been_grouped ?id0))
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
)
;---------------------------------------------------------------------------------------------------------------
;Dispersion takes place because the refractive index of medium for different wavelengths (colors) is different.
;parikRepaNa kA kAraNa yaha hE ki kisI mAXyama kA apavarwanAfka viBinna warafgaxErGyoM  @PUNCT-OpenParenvarNoM @PUNCT-ClosedParen ke lie Binna - Binna howA hE @PUNCT-Dot
;Eng sen : Fig. 3.2 (b) shows the position-time graph of such a motion.
;Man sen : isa prakAra kI gawi kA sWiwi - samaya grAPa ciwra 3.2 @PUNCT-OpenParen @b @PUNCT-ClosedParen [meM] xiKalAyA gayA hE  @PUNCT-Dot

;Eng sen :Acceleration, therefore, may result from a change in [speed (magnitude)], a change in direction or changes in both.
;Man sen : awaH yA wo [cAla]  @PUNCT-OpenParen parimANa @PUNCT-ClosedParen [meM] parivarwana @PUNCT-Comma  xiSA meM parivarwana aWavA ina xonoM meM parivarwana se wvaraNa kA uxBava ho sakawA hE  @PUNCT-Dot
(defrule single_vib_Paren
(declare (salience 801))
?f1<-(manual_id-word ?id0 $?noun)
(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) @PUNCT-OpenParen)
(manual_id-word ?id2 @PUNCT-ClosedParen)
(test (or (eq (- ?id2 ?id1) 3)(eq (- ?id2 ?id1) 2) (eq (- ?id2 ?id1) 1)(eq (- ?id2 ?id1) 4)))
?f3<-(manual_id-word ?id3&:(=(+ ?id2 1) ?id3) ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA|waka|hI)
(not (mng_has_been_grouped ?id3))
(not (mng_has_been_grouped ?id0))
(not (vib_added ?id0))
=>
        (assert (manual_word_info (head_id ?id0) (word $?noun)(vibakthi ?vib)(group_ids ?id0 ?id3)))
        (assert (mng_has_been_grouped ?id0))
        (assert (mng_has_been_grouped ?id3))
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 
(defrule get_multi_dbase_facts
(declare (salience 750))
(database_info (meaning ?mng)(database_type multi)(group_ids $? ?id))
(id-cat_coarse ?id ?cat&~verb)
(not (got_multi_word ?mng))
=>
        (assert (got_multi_word ?mng))
;        (bind ?new_mng (remove_character "-" (implode$ (create$ ?mng)) " "))
        (bind ?new_mng (remove_character "_" (implode$ (create$ ?mng)) " "))
        (assert (multi_word ?new_mng))
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;Languages and methods used in communication have kept evolving from prehistoric to [modern times], to meet the growing demands in terms of speed and complexity of information.
;mAnava prAgEwihAsika kAla se [AXunika kAla] waka, saFcAra meM upayoga hone vAlI nayI - nayI BARAoM evaM viXiyoM kI Koja karane ke lie prayawnaSIla rahA hE, wAki saFcAra kI gawi evaM jatilawAoM ke paxoM meM baDawI AvaSyakawAoM kI pUrwi ho sake.
(defrule multi_word_from_multi_dic
(declare (salience 700))
(multi_word ?mng ?mng1 $?)
?f0<-(manual_id-word ?id0 ?mng)
?f1<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ?mng1)
(not (mng_has_been_grouped ?id1))
=>
        (assert (manual_word_info (head_id ?id1) (word ?mng ?mng1)(group_ids ?id0 ?id1)))
        (assert (mng_has_been_grouped ?id0))
        (assert (mng_has_been_grouped ?id1))
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;For the case of [rectilinear motion] with uniform acceleration, a set of simple equations can be obtained.
;ekasamAna wvariwa [sarala reKIya] [gawi ke lie] kuCa sarala samIkaraNa prApwa kie jA sakawe hEM.
(defrule add_mng_with_multi_word
(declare (salience 690))
(multi_word $?mng ?mng1 $?)
?f<-(manual_word_info (head_id ?id) (word $?mng) (group_ids $?ids))
?f1<-(manual_word_info (head_id ?id1) (word ?mng1) (vibakthi ?v $?vb)(group_ids $?ids1))
=>
	(retract ?f1)
	(if (eq ?v 0) then
		(modify ?f (head_id ?id1)(word $?mng ?mng1)(group_ids $?ids $?ids1))
	else
		(modify ?f (head_id ?id1)(word $?mng ?mng1)(vibakthi ?v $?vb)(group_ids $?ids $?ids1))
	)
) 
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 8-9-14
;[Similarly], we can argue that it lies on the median MQ and NR.
;[isI prakAra] hama warka kara sakawe hEM ki yaha mAXyikA MQ Ora NR para BI avasWiwa hogA.
(defrule multi_word_2_from_dic
(declare (salience 650))
(database_info (components ?mng ?mng1)(database_type single)(group_ids ?id))
(id-cat_coarse ?id ?cat&~verb)
?f0<-(manual_id-word ?id0 ?mng)
?f1<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ?mng1)
(not (mng_has_been_grouped ?id0))
=>
        (assert (manual_word_info (head_id ?id0) (word ?mng ?mng1)(group_ids ?id0 ?id1)))
        (assert (mng_has_been_grouped ?id0))
        (assert (mng_has_been_grouped ?id1))
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 4-11-14
;However, atoms on a whole are [electrically] neutral.
;waWApi, paramANu svayaM meM [vExyuwa rUpa se] uxAsIna howe hEM.
(defrule multi_word_3_from_dic
(declare (salience 650))
(database_info (components ?mng ?mng1 ?mng2)(database_type single)(group_ids ?id))
(id-cat_coarse ?id ?cat&~verb)
?f0<-(manual_id-word ?id0 ?mng)
?f1<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ?mng1)
?f2<-(manual_id-word ?id2&:(=(+ ?id0 2) ?id2) ?mng2)
(not (mng_has_been_grouped ?id0))
=>
        (assert (manual_word_info (head_id ?id0) (word ?mng ?mng1 ?mng2)(group_ids ?id0 ?id1 ?id2)))
        (assert (mng_has_been_grouped ?id0))
        (assert (mng_has_been_grouped ?id1))
        (assert (mng_has_been_grouped ?id2))
)
;----------------------------------------------------------------------------------------------------------------
;He made pioneering contributions in the field of optics.
;unhoMne [prakASikI  ke] [kRewra meM] paWa praxarSaka yogaxAna xiyA .
(defrule single_vib
(declare (salience 600))
?f1<-(manual_id-word ?id0 ?noun)
?f2<-(manual_id-word ?id1&:(=(+ ?id0 1) ?id1) ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA|vAlI|vAlA|vAle|waka)
(not (chunk_name-chunk_ids VGF $? ?id1 $?)) ;The details are discussed in Section 12.2.anucCexa 12.2 meM isakI viswAra se vyAKyA [kI] gaI hE.
(not (mng_has_been_grouped ?id0))
(not (mng_has_been_grouped ?id1))
=>
        (assert (manual_word_info (head_id ?id0) (word ?noun )(group_ids ?id0 ?id1)(vibakthi ?vib)))
        (assert (mng_has_been_grouped ?id0))
        (assert (mng_has_been_grouped ?id1))
)
;----------------------------------------------------------------------------------------------------------------
(defrule get_id3
(declare (salience 600))
?f1<-(manual_id-word ?mid ?man_wrd&~.)
(test (neq (sub-string 1 6 (implode$ (create$ ?man_wrd))) "@PUNCT"))
(not (manual_word_info (group_ids $? ?mid $?)))
(not (mng_has_been_grouped ?mid))
=>

        (assert (manual_word_info (head_id ?mid) (word ?man_wrd)(group_ids ?mid)))
)
;----------------------------------------------------------------------------------------------------------------
;Dispersion takes place because the refractive index of medium for different wavelengths (colors) is different.
;parikRepaNa kA kAraNa yaha hE ki kisI mAXyama kA apavarwanAfka viBinna warafgaxErGyoM  @PUNCT-OpenParenvarNoM @PUNCT-ClosedParen [ke] [lie] Binna - Binna howA hE @PUNCT-Dot
;The average velocity can be positive or negative depending upon the sign of the displacement.
;Osawa vega [kA] qNAwmaka yA XanAwmaka honA visWApana ke cihna para nirBara karawA hE .
(defrule single_vib1
(declare (salience 550))
?f1<-(manual_word_info (head_id ?mid0) (word $?noun)(vibakthi $?v)(group_ids $?grp_ids ?id0))
?f2<-(manual_word_info (head_id ?id1&:(=(+ ?id0 1) ?id1))(word ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA|vAlI|vAlA|vAle|waka)(group_ids $?grp_ids1))
(test (neq (integerp (member$ ?vib $?v)) TRUE))
(not (chunk_name-chunk_ids VGF $? ?id1 $?))
(not (vib_added ?id0))
=>
        (retract ?f2)
	(if (eq (implode$ $?v) "0") then
        	(modify ?f1 (vibakthi ?vib)(group_ids $?grp_ids ?id0 $?grp_ids1))
	else
        	(modify ?f1 (vibakthi $?v ?vib)(group_ids $?grp_ids ?id0 $?grp_ids1))
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
