;This file is written by Maha Laxmi and Shirisha Manju

;sort_grp function sorts  the given ids and make each id unique i.e; if i/p [9 3 4 3 5] ==> o/p [3 4 5 9]
(deffunction sort_grp($?ids)
        (bind ?len (length $?ids))
        (bind $?new_ids (create$ ))
        (bind $?ids (sort > $?ids))
        (while (> (length $?ids) 0)
        	(bind ?id (nth$ 1 $?ids))
                (bind $?ids (delete-member$ $?ids ?id))
                (bind $?new_ids (create$ $?new_ids ?id))
        )
       (bind $?ids $?new_ids)
)
;----------------------------------------------------------------------------------------------------------------
;It is mainly through light and the sense of vision that we know and interpret the world around us.
;Man tran :: muKya rUpa se prakASa evaM xqRti kI saMvexanA ke kAraNa hI hama [apane cAroM ora] ke saMsAra ko samaJawe evaM usakI vyAKyA karawe hEM.
;Anu tran :: yaha halake meM se waWA xUraxarSiwA kI saMvexanA meM se pramuKa rUpa se hE ki hama hamAre cAroM ora yuga vyAKyA kara waWA jAnawI hE.
(defrule multi_word0
(declare (salience 110))
?f0<-(man_id-word-cat ?id0 ?w&apane|unake ?cat)
?f1<-(man_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) ?w1&cAroM ?)
?f2<-(man_id-word-cat ?id2&:(=(+ ?id1 1) ?id2)  ?w2&ora ?)
(id-node-word-root ?id0 ? $?word1 - $?root)
(not (id-word ? surrounding))
=>
        (retract ?f0 ?f1 ?f2)
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat ?w  - $?root - ?w1 ?w2 - ?id0 ?id1 ?id2))
)
;----------------------------------------------------------------------------------------------------------------
;To throw a stone upwards, one has to give it an upward push.-->kisI pawWara ko Upara kI ora Pefkane ke lie, hameM use Upara kI ora prakRepiwa karanA padawA hE .
;The resolution of such an electron microscope is limited finally by the fact that electrons can also behave as waves. ---> isa prakAra ke ilektroYna - sUkRmaxarSI kA viBexana BI anwawaH isI waWya xvArA sImiwa howA hE ki ilektroYna BI warafgoM kI waraha vyavahAra kara sakawe hEM.
(defrule multi_word1
(declare (salience 110))
?f0<-(man_id-word-cat ?id0 ?w ?cat)
?f1<-(man_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) ?w1&kI ?)
?f2<-(man_id-word-cat ?id2&:(=(+ ?id1 1) ?id2)  ?w2&ora|waraha ?)
(id-node-word-root ?id0 ? $?word1 - $?root)
=>
        (retract ?f0 ?f1 ?f2)
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat ?w  - $?root - ?w1 ?w2 - ?id0 ?id1 ?id2))
)
;----------------------------------------------------------------------------------------------------------------
;bahuwa sI sWiwiyoM meM , jEse kisI maSIna , jisameM viBinna [kala purje] gawi karawe hoM , meM GarRaNa kI qNAwmaka BUmikA howI hE .
;na wo, na hI, xUsarI ora,kI ora ,hamArI ora
(defrule multi_word2
(declare (salience 100))
?f1<-(man_id-word-cat ?id0 ?w&na|xUsarI|cAroM|ya|kI|hamArI|kala ?cat)
?f2<-(man_id-word-cat ?id1&:(=(+ ?id0 1) ?id1)  ?w1&wo|hI|ora|purje ?)
(not (retract_manual_fact ?id0))
(not (retract_manual_fact ?id1))
=>
        (retract ?f1 ?f2)
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat ?w ?w1 - ?w ?w1 - 0 - ?id0 ?id1))
)
;----------------------------------------------------------------------------------------------------------------
;अबतक
;However, we shall restrict our discussion to the special case of curved surfaces, that is, spherical surfaces.
;xUsarI sWiwi meM kAra pahale @O se [@P waka] jAwI hE Ora Pira @P se @Q para vApasa A jAwI hE
(defrule multi_word3
(declare (salience 100))
?f1<-(man_id-word-cat ?id0 ?w ?cat)
?f2<-(man_id-word-cat ?id1&:(=(+ ?id0 1) ?id1)  ?w1&waka ?)
(not (retract_manual_fact ?id0))
(not (retract_manual_fact ?id1))
(test (eq (member$ ?w (create$ A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)) FALSE))
=>
        (retract ?f1 ?f2)
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat ?w ?w1 - ?w  - 0 - ?id0 ?id1))
)
;----------------------------------------------------------------------------------------------------------------
;ke rUpa meM, ke bAre meM
;;Axya vicArakoM jEse araswU kI bala [ke viRaya meM] saMkalpanA galawa WI -- Early thinkers like Aristotle had wrong ideas about it.
;BOwikI ke anwargawa hama viviXa BOwika pariGatanAoM kI vyAKyA kuCa safkalpanAoM evaM niyamoM [ke paxoM meM] karane kA prayAsa karawe hEM --- In Physics, we attempt to explain diverse physical phenomena in terms of a few concepts and laws. 
;;xqSya prakASa ke sWAna para hama, ilektroYna - puFja kA upayoga kara sakawe hEM.---Instead of visible light, we can use an electron beam.
(defrule ke_[word]_meM
(declare (salience 90))
?f1<-(man_id-word-cat ?id0 $?noun ?cat)
(id-node-word-root ?id0 ? $? - $?root)
?f2<-(man_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) ke ?)
?f3<-(man_id-word-cat ?id2&:(=(+ ?id0 2) ?id2) ?w&rUpa|bAre|viRaya|AXAra|wOra|paxoM|sWAna ?)
?f4<-(man_id-word-cat ?id3&:(=(+ ?id0 3) ?id3) meM|para ?)
(not (retract_manual_fact ?id0))
(not (retract_manual_fact ?id1))
=>
        (retract ?f1 ?f2 ?f3 ?f4)
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - ke ?w meM - ?id0 ?id1 ?id2 ?id3))
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule kI_[word]_meM
(declare (salience 90))
?f1<-(man_id-word-cat ?id0 $?noun ?cat)
(id-node-word-root ?id0 ? $? - $?root)
?f2<-(man_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) kI ?)
?f3<-(man_id-word-cat ?id2&:(=(+ ?id0 2) ?id2) ?w&wulanA ?)
?f4<-(man_id-word-cat ?id3&:(=(+ ?id0 3) ?id3) meM ?)
(not (retract_manual_fact ?id0))
(not (retract_manual_fact ?id1))
=>
        (retract ?f1 ?f2 ?f3 ?f4)
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - kI ?w meM - ?id0 ?id1 ?id2 ?id3))
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (17-10-12)
;Since the electromagnetic force is so much stronger than the gravitational force, it dominates all phenomena at atomic and molecular scales. -- cUfki vixyuwa cumbakIya bala guruwvAkarRaNa bala kI apekRA kahIM aXika prabala howA hE yaha ANvika waWA paramANvIya pEmAne kI saBI pariGatanAoM para CAyA rahawA hE
(defrule kI_[word]
(declare (salience 80))
?f1<-(man_id-word-cat ?id0 $?noun ?cat)
(id-node-word-root ?id0 ? $? - $?root)
?f2<-(man_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) kI ?)
?f3<-(man_id-word-cat ?id2&:(=(+ ?id0 2) ?id2) ?w&apekRA ?)
(not (retract_manual_fact ?id0))
(not (retract_manual_fact ?id1))
=>
        (retract ?f1 ?f2 ?f3)
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - kI ?w - ?id0 ?id1 ?id2))
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
?f1<-(man_id-word-cat ?id0 $?noun ?cat)
(id-node-word-root ?id0 ? $? - $?root)
?f2<-(man_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) ke ?)
?f3<-(man_id-word-cat ?id2&:(=(+ ?id0 2) ?id2) ?w&pariwaH|lie|liye|sAWa|anwargawa|ora|awirikwa|bAxa|kAraNa|samaya|xvArA|anusAra|aXIna|bIca|nIce|Upara|samAna|kAraNa ?)
(not (retract_manual_fact ?id0))
(not (retract_manual_fact ?id1))
=>
 	(retract ?f1 ?f2 ?f3)
 	(assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - ke ?w - ?id0 ?id1 ?id2))
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (28-08-12)
;Dispersion takes place because the refractive index of medium for different wavelengths (colors) is different.
;parikRepaNa kA kAraNa yaha hE ki kisI mAXyama kA apavarwanAfka viBinna warafgaxErGyoM  @PUNCT-OpenParenvarNoM @PUNCT-ClosedParen ke lie Binna - Binna howA hE
(defrule word_[hyphen]_word
(declare (salience 81))
?f1<-(man_id-word-cat ?id0 $?noun ?cat)
(id-node-word-root ?id0 ? $? - $?root)
?f2<-(man_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) - SYM)
?f3<-(man_id-word-cat ?id2&:(=(+ ?id0 2) ?id2) ?w ?)
(id-node-word-root ?id2 $? - $?root1)
(not (retract_manual_fact ?id0))
(not (retract_manual_fact ?id1))
(not (retract_manual_fact ?id2))
=>
        (retract ?f1 ?f2 ?f3)
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun ?w  - $?root1 - 0 - ?id0 ?id1 ?id2))
)
;----------------------------------------------------------------------------------------------------------------
;Axya vicArakoM jEse araswU kI bala ke viRaya meM saMkalpanA galawa WI -- Early thinkers like Aristotle had wrong ideas about it.
;yaxi Apa apanI BujAoM ko Pira SarIra ke pAsa le AyeM wo koNIya cAla Pira se baDZa jAwI hE -- If you bring back your arms closer to your body, the angular speed increases again. 
(defrule single_vib
(declare (salience 70))
?f1<-(man_id-word-cat ?id0 $?noun ?cat)
(id-node-word-root ?id0 ? $? - $?root)
?f2<-(man_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA|vAlI|vAlA|vAle ?c&~VM)
(not (retract_manual_fact ?id0))
(not (retract_manual_fact ?id1))
=>
 	(retract ?f1 ?f2)
 	(assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - ?vib - ?id0 ?id1))
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;Dispersion takes place because the refractive index of medium for different wavelengths (colors) is different.
;parikRepaNa kA kAraNa yaha hE ki kisI mAXyama kA apavarwanAfka viBinna warafgaxErGyoM  @PUNCT-OpenParenvarNoM @PUNCT-ClosedParen ke lie Binna - Binna howA hE @PUNCT-Dot
;Eng sen : Fig. 3.2 (b) shows the position-time graph of such a motion.
;Man sen : isa prakAra kI gawi kA sWiwi - samaya grAPa ciwra 3.2 @PUNCT-OpenParen @b @PUNCT-ClosedParen [meM] xiKalAyA gayA hE  @PUNCT-Dot

