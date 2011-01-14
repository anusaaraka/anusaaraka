
(defrule resolve0
(declare (salience 5000))
(id-root ?id resolve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id resolved )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vicAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  resolve.clp  	resolve0   "  ?id "  vicAra )" crlf))
)

;"resolved","Adj","1.vicAra"
;I was firmly resolved not to see him.
;
(defrule resolve1
(declare (salience 4900))
(id-root ?id resolve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hala_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resolve.clp 	resolve1   "  ?id "  hala_kara )" crlf))
)

(defrule resolve2
(declare (salience 4800))
(id-root ?id resolve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkalpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resolve.clp 	resolve2   "  ?id "  saMkalpa )" crlf))
)

;"resolve","N","1.saMkalpa"
;Make a resolve to help someone.
;
;