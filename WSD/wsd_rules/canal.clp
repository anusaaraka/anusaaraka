;@@@ Added by Preeti(9-4-14)
;The back yard wall overlooked the canal and over the canal was Nazareth House Convent. [yourdictionary.com]
;AganakI xivAra se nahara xiKawIhE Ora nahara ke Upara najarawa hAUsa kAnveMta WA.
(defrule canal0
(id-root ?id canal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nahara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  canal.clp 	canal0   "  ?id "  nahar )" crlf))
)


;@@@ Added by Preeti(9-4-14)
;In your ear there are the semicircular canals which are linked to muscular co-ordination. [yourdictionary.com]
;Apake kAna meM arXavqwwAkAra nalikAz howI hEM jo peSIya samanvayana se jodI howI hEM.
(defrule canal1
(declare (salience 1000))
(id-root ?id canal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-aBihiwa  ?id1 ?id)
(kriyA-in_saMbanXI  ?id1 ?id2)
(id-root ?id2 ear)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nalikA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  canal.clp 	canal1   "  ?id "  nalikA )" crlf))
)