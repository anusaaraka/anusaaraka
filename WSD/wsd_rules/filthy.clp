
(defrule filthy0
(declare (salience 5000))
(id-root ?id filthy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaMxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  filthy.clp 	filthy0   "  ?id "  gaMxA )" crlf))
)

;"filthy","Adj","1.gaMxA"
;He keeps his room in filthy condition.
;This is a filthy magazine.
;Today the weather is very filthy.
;--"2.Gina_Ane_kI_sImA_waka"
;He is filthy rich.
;
(defrule filthy1
(declare (salience 4900))
(id-root ?id filthy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id malina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  filthy.clp 	filthy1   "  ?id "  malina )" crlf))
)

;"filthy","Adv","1.malina"
;He has a filthy way of doing things.
;
