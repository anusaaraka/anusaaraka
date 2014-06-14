
;@@@ Added by Pramila(BU) on 20-02-2014
;There is never anything worth watching on TV.
;कभी भी दूरदर्शन पर कुछ भी देखने लायक नहीं होता है .
(defrule worth0
(declare (salience 4900))
(id-root ?id worth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-word =(+ ?id 1) watching)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) xeKane_lAyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " worth.clp	worth0  "  ?id "  "  (+ ?id 1)"  xeKane_lAyaka  )" crlf))
)

(defrule worth1
(declare (salience 100))
(id-root ?id worth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worth.clp 	worth1   "  ?id "  mUlya )" crlf))
)

;"worth","Adj","1.mUlya"
;It is worth buying the anklet for the price.
;

;$$$ Modified by Pramila(BU) on 22-03-2014
;This thing is of little worth.   ;shiksharthi
;यह वस्तु बहुत कम कीमत की है.
(defrule worth2
(declare (salience 100))
(id-root ?id worth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-of_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worth.clp 	worth2   "  ?id "  mUlya )" crlf))
)


;@@@ Added by Pramila(BU) on 22-03-2014
;My watch is worth rupees 800. ;shiksharthi
;मेरी घड़ी ८०० रुपये मूल्य की है.
(defrule worth3
(declare (salience 100))
(id-root ?id worth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(saMKyA-saMKyA  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worth.clp 	worth3   "  ?id "  mUlya )" crlf))
)
;"worth","N","1.mUlya"
;

;@@@ Added by Pramila(BU) on 22-03-2014
;Is the play worth seeing ?    ;shiksharthi
;क्या नाटक देखने लायक है ?
(defrule worth4
(declare (salience 100))
(id-root ?id worth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worth.clp 	worth4   "  ?id "  lAyaka )" crlf))
)

