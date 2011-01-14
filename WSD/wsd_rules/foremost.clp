;Added by human being
(defrule foremost0
(declare (salience 5000))
(id-root ?id foremost)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 2) first)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahawvapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foremost.clp 	foremost0   "  ?id "  mahawvapUrNa )" crlf))
)

(defrule foremost1
(declare (salience 4900))
(id-root ?id foremost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prasixXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foremost.clp 	foremost1   "  ?id "  prasixXa )" crlf))
)

(defrule foremost2
(declare (salience 4800))
(id-root ?id foremost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarvAXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foremost.clp 	foremost2   "  ?id "  sarvAXika )" crlf))
)

;"foremost","Adv","1.sarvAXika"
;I'm foremost concerned about my career.
;
;
