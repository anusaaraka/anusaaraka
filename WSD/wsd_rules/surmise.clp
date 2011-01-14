
(defrule surmise0
(declare (salience 5000))
(id-root ?id surmise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMxAjZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surmise.clp 	surmise0   "  ?id "  aMxAjZA )" crlf))
)

;"surmise","N","1.aMxAjZA"
;This is a pure surmise on my part.
;
(defrule surmise1
(declare (salience 4900))
(id-root ?id surmise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMxAjZA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surmise.clp 	surmise1   "  ?id "  aMxAjZA_lagA )" crlf))
)

;"surmise","V","1.aMxAjZA_lagAnA"
;We can only surmise the reason for his delay.
;
