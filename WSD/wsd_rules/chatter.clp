
(defrule chatter0
(declare (salience 5000))
(id-root ?id chatter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bakabaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chatter.clp 	chatter0   "  ?id "  bakabaka )" crlf))
)

(defrule chatter1
(declare (salience 4900))
(id-root ?id chatter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bakabaka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chatter.clp 	chatter1   "  ?id "  bakabaka_kara )" crlf))
)

;default_sense && category=verb	bakabaka_kara	0
;"chatter","V","1.bakabaka_karanA"
;Those girls keep chattering whole day.
;--"2.katakatAnA"
;My teeth chattered because of cold.
;"chatty","Adj","1.bakkI/bAwUnI"
;He has a chatty younger brother.
;
;