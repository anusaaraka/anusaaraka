
(defrule profane0
(declare (salience 5000))
(id-root ?id profane)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAMsArika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  profane.clp 	profane0   "  ?id "  sAMsArika )" crlf))
)

;"profane","Adj","1.sAMsArika"
;He was found guilty of being a profane person.
;
(defrule profane1
(declare (salience 4900))
(id-root ?id profane)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anAxara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  profane.clp 	profane1   "  ?id "  anAxara_kara )" crlf))
)

;"profane","V","1.anAxara_karanA"
;Profaning of one's religion is not appreciatable.
;
