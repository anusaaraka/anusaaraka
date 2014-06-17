
(defrule outdoors0
(declare (salience 5000))
(id-root ?id outdoors)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gara_ke_bAhara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outdoors.clp 	outdoors0   "  ?id "  Gara_ke_bAhara )" crlf))
)

;"outdoors","Adv","1.Gara_ke_bAhara"
;Children go && play outdoors.
;
(defrule outdoors1
(declare (salience 4900))
(id-root ?id outdoors)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAzva_kA_mAhOla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outdoors.clp 	outdoors1   "  ?id "  gAzva_kA_mAhOla )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;As soon as it was light the chowkidar lit a fire, but the cold prevented the children from venturing outdoors. [छ्मबरिडगे]
;जैसे ही उजाला हुआ चौकीदार ने आग को प्रकाशित किया, परन्तु ठण्ड ने बाहर जाने का साहस करने से बच्चों को रोका .
(defrule outdoors2
(declare (salience 5500))
(id-root ?id outdoors)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outdoors.clp 	outdoors2   "  ?id "  bAhara )" crlf))
)

;"outdoors","N","1.gAzva_kA_mAhOla"
;Come to India to enjoy the refreshing outdoors.
;
