;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;Her will was offered for probate by the relatives. [MW]
;उसकी वसीयत को रिश्तेदारों द्वारा परिवीक्षा करने के लिये दिया गया था . 
(defrule probate0
(declare (salience 5000))
(id-root ?id probate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-for_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parivIkRA_karane))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  probate.clp 	probate0   "  ?id "  parivIkRA_karane )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;The case will now go to probate. [MW]
;मामला अब परिवीक्षा को  जाएगा . 
(defrule probate1
(declare (salience 4900))
(id-root ?id probate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-to_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parivIkRA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  probate.clp 	probate1   "  ?id "  parivIkRA )" crlf))
)




(defrule probate2
(declare (salience 4800))
(id-root ?id probate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pramANiwa_icCApawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  probate.clp 	probate2   "  ?id "  pramANiwa_icCApawra )" crlf))
)

;"probate","N","1.pramANiwa_icCApawra"
;He was granted a probate regarding his father's will.
;
(defrule probate3
(declare (salience 4700))
(id-root ?id probate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMpramANiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  probate.clp 	probate3   "  ?id "  saMpramANiwa_kara )" crlf))
)

;"probate","V","1.saMpramANiwa_karanA"
;There is an urgent need to probate this will.
;
