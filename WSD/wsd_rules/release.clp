
(defrule release0
(declare (salience 5000))
(id-root ?id release)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rihAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  release.clp 	release0   "  ?id "  rihAI )" crlf))
)

;"release","N","1.rihAI"
;Jailer got an order for Rahul's release from prison.
;--"2.praxarSana"
;The release of a new film is delayed.
;--"3.Kulane_kI_kriyA"
;The release mechanism of a lock.
;
(defrule release1
(declare (salience 4900))
(id-root ?id release)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  release.clp 	release1   "  ?id "  CodZa )" crlf))
)

;"release","VT","1.CodZanA"
;The prisoner was released
;--"2.mukwa_karanA"
;She gently released herself from his arms.
;--"3.vimocana/lokArpaNa_karanA"
;The new edition of the book has been released.
;--"4.mocana_karanA"
;This news has been released  to the press. 
;--"5.CodZanA{yaMwra_kA}"
;The bullet is released from the gun at very high speed. 
;--"6.wyAganA"
;He has released his rights in favour of his nephew.     
;
