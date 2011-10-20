;Added by Meena(11.10.11)
;I apologize for coming over unannounced like this.
(defrule unannounced0
(declare (salience 5000))
(id-root ?id unannounced)
?mng <-(meaning_to_be_decided ?id)
(or(id-cat_coarse ?id adjective)(viSeRya-like_saMbanXI  ?id  ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binA_sUcanA_ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  unannounced.clp       unannounced0   "  ?id " binA_sUciwa_kiye )" crlf))
)

