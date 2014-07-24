;@@@ Added by Prachi Rathore[27-1-14]
;Half of the money was mine.[oald]
;आधा पैसा मेरा था . 
(defrule half3
(declare (salience 5000))
(id-root ?id half)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
(viSeRya-of_saMbanXI  ?id ?)
(id-root ?id1 of)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " half.clp 	half3  "  ?id "  " ?id1 "  AXA )" crlf))
)

;@@@ Added by Prachi Rathore[27-1-14]
;Half the time you don't even listen to what I say.[oald]
;आधे से ज्यादा समय आप  सुनते भी नहीं हैं मैं क्या कहता हूँ . 
(defrule half4
(declare (salience 5000))
(id-root ?id half)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
(viSeRya-det_viSeRaNa  ?id2 ?id)
(id-root ?id1 the)
(viSeRya-det_viSeRaNa  ?id2 ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AXe_se_jyAxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " half.clp 	half4  "  ?id "  " ?id1 "  AXe_se_jyAxA )" crlf))
)

;xxxxxxxxxxxxxxxxxxxxxxxxxxx Default Rules xxxxxxxxxxxxxxxxxx
;@@@ Added by Prachi Rathore[27-1-14]
;Out of 36 candidates, half passed.[oald]
;36 उम्मीदवारों में से, आधे उत्तीर्ण हुये. 
(defrule half2
(declare (salience 4900))
(id-root ?id half)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng    " ?*wsd_dir* " half.clp 	half2  "  ?id "   AXA )" crlf))
)

;Meaning changed from "AXA_BAga" to "arXAMSa" to get the proper Apertium_output (Meena 18.11.10)
;Likewise, the painful pressure on your eardrums at the bottom of a pool is not affected if you insert or remove a partition between the two halves of the pool.
(defrule half0
(declare (salience 5000))
(id-root ?id half)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id arXAMSa))
;(assert (id-wsd_root_mng ?id AXA_BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  half.clp 	half0   "  ?id "  arXAMSa )" crlf))
)

(defrule half1
(declare (salience 4900))
(id-root ?id half)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  half.clp 	half1   "  ?id "  AXA )" crlf))
)

;"half","Adj","1.AXA"
;SyAma ne rotI kA"half"BAga apane Cote BAI ko xe xiyA. 
;
;
