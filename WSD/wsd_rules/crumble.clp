
(defrule crumble0
(declare (salience 5000))
(id-root ?id crumble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ovanapAka_Pala_vyaMjana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crumble.clp 	crumble0   "  ?id "  ovanapAka_Pala_vyaMjana )" crlf))
)

;"crumble","N","1.ovanapAka_Pala_vyaMjana"
;The strawberry crumble is delicious
;
(defrule crumble1
(declare (salience 4900))
(id-root ?id crumble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cUra_cUra_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crumble.clp 	crumble1   "  ?id "  cUra_cUra_ho )" crlf))
)

;"crumble","VT","1.cUra_cUra_honA"
;The houses crumbled due to earthquake 
;--"2.viGatiwa_honA"
;Soviet Union crumbled after the revolution
;
