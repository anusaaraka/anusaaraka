
(defrule thread0
(declare (salience 5000))
(id-root ?id thread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dorA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thread.clp 	thread0   "  ?id "  dorA )" crlf))
)

;"thread","N","1.dorA"
;Use the thread for stitching your frock.
;--"2.XArI"
;The marble on the floor has fine threads of green.
;--"3.XArA"
;After controlling the disturbance in the House the Speaker tried to gather the threads of discussion that was going on earlier..
;--"4.cUla"
;The screw has lost all its threads.
;
(defrule thread1
(declare (salience 4900))
(id-root ?id thread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piro))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thread.clp 	thread1   "  ?id "  piro )" crlf))
)

;"thread","VT","1.pironA"
;Would you please thread the needle for me.
;
;LEVEL 
;Headword : thread
;
;Examples --
;
;"thread","N","1.XAgA"
;Use the thread for stitching your frock.
;apanI PrOYka silane ke liye XAge kA iswemAla karo.
;--"2.XArI"
;The marble on the floor has fine threads of green.
;jZamIna para lage saMgamaramara para halkI harI XAriyAz hEM.
;--"3.sUwra"
;After controlling the disturbance in the House the Speaker tried to gather the t
;hreads of discussion that was going on earlier..
;saMsaxa-saBA meM uTe Sora ko niyaMwriwa karane ke bAxa spIkara ne usake pahale ho rahI carcA ke sUwra ko pakadZane kI koSiSa kI.
;--"4.cUla"
;The screw has lost all its threads.
;peMca kI cUla calI gayI hE.
;
;"thread","VT","1.pironA"
;Would you please thread the needle for me.
;kyA wuma mere liye suI meM XAgA piro xoge.
;--"2.dAlanA"
;They were busy threading the film into the projector before.
;ve projEktara meM Pilma dAlane meM vyaswa We.
;--"3.saMBala_kara_calanA"
;He was slowly threading through the crowded street towards the
;Public Library.
;vaha BIdZa BarI sadZaka para XIme-XIme pablika lAyabrerI kI ora saMBala_kara_cala_rahA WA.
;
;ukwa uxAharaNoM meM 'thread' Sabxa kA mUla arWa 'XAgA' uBara kara A rahA hE. anya arWa
;isI ke guNoM se prajaniwa hue lagawe hEM. isakA anwarnihiwa sUwra hogA --
;
;
;anwarnihiwa sUwra ;
;
;
;                          XAgA
;                           |
;                           |
;                   |-------|---------------------|
;          (guNa)    |       |                     |(kriyA)
;    (lambA-mahIna honA) |   (guNa)                |-|------------|
;                  XArI   (ulaJa_jAnA,biKara_jAnA)  |              |
;
;                           |                 XAgA_pironA     (rUpaka)
;                          sUwra                               |
;                                                             calanA
;                                                    (XAge para calane ke samAna)
;                               
;
;
;sUwra : XAgA`[>calanA{saMBala_kara}]                    
