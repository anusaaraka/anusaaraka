;@@@ Added by Pramila(BU) on 11-02-2014
;The cat was at the extreme end of the branch.          ;shiksharthi
;बिल्ली शाखा के अंतिम छोर पर थी.
(defrule extreme0
(declare (salience 5000))
(id-root ?id extreme)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(kriyA-at_saMbanXI  ?kri ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMwima))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extreme.clp 	extreme0   "  ?id "  aMwima )" crlf))
)

;@@@ Added by Pramila(BU) on 11-02-2014
;He has been liberal in the extreme.        ;shiksharthi
;वह अति उदार रहा है.
(defrule extreme1
(declare (salience 5000))
(id-root ?id extreme)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-in_saMbanXI  ?id1 ?id)
(subject-subject_samAnAXikaraNa  ?sub ?id1)
(id-word =(- ?id 2) in) 
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 2) awi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " extreme.clp	extreme1  "  ?id "  " (- ?id 2) "  awi  )" crlf))
)

;@@@ Added by Pramila(BU) on 11-02-2014
;We are working under extreme pressure at the moment.       ;oald
;हम इस समय अत्यधिक दबाव में काम कर रहे हैं.
;I'm having extreme difficulty in not losing my temper with her.  ;oald
;मुझे उससे अपना गुस्सा कम नहीं करने में अत्यधिक कठिनाई हो रही है.
;That day we were in an extreme danger.       ;shiksharthi
;उस दिन हम अत्यधिक खतरे में थे.
(defrule extreme2
(declare (salience 5000))
(id-root ?id extreme)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(or(kriyA-under_saMbanXI  ? ?id1)(viSeRya-in_saMbanXI  ?id1 ?)(kriyA-in_saMbanXI  ? ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyaXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extreme.clp 	extreme2   "  ?id "  awyaXika )" crlf))
)

;@@@ Added by Pramila(BU) on 11-02-2014
;The heat in the desert was extreme.   ;oald
;रेगिस्तान में अत्यधिक गर्मी थी.
(defrule extreme3
(declare (salience 5000))
(id-root ?id extreme)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyaXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extreme.clp 	extreme3   "  ?id "  awyaXika )" crlf))
)

;@@@ Added by Pramila(BU) on 11-02-2014
;Children will be removed from their parents only in extreme circumstances.   ;oald
;बच्चे कठोर परिस्थितियों में ही उनके माता - पिता से दूर किए जाएँगे.
;'(kriyA-from_saMbanXI  ?kri ?id2)'because this rule was conflicting with following sentence:
;That day we were in an extreme danger.       ;shiksharthi
;उस दिन हम अत्यधिक खतरे में थे.
(defrule extreme4
(declare (salience 5000))
(id-root ?id extreme)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(kriyA-in_saMbanXI  ?kri ?id1)
(kriyA-from_saMbanXI  ?kri ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extreme.clp 	extreme4   "  ?id "  kaTora )" crlf))
)


;@@@ Added by Pramila(BU) on 11-02-2014
;Kerry is in the extreme west of Ireland.    ;oald
;केरी आयरलैंड के सुदूर पश्चिम में है.
(defrule extreme5
(declare (salience 5000))
(id-root ?id extreme)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 east|west|north|south)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suxUra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extreme.clp 	extreme5   "  ?id "  suxUra )" crlf))
)

;@@@ Added by Pramila(BU) on 11-02-2014
;It was the most extreme example of cruelty to animals I had ever seen.   ;oald
;यह पशुओं पर निर्दयता का सबसे अधिक कष्टदायक उदाहरण था जो मैंने देखा.
(defrule extreme6
(declare (salience 5000))
(id-root ?id extreme)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(viSeRya-of_saMbanXI  ?id1 ?)
(viSeRya-to_saMbanXI  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaRtaxAyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extreme.clp 	extreme6   "  ?id "  kaRtaxAyaka )" crlf))
)

;*hindi meaning needs discussion.
;Added by Meena(25.3.10)
;His views tend towards the extreme . 
(defrule extreme8
(declare (salience 4900))
(id-root ?id extreme)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awivAxiwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extreme.clp   extreme8   "  ?id "    awivAxiwA  )" crlf))
)

;--------------- Default rules -------------------------
(defrule extreme7
(declare (salience 100))
(id-root ?id extreme)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id carama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extreme.clp 	extreme7   "  ?id "  carama )" crlf))
)

;"extreme","Adj","1.carama/awyanwa"
;He carried the argument to extremes.
;Extreme cold
;An extreme example
;An extreme conservative
;The extreme edge of town
;

;Salience reduced by Meena(25.3.10)
(defrule extreme9
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id extreme)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sirA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extreme.clp 	extreme9   "  ?id "  sirA )" crlf))
)

;"extreme","N","1.sirA"
;We have to go to the extreme edge of town to find him.
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_extreme5
(declare (salience 5000))
(id-root ?id extreme)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 east|west|north|south)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suxUra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " extreme.clp   sub_samA_extreme5   "   ?id " suxUra )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_extreme5
(declare (salience 5000))
(id-root ?id extreme)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 east|west|north|south)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suxUra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " extreme.clp   obj_samA_extreme5   "   ?id " suxUra )" crlf))
)
