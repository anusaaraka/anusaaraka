
(defrule perish0
(declare (salience 5000))
(id-root ?id perish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id perishing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mAra_xenevAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  perish.clp  	perish0   "  ?id "  mAra_xenevAlA )" crlf))
)

;"perishing","Adj","1.mAra_xenevAlA"
;It is perishing outside.
;--"2.marajAnI"
;I can't get in - I've lost the perishing key.
;
(defrule perish1
(declare (salience 4900))
(id-root ?id perish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  perish.clp 	perish1   "  ?id "  mara )" crlf))
)

;"perish","V","1.maranA"
;Thousands of people perished in earthquake.
;--"2.sada jAnA"
;The seal on the bottle has perished.
;
;