
(defrule jet0
(declare (salience 5000))
(id-root ?id jet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jeta_vimAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jet.clp 	jet0   "  ?id "  jeta_vimAna )" crlf))
)

;"jet","N","1.jeta_vimAna"
;He is undergoing training to fly jets.
;--"2.XArA"
;The pipe burst && jets of water shot across the room.
;
(defrule jet1
(declare (salience 4900))
(id-root ?id jet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikala_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jet.clp 	jet1   "  ?id "  nikala_padZa )" crlf))
)

;"jet","VI","1.nikala_padZanA"
;The pipe bursted && water jetted out .
;
