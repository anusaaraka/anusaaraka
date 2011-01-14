
;Added by human
(defrule publish0
(declare (salience 5000))
(id-root ?id publish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 house)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakASana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  publish.clp 	publish0   "  ?id "  prakASana )" crlf))
)

(defrule publish1
(declare (salience 4900))
(id-root ?id publish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id publishing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id prakASana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  publish.clp  	publish1   "  ?id "  prakASana )" crlf))
)

;"publishing","N","1.prakASana"
;He is involved in publishing.
;
;
(defrule publish2
(declare (salience 4800))
(id-root ?id publish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakASiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  publish.clp 	publish2   "  ?id "  prakASiwa_kara )" crlf))
)

;default_sense && category=verb	prakASiwa kara	0
;"publish","V","1.prakASiwa karanA"
;Most of the good books on English were published during the British rule.
;
;

(defrule publish3
(declare (salience 5000))
(id-root ?id publish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id published)
;(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa =(+ ?id 1) ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakASiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  publish.clp      publish3   "  ?id "  prakASiwa )" crlf))
)