;Eng sen :Acceleration, therefore, may result from a change in [speed (magnitude)], a change in direction or changes in both.
;Man sen : awaH yA wo [cAla]  @PUNCT-OpenParen parimANa @PUNCT-ClosedParen [meM] parivarwana @PUNCT-Comma  xiSA meM parivarwana aWavA ina xonoM meM parivarwana se wvaraNa kA uxBava ho sakawA hE  @PUNCT-Dot
(defrule single_vib1
(declare (salience 70))
?f1<-(man_id-word-cat ?id0 $?noun ?cat)
?f0<-(head_id-grp_ids ?h $?d ?id0 $?d1)
;?f0<-(head_id-grp_ids ?h ?id0 $?d1)
?f4<-(manual_id-node-word-root-tam ?h ?c $?noun1 - $?root - $?vib1)
(id-node-word-root ?id0 ? $? - $?root)
(man_id-word-cat ?id1&:(=(+ ?id0 1) ?id1) @PUNCT-OpenParen ?)
(man_id-word-cat ?id2 @PUNCT-ClosedParen ?)
(test (> ?id2 ?id1))
?f3<-(man_id-word-cat ?id3&:(=(+ ?id2 1) ?id3) ?vib&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA ?)
?f2<-(head_id-grp_ids ?h1 $?d2 ?id3 $?d3)
;?f2<-(head_id-grp_ids ?h1  ?id3 $?d3)
(not (retract_manual_fact ?id0))
=>
	(retract ?f1 ?f3 ?f0 ?f2 ?f4)
	(assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - ?vib - ?id0 ?id3))
	(assert (head_id-grp_ids ?h $?d ?id0 $?d1 $?d2 ?id3))
