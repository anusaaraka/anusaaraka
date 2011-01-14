
(defrule sting0
(declare (salience 5000))
(id-root ?id sting)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id daMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sting.clp 	sting0   "  ?id "  daMka )" crlf))
)

(defrule sting1
(declare (salience 4900))
(id-root ?id sting)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dZaMka_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sting.clp 	sting1   "  ?id "  dZaMka_mAra )" crlf))
)

;"sting","V","1.dZaMka mAranA"
;When you trouble a wasp it stings you.
;--"2.xarxa honA"
;My legs were stinging due to excess walking.
;--"3.ukasAnA"
;Their comments stung him to get into a fight.
;
;