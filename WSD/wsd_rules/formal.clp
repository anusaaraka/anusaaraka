
(defrule formal0
(declare (salience 5000))
(id-root ?id formal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id OpacArika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  formal.clp 	formal0   "  ?id "  OpacArika )" crlf))
)

(defrule formal1
(declare (salience 4900))
(id-root ?id formal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id OpacArika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  formal.clp 	formal1   "  ?id "  OpacArika )" crlf))
)

;"formal","Adj","1.OpacArika"
;For formal functions formal dress is more appropriate.
;A formal students'union meeting was held yesterday.
;
;