;	(assert (head_id-grp_ids ?h ?id0 $?d1 ?id3))
 	(assert (manual_id-node-word-root-tam ?h ?c $?noun1 - $?root - $?vib1 ?vib))
	(if (neq (length $?d3) 0) then
		(assert (head_id-grp_ids ?h1 $?d3))
	)
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju(19-9-12)
;We have seen earlier that the magnitude of displacement may be different from the actual path length.
;hama yaha xeKa cuke hEM ki visWApana kA parimANa vAswavika [paWa - lambAI se] Binna ho sakawA hE.
(defrule single_vib2
(declare (salience 65))
?f0<-(manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - $?vib - $?ids ?id)
?f1<-(man_id-word-cat ?id1&:(=(+ ?id 1) ?id1) ?vib1&kA|ne|para|kI|ke|ko|se|meM|lie|jEse|xvArA|waka ?)
=>
	(retract ?f0 ?f1)
	(if (eq (implode$ (create$ $?vib)) 0) then
		(assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - ?vib1 - $?ids ?id ?id1))
	else
		(bind ?n_vib (create$ $?vib ?vib1))
		(assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - ?n_vib - $?ids ?id ?id1))
	)
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju(10-11-12)
;Although acceleration can vary with time, our study in this chapter will be restricted to motion with constant acceleration.
;yaxyapi gawimAna vaswu kA wvaraNa [samaya ke sAWa - sAWa] baxala sakawA hE , paranwu suviXA ke lie isa aXyAya meM gawi sambanXI hamArA aXyayana mAwra sWira wvaraNa waka hI sImiwa rahegA.
(defrule single_vib3
(declare (salience 65))
?f0<-(manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - $?vib - $?ids ?id)
(not (id-node-word-root ?id $?))
?f1<-(man_id-word-cat ?id1&:(=(+ ?id 1) ?id1) - SYM)
?f2<-(man_id-word-cat ?id2&:(=(+ ?id 2) ?id2) ?w ?)
=>
        (retract ?f0 ?f1 ?f2)
        (bind $?n_vib (create$ $?vib ?w))
        (assert (manual_id-cat-word-root-vib-grp_ids ?id0 ?cat $?noun - $?root - $?n_vib - $?ids ?id ?id1 ?id2))
)
;----------------------------------------------------------------------------------------------------------------
(defrule verb_grouping
(declare (salience 60))
(manual_id-node-word-root-tam  ?m_h_id   VGF|VGNN|VGNF  $?mng - $?root - $?tam)
(head_id-grp_ids ?m_h_id ?mid $?ids)
(man_id-word-cat ?mid $?word ?cat)
(not (lwg_done ?mid))
(not (retract_manual_fact ?mid))
=>
;	(assert (manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?word - $?root - $?tam - ?mid $?ids))
	(assert (manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?mng - $?root - $?tam - ?mid $?ids))
        (loop-for-count (?i 1 (length (create$ ?mid $?ids)))
		        (bind ?j (nth$ ?i (create$ ?mid $?ids)))
			(assert (retract_manual_fact ?j))
	)
         (assert (lwg_done ?mid))
) 
;----------------------------------------------------------------------------------------------------------------
;She turned to face him. --- vaha usakA sAmanA karane ke lie mudI  @PUNCT-OpenParen GUmI @PUNCT-ClosedParen @PUNCT-Dot
(defrule change_remaining_facts
(declare (salience 55))
(man_id-word-cat ?mid $?word ?cat)
(id-node-word-root ?mid ? $?word1 - $?root)
(not (retract_manual_fact ?mid))
(test (eq (member$ $?word (create$ @PUNCT-Dot @PUNCT-QuestionMark @PUNCT-Exclamation )) FALSE)) 
=>
	(assert (manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?word1 - $?root - 0 - ?mid))
)
;----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju(08-10-12)
;Riot police beat back the crowds of demonstrators.---- praxarSanakAriyoM kI BIda ko pulisa ne [pICe] Xakela xiyA
(defrule change_remaining_facts1
(declare (salience 54))
(man_id-word-cat ?mid $?word ?cat)
(not (manual_id-cat-word-root-vib-grp_ids ? ? $? - $? - $? - $? ?mid $?))
(not (retract_manual_fact ?mid))
=>
        (assert (manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?word - $?word - 0 - ?mid))
)
;----------------------------------------------------------------------------------------------------------------
;Anu tran : [isa prakAra] prekRaka walI para UparI sawaha para waWA PUla lAla rafga se inxraXanuRa ko xeKawA hE.
;Eng sen  : Though the reason for [appearance] of spectrum is now common knowledge, it was a matter of much debate in the history of physics.
;Man tran : yaxyapi spektrama kA [xiKAI xenA] aba eka sAmAnya jFAna kI bAwa hE @PUNCT-Comma  paranwu BOwikI ke iwihAsa meM yaha eka bade vAxa - vivAxa kA viRaya WA.

