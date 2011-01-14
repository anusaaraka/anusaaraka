
(defrule charm0
(declare (salience 5000))
(id-root ?id charm)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id charming)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mohaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  charm.clp  	charm0   "  ?id "  mohaka )" crlf))
)

; Meaning of charming is manohara, there is no necessity to chk the category.
; This is also preferable (not to chk the categories, in view of POS mistakes)
(defrule charm1
(declare (salience 4900))
(id-root ?id charm)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id charming )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mohaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  charm.clp  	charm1   "  ?id "  mohaka )" crlf))
)

;"charming","Adj","1.mohaka"
;Her daughter is endowed with charming manners.
;
;
(defrule charm2
(declare (salience 4800))
(id-root ?id charm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manoharawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charm.clp 	charm2   "  ?id "  manoharawA )" crlf))
)

;"charm","N","1.manoharawA"
;She is a lady of great charm.
;
(defrule charm3
(declare (salience 4700))
(id-root ?id charm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mohiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charm.clp 	charm3   "  ?id "  mohiwa_kara )" crlf))
)

;"charm","VT","1.mohiwa_karanA"
;She charmed him into giving her all his money.
;
