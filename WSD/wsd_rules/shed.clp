
(defrule shed0
(declare (salience 5000))
(id-root ?id shed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAyabAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shed.clp 	shed0   "  ?id "  sAyabAna )" crlf))
)

;"shed","N","1.sAyabAna"
;He kept the cattle shed quite dirty.
;
(defrule shed1
(declare (salience 4900))
(id-root ?id shed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shed.clp 	shed1   "  ?id "  JAdZa )" crlf))
)

;"shed","V","1.JAdZanA"
;Coniferous forests shed their leaves during a particular time.
;--"2.bahAnA"
;Freedom fighters shed their blood for their country.
;--"3.CodZa_xenA"
;You should have the will power to shed your bad habits.
;--"4.PElAnA"
;The candles shed a soft glow over the room.
;
