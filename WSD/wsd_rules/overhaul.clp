
(defrule overhaul0
(declare (salience 5000))
(id-root ?id overhaul)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirIkRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overhaul.clp 	overhaul0   "  ?id "  nirIkRaNa )" crlf))
)

;"overhaul","N","1.nirIkRaNa"
;Overhaul of the car periodically will keep it trouble free
;
(defrule overhaul1
(declare (salience 4900))
(id-root ?id overhaul)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirIkRaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overhaul.clp 	overhaul1   "  ?id "  nirIkRaNa_kara )" crlf))
)

;"overhaul","VT","1.nirIkRaNa_karanA"
; You should overhaul your car engine
;
