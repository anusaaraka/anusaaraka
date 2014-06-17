;@@@ Added by Pramila(BU) on 12-02-2014
;The school children were warned against the decoy .   [old clp]
;स्कूल के बच्चों को प्रलोभन देने वाले व्यक्ति के खिलाफ चेतावनी दी गई.
(defrule decoy0
(declare (salience 5000))
(id-root ?id decoy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-against_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praloBana_xene_vAle_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  decoy.clp 	decoy0   "  ?id "  praloBana_xene_vAle_vyakwi )" crlf))
)

;$$$ Modified by Pramila(BU) on 12-02-2014  [meaning changed from 'PazsAne_vAle_jAnavara_yA_cidiyA' to 'PaMxA' ]
;The bird was caught in a decoy.      [old clp]
;पक्षी को फमदे में फँसाया गया.
(defrule decoy1
(declare (salience 100))
(id-root ?id decoy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PaMxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  decoy.clp 	decoy1   "  ?id "  PaMxA )" crlf))
)

;"decoy","N","1.PazsAne_vAle_jAnavara_yA_cidiyA"
;The bird was caught in a decoy.
;--"2.praloBana_xene_vAlA_vyakwi"
;The school children were warned against the decoy .
;
(defrule decoy2
(declare (salience 4900))
(id-root ?id decoy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PazsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  decoy.clp 	decoy2   "  ?id "  PazsA )" crlf))
)

;"decoy","V","1.PazsAnA"
;The hunter decoyed the prey using a loaf of meat .
;
