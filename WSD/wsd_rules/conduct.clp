
(defrule conduct0
(declare (salience 5000))
(id-root ?id conduct)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMcAlana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conduct.clp 	conduct0   "  ?id "  saMcAlana )" crlf))
)

(defrule conduct1
(declare (salience 4900))
(id-root ?id conduct)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conduct.clp 	conduct1   "  ?id "  calA )" crlf))
)

;"conduct","V","1.calAnA"
;You cannot conduct business if you are not enterprising. 
;
;