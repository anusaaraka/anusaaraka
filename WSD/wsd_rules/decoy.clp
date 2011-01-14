
(defrule decoy0
(declare (salience 5000))
(id-root ?id decoy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PazsAne_vAle_jAnavara_yA_cidiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  decoy.clp 	decoy0   "  ?id "  PazsAne_vAle_jAnavara_yA_cidiyA )" crlf))
)

;"decoy","N","1.PazsAne_vAle_jAnavara_yA_cidiyA"
;The bird was caught in a decoy.
;--"2.praloBana_xene_vAlA_vyakwi"
;The school children were warned against the decoy .
;
(defrule decoy1
(declare (salience 4900))
(id-root ?id decoy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PazsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  decoy.clp 	decoy1   "  ?id "  PazsA )" crlf))
)

;"decoy","V","1.PazsAnA"
;The hunter decoyed the prey using a loaf of meat .
;
