
(defrule mould0
(declare (salience 5000))
(id-root ?id mould)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id moulding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gaDZawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mould.clp  	mould0   "  ?id "  gaDZawa )" crlf))
)

;"moulding","N","1.gaDZawa"
;See the protective mouldings round the car.
;
(defrule mould1
(declare (salience 4900))
(id-root ?id mould)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mould.clp 	mould1   "  ?id "  sAzcA )" crlf))
)

(defrule mould2
(declare (salience 4800))
(id-root ?id mould)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mould.clp 	mould2   "  ?id "  gaDZa )" crlf))
)

;"mould","V","1.gaDZanA"
;The bricks are moulded by hand.
;
;