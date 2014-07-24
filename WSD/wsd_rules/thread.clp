
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

;@@@ Added by Prachi Rathore[10-3-14]
;Unfortunately my attention wandered for a moment and I lost the thread of  what I was saying.[cambridge]
;दुर्भाग्य से मेरा ध्यान एक क्षण के लिये भटका और मैंने उस का क्रम खोया जो मैं कह रहा था . 
(defrule thread2
(declare (salience 5050))
(id-root ?id thread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(not(id-root ?id1 web))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id krama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thread.clp 	thread2   "  ?id "  krama )" crlf))
)   


;@@@ Added by Prachi Rathore[10-3-14]
;The waiters threaded between the crowded tables.[oald]
;वेटर ने भीड वाली मेजों के बीच रास्ता बनाया . 
;Waiters threaded through the crowd.[oald]
;वेटर ने भीड में से रास्ता बनाया . 
(defrule thread3
(declare (salience 5000))
(id-root ?id thread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-through_saMbanXI  ?id ?)(kriyA-between_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAswA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thread.clp 	thread3   "  ?id "  rAswA_banA )" crlf))
)
   

;@@@ Added by Prachi Rathore[10-3-14]
;a silvery thread of water[oald]
;पानी की एक चाँदी के सदृश धार . 
(defrule thread4
(declare (salience 5100))
(id-root ?id thread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 water|smoke)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thread.clp 	thread4   "  ?id "  XAra )" crlf))
)  

;@@@ Added by Prachi Rathore[10-3-14]
;The screw has lost all its threads.[old sentence]
;peMca kI cUla calI gayI hE.
(defrule thread5
(declare (salience 5000))
(id-root ?id thread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id2 ?id)
(kriyA-subject  ?id2 ?id1)
(id-root ?id1 screw)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thread.clp 	thread5   "  ?id "   cUla)" crlf))
)


;@@@ Added by Prachi Rathore[10-3-14]
;Thread of plant. [shiksharthi-kosh]
;पौधे का तंतु
(defrule thread6
(declare (salience 5100))
(id-root ?id thread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 plant)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waMwu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thread.clp 	thread6   "  ?id "  waMwu )" crlf))
)  


;@@@ Added by Prachi Rathore[10-3-14]
;Thread of bulb. [shiksharthi-kosh]
;बल्ब का तार
(defrule thread7
(declare (salience 5100))
(id-root ?id thread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 bulb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thread.clp 	thread7   "  ?id "  wAra )" crlf))
)  

;@@@ Added by Prachi Rathore[10-3-14]
;;They were busy threading the film into the projector before.[old sentence]
;ve projEktara meM Pilma dAlane meM vyaswa We.
(defrule thread8
(declare (salience 5100))
(id-root ?id thread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 film)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thread.clp 	thread8   "  ?id " dAla )" crlf))
)  

;@@@ Added by Prachi Rathore[10-3-14]
;A thread of light emerged from the keyhole.[oald]
;प्रकाश की किरण ताले के छेद से निकली . 
(defrule thread9
(declare (salience 5100))
(id-root ?id thread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 light)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kiraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thread.clp 	thread9   "  ?id "  kiraNa )" crlf))
) 


;@@@ Added by Prachi Rathore[10-3-14]
;After controlling the disturbance in the House the Speaker tried to gather the threads of discussion that was going on earlier..
;saMsaxa-saBA meM uTe Sora ko niyaMwriwa karane ke bAxa spIkara ne usake pahale ho rahI carcA ke sUwra ko pakadZane kI koSiSa kI.
(defrule thread10
(declare (salience 5100))
(id-root ?id thread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 discussion)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thread.clp 	thread10   "  ?id "  suwra )" crlf))
) 

 ;@@@ Added by Prachi Rathore[10-3-14]
;One of the main threads of the film is the development of the relationship between the boy and his uncle.[cambridge]
;सिनेमा की प्रमुख कडियों में से एक लडके के और उसके चाचा के बीच सम्बन्ध मज़बुत होना है . 
(defrule thread11
(declare (salience 5100))
(id-root ?id thread)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-of_saMbanXI  ?id ?id1)(kriyA-object ?id1 ?id))
(id-root ?id1 film|find)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thread.clp 	thread11   "  ?id "  kadI )" crlf))
)

