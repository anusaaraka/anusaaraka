
(defrule poll0
(declare (salience 5000))
(id-root ?id poll)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mawaxAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poll.clp 	poll0   "  ?id "  mawaxAna )" crlf))
)

;"poll","N","1.mawaxAna"
;All the States had peaceful polls.
;
(defrule poll1
(declare (salience 4900))
(id-root ?id poll)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vota_prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poll.clp 	poll1   "  ?id "  vota_prApwa_kara )" crlf))
)

;"poll","V","1.vota_prApwa_karanA"
;He polled over 50,000 votes.
;--"2.mawagrahaNa_karanA"
;Of those polled, seven out of ten said they preferred brown bread.
;
