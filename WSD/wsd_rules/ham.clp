
(defrule ham0
(declare (salience 5000))
(id-root ?id ham)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUara_kA_puTTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ham.clp 	ham0   "  ?id "  sUara_kA_puTTA )" crlf))
)

;"ham","N","1.sUara_kA_puTTA"
;She cooked a dish of ham today .
;usane Aja  sUara ke puTTe kA eka pakavAna pakAyA .
;--"2.asvaBAvika_aBinewA"
;He is a ham.
;vaha eka asvABika aBinewA hE
;
(defrule ham1
(declare (salience 4900))
(id-root ?id ham)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asvABAvika_aBinaya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ham.clp 	ham1   "  ?id "  asvABAvika_aBinaya_kara )" crlf))
)

;"ham","V","1.asvABAvika_aBinaya_karanA"
;Many actors ham in the pictures .
;bahuwa se kalAkAra sinemA meM asvABAvika aBinaya karawe hEM .
;
