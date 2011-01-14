
(defrule reissue0
(declare (salience 5000))
(id-root ?id reissue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id punaH_cAlU_karane_kI_kriyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reissue.clp 	reissue0   "  ?id "  punaH_cAlU_karane_kI_kriyA )" crlf))
)

;"reissue","N","1.punaH_cAlU_karane_kI_kriyA"
;A reissue of a 1960s recordings of old hindi songs are available.  
;
(defrule reissue1
(declare (salience 4900))
(id-root ?id reissue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_jArI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reissue.clp 	reissue1   "  ?id "  Pira_jArI_kara )" crlf))
)

;"reissue","VT","1.Pira_jArI_karanA"
;Would you please reissue this book to me?
;
