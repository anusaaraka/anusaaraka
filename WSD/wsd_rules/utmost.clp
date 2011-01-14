
(defrule utmost0
(declare (salience 5000))
(id-root ?id utmost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikawama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  utmost.clp 	utmost0   "  ?id "  aXikawama )" crlf))
)

;"utmost","Adj","1.aXikawama/parimANa/parAkARTA"
;He was pushed to the utmost limits of endurance.
;
(defrule utmost1
(declare (salience 4900))
(id-root ?id utmost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyanwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  utmost.clp 	utmost1   "  ?id "  awyanwa )" crlf))
)

;"utmost","N","1.awyanwa/nipata/parama"
;He tried his utmost to win the match.
;
