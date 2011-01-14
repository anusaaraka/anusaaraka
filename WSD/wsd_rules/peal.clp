
(defrule peal0
(declare (salience 5000))
(id-root ?id peal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TahAkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peal.clp 	peal0   "  ?id "  TahAkA )" crlf))
)

;"peal","N","1.TahAkA/attahAsa"
;After hearing a joke she breaks into the peal of laughter.
;
(defrule peal1
(declare (salience 4900))
(id-root ?id peal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadZagadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peal.clp 	peal1   "  ?id "  gadZagadZA )" crlf))
)

;"peal","V","1.gadZagadZAnA"
;Helen pealed with laughter.
;
