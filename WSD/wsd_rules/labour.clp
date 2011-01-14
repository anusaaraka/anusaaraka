;Added by Meena(31.8.09)
;The labour was with the Union leader on this issue .
(defrule labour0
(declare (salience 5001))
(id-root ?id labour)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id ?id1)
(kriyA-subject  ?id2 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sramika_samAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  labour.clp    labour0   "  ?id "  Sramika_samAja )" crlf))
)


(defrule labour1
(declare (salience 4000))
(id-root ?id labour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Srama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  labour.clp 	labour1  "  ?id "  Srama )" crlf))
)

(defrule labour2
(declare (salience 4900))
(id-root ?id labour)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id labour )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id prayAsapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  labour.clp  	labour2   "  ?id "  prayAsapUrNa )" crlf))
)

;"laboured","Adj","1.prayAsapUrNa"
;She has a laboured style of writing. 
;
;
;"labour","N","1.Srama/pariSrama"
;Labour has to be done to complete this work.
;--"2.Sramika/majaxUra"
;The factory is closed as the labours have gone on strike.
;
(defrule labour3
(declare (salience 4800))
(id-root ?id labour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadI_mehanawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  labour.clp 	labour3   "  ?id "  kadI_mehanawa_kara )" crlf))
)

;"labour","V","1.kadI_mehanawa_karanA"
;I have been labouring (away) at this report all morning.
;--"2.muSkiloM_se_calanA"
;The van laboured up the steep mountain track. 
;

;Add by samapika (29.3.10)
;Labour is satisfied with their salary
;#sramik unake vewana se saMwuRta hE
(defrule labour4
(declare (salience 5000))
(id-root ?id labour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sramika)) ;Corrected the spelling "sramik" to "Sramika" by Sukadha (1-04-10)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  labour.clp   labour4   "  ?id "  Sramika )" crlf))
)