;Eng sen :Presently, we are dealing with motion along a straight line (also called rectilinear motion) only.
;Man tran :aXyAya meM hama eka [sarala reKA ke] anuxiSa sarala gawi  @PUNCT-OpenParen jise hama reKIya gawi kahawe hEM @PUNCT-ClosedParen  ke viRaya meM hI paDefge 
;Anu tran : aBI aBI, hama sirPa eka sIXI lAina ke kinAre (BI sIXI reKAoM se GirA huA gawi bulA) gawi se sambanXiwa .

;Eng sen : It is [mainly] through light and the sense of vision that we know and interpret the world around us.
;Man tran : [muKya rUpa se] prakASa evaM xqRti kI [saMvexanA ke kAraNa] hI hama [apane cAroM ora] ke saMsAra ko samaJawe evaM usakI vyAKyA karawe hEM.
;Anu tran : yaha halake meM se waWA xUraxarSiwA kI saMvexanA meM se pramuKa rUpa se hE ki hama hamAre cAroM ora yuga vyAKyA kara waWA jAnawI hE.

;Anu tran : warafga kI upasWiwi ke lie kAraNa sAXAraNa pratiBA aba hE magara, vaha BOwika vijFAna ke vqwwAnwa meM bahuwa bahasa kA viRaya WA.
;Eng sen : There are two things that we can intuitively mention about light from common experience.
;Man tran :apane sAmAnya anuBava se hama prakASa ke viRaya meM apanI anwarxqRti xvArA xo bAwoM kA [ulleKa kara] sakawe hEM.
(defrule grouping_using_dic
(declare (salience 50))
(anu_id-manual_ids-sep-mng ? $?mids - $?mng)
?f0<-(man_id-word-cat ?mid ?w&~kara&~ho ?cat&~VIB)
(test (member$ ?mid $?mids))
(not (man_id-word-cat ?mid1&:(and (member$ ?mid1 $?mids) (> ?mid1 ?mid))  ?w1&~kara&~ho ?cat1&~VIB))
(not (grp_head_id-grp_ids-mng ? - $? ?mid $? - $?))
=>
        (retract ?f0)
        (assert (man_id-word-cat ?mid $?mng ?cat))
        (assert (grp_head_id-grp_ids-mng ?mid - $?mids - $?mng))
)
;----------------------------------------------------------------------------------------------------------------
(defrule add_grp_mng
(declare (salience 5))
?f1<-(grp_head_id-grp_ids-mng ?mid - $?pre ?mid1 $?post - $?mng)
?f0<-(manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?word - $?root - $?vib - $?grp)
?f2<-(manual_id-cat-word-root-vib-grp_ids ?mid1 ?cat1 $?word1 - $?root1 - $?vib1 - $?grp1)
(test (neq ?mid ?mid1))
(not (contro_fact_for_grp_mng ?mid1))
=>
	(retract ?f0 ?f2)	
	(assert (contro_fact_for_grp_mng ?mid1))
	(bind $?s_grp (create$ ))
	(bind $?grp_ids (sort > $?grp $?grp1))
	(loop-for-count (?i 1 (length $?grp_ids))
                (bind ?j (nth$ ?i $?grp_ids))
                (if (eq (member$ ?j $?s_grp) FALSE) then
                        (bind $?s_grp (create$ $?s_grp  ?j))
                )	
        )
 	(bind $?ids (create$ $?pre ?mid1 $?post))
	(if (> ?mid ?mid1) then
		(if (eq ?mid (nth$ (length $?ids) $?ids)) then
			(assert (last_id-word-root-vib ?mid $?word - $?root - $?vib))
		)
	else
		(if (eq ?mid1 (nth$ (length $?ids) $?ids)) then
                        (assert (last_id-word-root-vib ?mid1 $?word1 - $?root1 - $?vib1))
                )
	)
	(assert (manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?mng - $?mng - $?vib - $?s_grp))
)
;----------------------------------------------------------------------------------------------------------------
(defrule modify_root_for_dic_grp
(grp_head_id-grp_ids-mng ?hid - $?ids ?last_id - $?mng)
?f0<-(manual_id-cat-word-root-vib-grp_ids ?hid ?cat $?mng - $?mng - $?vib - $?grp_ids)
(last_id-word-root-vib ?last_id $? - $? - $?vib1)
(id-node-word-root ?last_id ? $?word - $?root)
(not (modified_root ?hid))
=>
	(retract ?f0 )
	(bind $?n_wrd (subseq$ $?mng 1 (- (length $?mng) (length $?word))  ))
	(bind $?n_wrd (create$ $?n_wrd $?root))
	(assert (manual_id-cat-word-root-vib-grp_ids ?hid ?cat $?mng - $?n_wrd - $?vib1 - $?grp_ids))
	(assert (modified_root ?hid))
)

