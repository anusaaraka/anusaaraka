
(defrule own0
(declare (salience 5000))
(id-root ?id own)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 svIkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " own.clp	own0  "  ?id "  " ?id1 "  svIkAra_kara  )" crlf))
)

;He owned up that he's broken the window.
;usane svIkAra kiyA ki KidZakI usane wodZI hE

;@@@ Added by Pramila(BU) on 20-02-2014
;He still holds his own.   ;shiksharthi
;वह अभी भी अपने आपे में है.
(defrule own1
(declare (salience 4900))
(id-root ?id own)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 hold)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ApA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  own.clp 	own1   "  ?id "  ApA )" crlf)
)
)



;@@@ Added by Pramila(BU) on 20-02-2014
;Can you hold your own against him ?   ;shiksharthi
;क्या तुम उसका डटकर सामना कर सकते हो ?
(defrule own2
(declare (salience 4900))
(id-root ?id own)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(kriyA-against_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) (+ ?id 1) datakara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " own.clp	own2  "  ?id "  " (- ?id 1) (+ ?id 1)"  datakara  )" crlf))
)

;@@@ Added by Pramila(BU) on 20-02-2014
;He cannot come into his own for he tells lies.   ;shiksharthi
;वह उचित सम्मान नहीं पा सकता क्योंकि वह झूठ बोलता है.
(defrule own3
(declare (salience 4900))
(id-root ?id own)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun)
(kriyA-into_saMbanXI  ?id1 ?id)
(id-word =(- ?id 2) into)
(id-word =(- ?id 1) his|her|their|my|our)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  (- ?id 2) uciwa_sammAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " own.clp	own3  "  ?id "  " ?id1 (- ?id 2) "  uciwa_sammAna  )" crlf))
)

;@@@ Added by Pramila(BU) on 20-02-2014
;This principle will come into its own.   ;shiksharthi
;सिद्धांत को मान्यता मिलेगी.
(defrule own4
(declare (salience 4900))
(id-root ?id own)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun)
(kriyA-into_saMbanXI  ?id1 ?id)
(id-word =(- ?id 2) into)
(id-word =(- ?id 1) its)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 2) (- ?id 1) mAnyawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " own.clp	own4  "  ?id "  " (- ?id 2) (- ?id 1) "  mAnyawA  )" crlf))
)

;@@@ Added by Pramila(BU) on 20-02-2014
;I own that I was wrong.  ;shiksharthi
;मैं स्वीकार करता हूँ कि मैं गलत था.
;He owned to a feeling of guilt.   ;oald
;उसने अपराध की भावना को स्वीकार किया.
(defrule own5
(declare (salience 4500))
(id-root ?id own)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-vAkyakarma  ?id ?id1)(kriyA-to_saMbanXI  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svIkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  own.clp 	own5   "  ?id "  svIkAra_kara )" crlf)
)
)



;$$$ Modified by Pramila(BU) on 20-02-2014 [category changed from 'determiner' to 'adjective']
(defrule own6
(declare (salience 100))
(id-root ?id own)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  own.clp 	own6   "  ?id "  apanA )" crlf))
)

;"own","Det","1.apanA"
;It is her own idea to start a school
;
(defrule own7
(declare (salience 100))
(id-root ?id own)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svAmI_ho))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  own.clp 	own7   "  ?id "  svAmI_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  own.clp       own7   "  ?id "  kA )" crlf)
)
)

;"own","VT","1.svAmI_honA"
;He owns a farm in Delhi
;
