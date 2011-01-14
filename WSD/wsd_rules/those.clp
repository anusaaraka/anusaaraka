
(defrule those0
(declare (salience 5000))
(id-root ?id those)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) very)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  those.clp 	those0   "  ?id "  vahI )" crlf))
)

(defrule those1
(declare (salience 4900))
(id-root ?id those)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ve))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  those.clp 	those1   "  ?id "  ve )" crlf))
)

;"those","Pron","1.ve"
;Those roses are bewitching.
;
