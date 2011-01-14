
(defrule miser0
(declare (salience 5000))
(id-root ?id miser)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id loBI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  miser.clp 	miser0   "  ?id "  loBI )" crlf))
)

;"miser","Adj","1.loBI"
;He is a big miser, he'll never help you.
;
(defrule miser1
(declare (salience 4900))
(id-root ?id miser)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaMjUsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  miser.clp 	miser1   "  ?id "  kaMjUsa )" crlf))
)

;"miser","N","1.kaMjUsa"
