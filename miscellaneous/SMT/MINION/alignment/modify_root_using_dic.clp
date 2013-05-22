;This file is added by Shirisha Manju (28-03-13)

;The scientific method involves several interconnected steps: Systematic observations, controlled experiments, qualitative and quantitative reasoning, mathematical modelling, prediction and verification or falsification of theories.'vEjFAnika viXi' meM bahuwa se anwaHsambanXa - paxa: vyavasWiwa prekRaNa, niyanwriwa prayoga, guNAwmaka waWA mAwrAwmaka vivecanA, gaNiwIya prawirUpaNa, BaviRya kaWana, sixXAnwoM kA sawyApana aWavA anyaWAkaraNa sammiliwa howe hEM.
(defrule remove_punc_from_head_ids_fact
(declare (salience 200))
?f0<-(head_id-grp_ids ?h $?pre ?id $?post)
(man_id-word-cat ?id ?w&@PUNCT-Comma|@PUNCT-Colon|@PUNCT-SingleQuote ?)
=>
	(retract ?f0)
	(assert (head_id-grp_ids ?h $?pre $?post))
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
;----------------------------------------------------------------------------------------------------------------
;The strong nuclear force binds protons and neutrons in a nucleus. nABika meM prabala nABikIya bala protoYnoM waWA nyUtroYnoM ko [bAnXe raKawA hE].
;We shall discuss uniform circular motion in some detail.hama [ekasamAna vqwwIya gawi] kI kuCa viswAra se carcA karezge.
(defrule add_grp_mng
(declare (salience 100))
(manual_ids-sep-mng  $?pre ?mid1 $?post ?mid - $?mng)
?f0<-(manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?word - $?root - $?vib - $?grp)
?f2<-(manual_id-cat-word-root-vib-grp_ids ?mid1 ?cat1 $?word1 - $?root1 - $?vib1 - $?grp1)
(not (contrl_fact_for_grp_mng ?mid1))
=>
        (retract ?f0 ?f2)
        (assert (control_fact_for_grp_mng ?mid1))
        (bind $?s_grp (create$ ))
        (bind $?grp_ids (sort > $?grp $?grp1))
        (loop-for-count (?i 1 (length $?grp_ids))
                (bind ?j (nth$ ?i $?grp_ids))
                (if (eq (member$ ?j $?s_grp) FALSE) then
                        (bind $?s_grp (create$ $?s_grp  ?j))
                )
        )
      (assert (manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?mng - $?mng - $?vib - $?s_grp))
)
;----------------------------------------------------------------------------------------------------------------
;Classical Physics deals mainly with macroscopic phenomena and includes subjects like Mechanics, Electrodynamics, Optics and Thermodynamics.
;cirasammawa BOwikI ke anwargawa [muKya rUpa se] sWUla pariGatanAoM para vicAra kiyA jAwA hE  @PUNCT-Comma  isameM yAnwrikI  @PUNCT-Comma  vExyuwa gawikI  @PUNCT-Comma  prakASikI waWA URmAgawikI jEse viRaya sammiliwa howe hEM.
(defrule add_grp_mng1
(declare (salience 95))
(manual_ids-sep-mng  $?pre ?mid1 $?post ?mid - $?mng)
?f0<-(manual_id-cat-word-root-vib-grp_ids ?id ?cat $?word - $?root - $?vib - $?grp ?mid)
(test (neq (implode$ $?vib) "0"))
?f2<-(manual_id-cat-word-root-vib-grp_ids ?mid1 ?cat1 $?word1 - $?root1 - $?vib1 - $?grp1)
(not (contrl_fact_for_grp_mng ?mid1))
(test (neq ?mid1 ?id))
=>
        (retract ?f0 ?f2)
        (assert (control_fact_for_grp_mng ?mid1))
        (bind $?s_grp (create$ ))
        (bind $?grp_ids (sort > $?grp ?mid $?grp1))
        (loop-for-count (?i 1 (length $?grp_ids))
                (bind ?j (nth$ ?i $?grp_ids))
                (if (eq (member$ ?j $?s_grp) FALSE) then
                        (bind $?s_grp (create$ $?s_grp  ?j))
                )
        )
      (assert (manual_id-cat-word-root-vib-grp_ids ?id ?cat $?mng - $?mng - 0 - $?s_grp))
)
;----------------------------------------------------------------------------------------------------------------
(defrule modify_root_for_dic_grp
(declare (salience 90))
(manual_ids-sep-mng  $?ids ?hid  - $?mng)
?f0<-(manual_id-cat-word-root-vib-grp_ids ?hid ?cat $?mng - $?mng - $?vib - $?grp_ids)
(id-node-word-root ?hid ? $?word - $?root)
(not (modified_root ?hid))
=>
        (retract ?f0 )
        (bind $?n_wrd (subseq$ $?mng 1 (- (length $?mng) (length $?word))  ))
        (bind $?n_wrd (create$ $?n_wrd $?root))
        (assert (manual_id-cat-word-root-vib-grp_ids ?hid ?cat $?mng - $?n_wrd - $?vib - $?grp_ids))
        (assert (modified_root ?hid))
)
;----------------------------------------------------------------------------------------------------------------
;For example, the elastic spring force arises due to the net attraction/repulsion between the neighbouring atoms of the spring when the spring is elongated/compressed. uxAharaNa ke lie jaba koI kamAnI xIrGiwa/sampIdiwa kI jAwI hE waba kamAnI ke nikatavarwI paramANuoM ke bIca uwpanna neta AkarRaNa/prawikarRaNa bala ke kAraNa, prawyAsWa [kamAnI bala] uwpanna howA hE.
(defrule modify_group_mng_and_manual_ids_fact
(declare (salience 80))
(manual_ids-sep-mng  $?ids ?hid  - $?mng ?w)
(manual_id-cat-word-root-vib-grp_ids ?hid ?cat $?mng ?w - $?root - $?vib - ?id0 $?grp_ids ?id1)
?f0<-(head_id-grp_ids ?h $?d ?id0 $?d1)
?f1<-(head_id-grp_ids ?h1 $?d2 ?id1)
?f2<-(manual_id-node-word-root-tam ?h ?c $?w1 $?mng - $?r - $?v)
?f3<-(manual_id-node-word-root-tam ?h1 ?c1 $?w2 - $?r1 - $?v1)
(not (modified_head ?h1))
=>
	(retract ?f0 ?f1 ?f2 ?f3)
	(assert (head_id-grp_ids ?h1 ?id0 $?d1 $?d2 ?id1))
	(assert (manual_id-node-word-root-tam ?h1 ?c1 $?mng ?w - $?root - $?vib))
	(if (neq (length $?w1) 0) then
		(assert (manual_id-node-word-root-tam ?h ?c $?w1 - $?w1 - $?v))
	)
        (if (neq (length $?d) 0) then
                (assert (head_id-grp_ids ?h $?d))
        )
	(assert (modified_head ?h1))
)
;----------------------------------------------------------------------------------------------------------------
;Electromagnetic radiation belonging to this region of the spectrum (wavelength of about 400 nm to 750 nm) is called light.
;isa vExyuwacuMbakIya spektrama se saMbaMXiwa [vikiraNoM] (waraMgaxErGya lagaBaga 400 @nm se 750 @nm) ko prakASa kahawe hEM.
;You will read about vectors in the next chapter. Apa [saxiSoM] ke viRaya meM agale aXyAya meM paDezge
(defrule modify_root_for_plural_using_dic
(declare (salience 60))
?f0<-(manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?word - $?r ?root - $?vib - $?ids)
(test (or (eq (sub-string (- (length ?root) 1) (length ?root) ?root) "oM")(eq (sub-string (- (length ?root) 1) (length ?root) ?root) "ez")))
(id-org_wrd-root-dbase_name-mng ? ? ? ? ?mng)
(test (or (eq (sub-string 1 (- (length ?mng) 1) ?mng) (sub-string 1 (- (length ?root) 2) ?root))(eq (sub-string 1 (length ?mng) ?mng) (sub-string 1 (- (length ?root) 2) ?root))))
=>
	(retract ?f0)
	(assert (manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?word - $?r ?mng - $?vib - $?ids))
)
;----------------------------------------------------------------------------------------------------------------
;Like the gravitational force, electromagnetic force acts over large distances and does not need any intervening medium.
;guruwvAkarRaNa bala kI BAnwi vixyuwa cumbakIya bala BI kAPI lambI [xUriyoM] waka kAryarawa rahawA hE waWA ise kisI maXyavarwI mAXyama kI BI AvaSyakawA nahIM howI 
(defrule modify_root_for_plural_using_dic1
(declare (salience 60))
?f0<-(manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?word - $?r ?root - $?vib - $?ids)
(test (eq (sub-string (- (length ?root) 2) (length ?root) ?root) "yoM"))
(id-org_wrd-root-dbase_name-mng ? ? ? ? ?mng)
(test (or (eq (sub-string 1 (- (length ?mng) 1) ?mng) (sub-string 1 (- (length ?root) 4) ?root))(eq (sub-string 1 (length ?mng) ?mng) (sub-string 1 (- (length ?root) 3) ?root))))
=>
        (retract ?f0)
        (assert (manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?word - $?r ?mng - $?vib - $?ids))
)
;----------------------------------------------------------------------------------------------------------------
;Table1.1 lists some of the great physicists, their major contribution and the country of origin.
;sAraNI 1.1 meM kuCa mahAna [BOwika vijFAniyoM], unake pramuKa yogaxAnoM waWA unake mUla xeSoM kI sUcI xI gaI hE.
(defrule modify_root_for_plural_using_dic_for_multi_word
(declare (salience 50))
?f0<-(manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?word - $?r ?root - $?vib - $?ids)
(test (eq (sub-string (- (length ?root) 2) (length ?root) ?root) "yoM"))
(id-org_wrd-root-dbase_name-mng ? ? ? ? ?m ?mng)
(test (or (eq (sub-string 1 (- (length ?mng) 1) ?mng) (sub-string 1 (- (length ?root) 4) ?root))(eq (sub-string 1 (length ?mng) ?mng) (sub-string 1 (- (length ?root) 3) ?root))))
(manual_id-cat-word-root-vib-grp_ids =(- ?mid 1) ?c ?m - $?)
=>
        (retract ?f0)
        (assert (manual_id-cat-word-root-vib-grp_ids ?mid ?cat $?word - $?r ?mng - $?vib - $?ids))
)
;----------------------------------------------------------------------------------------------------------------
;You will find that the path of the beam inside the water shines brightly.
;Apa xeKezge ki jala [ke anxara] kiraNa - puFja kA paWa camakIlA xiKAI xewA hE
(defrule grouping_using_dic_for_vib
(declare (salience 4))
(manual_ids-sep-mng  ?id $?d ?id1 - $?mng)
?f0<-(manual_id-cat-word-root-vib-grp_ids ?mid ?n $?word - $?root - $?vib - $?ids ?id)
(test (neq (implode$ $?vib) "0"))
?f1<-(manual_id-cat-word-root-vib-grp_ids ?mid1 ? $? - $? - $? - $?o ?id1)
=>
        (retract ?f0 ?f1)
        (bind $?grp_ids (sort > $?ids ?id $?d ?id1))
        (assert (manual_id-cat-word-root-vib-grp_ids ?mid ?n $?word - $?root - $?mng - $?grp_ids))
)
;----------------------------------------------------------------------------------------------------------------
;Suggested by Chaitanya Sir(14-05-13)
;My father will see to that. mere [piwAjI] sabako xeKa lezge.
(defrule modify_root_for_jI
(declare (salience 4))
?f0<-(manual_id-cat-word-root-vib-grp_ids ?mid ?n $?word - ?root - $?vib - $?ids)
(test (eq (sub-string (- (length ?root) 1) (length ?root) ?root) "jI"))
(id-org_wrd-root-dbase_name-mng ? ? ? ? ?mng)
(test (eq ?mng (string-to-field (sub-string 1 (- (length ?root) 2) ?root))))
=>
	(retract ?f0)
	(assert (manual_id-cat-word-root-vib-grp_ids ?mid ?n $?word - ?mng - $?vib - $?ids))
)
;----------------------------------------------------------------------------------------------------------------
