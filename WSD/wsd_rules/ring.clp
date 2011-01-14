
(defrule ring0
(declare (salience 5000))
(id-root ?id ring)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Pona_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " ring.clp	ring0  "  ?id "  " ?id1 "  Pona_kara  )" crlf))
)



;Modified by Meena(8.6.10) added (kriyA-subject ?id ?id1)
;At midnight Uttama's telephone rings . 
(defrule ring1
(declare (salience 4700))
(id-root ?id ring)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ring.clp 	ring1   "  ?id "  baja )" crlf))
)

;"ring","VI","1.bajanA{GaNtiyoz_kA}"
;I will answer the telephone for you if it rings.
;The playground rang with children's shouts.
;The music was so loud it made my ears ring.
;




;Modified by Meena(8.6.10)  added (kriyA-object ?id ?id1)
;He rings the bell in the morning.
(defrule ring2
(declare (salience 4600))
(id-root ?id ring)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ring.clp 	ring2   "  ?id "  bajA )" crlf))
)




(defrule ring3
(declare (salience 4800))
(id-root ?id ring)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id azgUTI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ring.clp      ring3   "  ?id "  azgUTI )" crlf))
)

;"ring","N","1.azgUTI"
;she always wears diamond ring.
;--"2.CallA{cABI/nepakina_kA}"
;He keeps all his keys in a key-ring.    
;--"3.GerA/maMdala/cakra"
;He is an expert in blowing smoke-rings. 
;In intelligence dept. some people have made spy-ring.
;In circus spectators sit all around out side the circus-ring.
;Please put the kettle on the ring.





;"ring","VT","1.bajAnA{GaNtIz_kA}"
;Ring the bell for school assembly.
;Someone is ringing at the door.
;Her story may seem true but it rings false to me.
;My clock only rings the hours.      
;
;LEVEL 
;
;Headword : ring
;
;Examples -
;
;"ring","N" 
;
;Ravi gave Sunita a diamond ring for her birthday.
;ravi ne sunIwA ko usake janmaxina para eka hIre kI azgUTI xI.
;
;azgUTI<--CallA
;
;The child entered the swimming pool with an inflatable ring.
;baccA svimiMga-pUla meM havA-BarA gola-tyUba lekara uwarA
;
;gola-tyUba<---Calle_jEse_AkAravAlA<---rabadZa_kA_CallA
;
;He sat their blowing smoke rings with his cigarette.
;vaha apanI sigareta se Xuze ke Calle banAwA huA vahAz bETA WA.
;
;CallA
;
;She had dark rings round her eyes due to lack of sleep.
;na so pAne ke kAraNa usakI AzKoM ke cAroM ora kAle Xabbe padZa gae We
;
;cAroM_ora_Xabbe<---golAkAra <---Calle
;
;The lions performing in the ring looked very friendly.
;aKAdZe meM wamASA kara rahe Sera miwrawA se BarapUra laga rahe We.
;
;aKAdZA <---Suru meM aKAdZA golAkAra howA WA <---golAkAra GerA<--- GerA
;
;A spy ring was busted by the police.
;pulisa ne jAsUsoM ke eka giroha ko PodZa xiyA
;
;giroha <---samUha <---samUha kA GerA <---GerA
;
;"ring","V"
;
;--"1.GiranA"
;The area was ringed by a barbed wire fence.
;usa kRewra ko kaztIle wAroM ke bAdZe se cAroM ora se Gera xiyA WA.
;
;--"2.GeranA"
;Ring the correct answer.
;sahI uwwara ke cAroM ora GerA banAo
;
;--"3.gUzjanA"
;Her words rang hollow.
;usake SabxoM meM KAlIpana kI gUzja WI. <---AvAjZa_honA <---bajanA
;
;Rita left the room with his voice still ringing inher ears.
;kamare se nikalawe vakwa BI rIwA kI ke kAnoM meM usakI AvAjZa gUzja rahI WI. <--
;
;--"4.Pona_karanA"
;I'll ring you tonight.
;mEM Aja rAwa wumheM Pona karUMgI <---Pona_kI_GaMtI_bajAnA <---Pona kI GaMtI gUzjanA
;
;'ring' Sabxa kA sUwra 
;
;sUwra : CallA-[GerA]-bajAnA
