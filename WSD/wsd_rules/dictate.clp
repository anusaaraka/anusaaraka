
(defrule dictate0
(declare (salience 4000))
(id-root ?id dictate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AjFA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dictate.clp 	dictate0   "  ?id "  AjFA )" crlf))
)

;"dictate","N","1.AjFA"
;I can't stoop to his dictates.
;
(defrule dictate1
(declare (salience 4000))
(id-root ?id dictate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AjFA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dictate.clp 	dictate1   "  ?id "  AjFA_xe )" crlf))
)

;"dictate","VT","1.AjFA_xenA"
;She dictated works to her siblings.
;

;@@@ Added by Pramila(Banasthali University) on 07-01-2014
;He dictated the letter to his clerk.       ;shiksharthi
;उसने अपने लिपिक को पत्र लिखवाया.
(defrule dictate2
(declare (salience 4900))
(id-root ?id dictate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(kriyA-to_saMbanXI  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id liKavA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dictate.clp 	dictate2   "  ?id "  liKavA )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 07-01-2014
;I do not write, I dictate.          ;shiksharthi
;मैं लिखता नहीं ,लिखवाता हूँ.
(defrule dictate3
(declare (salience 4900))
(id-root ?id dictate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma  ?id ?id1)
(id-root ?id1 write)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id liKavA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dictate.clp 	dictate3   "  ?id "  liKavA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 07-01-2014
;The dictates of your conscience.                  ;shiksharthi
;तुम्हारी आत्मा की पुकार
(defrule dictate4
(declare (salience 5000))
(id-root ?id dictate)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 conscience)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pukAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dictate.clp 	dictate4   "  ?id "  pukAra )" crlf))
)
