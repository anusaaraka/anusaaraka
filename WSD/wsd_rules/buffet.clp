;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 22/03/2014
;He gave a buffet on his face.[shiksharthi]
;उसने उसके मुँह पर थप्पड़ मारा
(defrule buffet2
(declare (salience 5000))
(id-root ?id buffet)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?kri ?id1)
(kriyA-object  ?kri ?id)
(id-word ?id1 face)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Wappada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buffet.clp 	buffet2   "  ?id "  Wappada )" crlf))
)


(defrule buffet0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id buffet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id buPe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buffet.clp 	buffet0   "  ?id "  buPe )" crlf))
)

;"buffet","N","1.buPe"
;We were given a buffet lunch.
;
(defrule buffet1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id buffet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XakkA_mukkI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buffet.clp 	buffet1   "  ?id "  XakkA_mukkI_kara )" crlf))
)

;"buffet","VT","1.XakkA_mukkI_karanA"
;Winds buffeted the tent
;The wind buffeted him
;
