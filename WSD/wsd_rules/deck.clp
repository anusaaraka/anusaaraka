
;ADded by human
(defrule deck0
(declare (salience 5000))
(id-root ?id deck)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) tape)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ---))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deck.clp 	deck0   "  ?id "  --- )" crlf))
)

(defrule deck1
(declare (salience 4900))
(id-root ?id deck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id deka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deck.clp 	deck1   "  ?id "  deka )" crlf))
)

(defrule deck2
(declare (salience 4800))
(id-root ?id deck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deck.clp 	deck2   "  ?id "  sajA )" crlf))
)

;"deck","V","1.sajAnA"
;She decked up nicely for the party.
;
;
