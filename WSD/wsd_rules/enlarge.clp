
(defrule enlarge0
(declare (salience 5000))
(id-root ?id enlarge)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 apavqxXi_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " enlarge.clp	enlarge0  "  ?id "  " ?id1 "  apavqxXi_kara  )" crlf))
)

;Would you like to enlarge on your original statement.
;kyA wuma apane vAswavika kaWana meM apavqxXi karanA cAhoge ?
(defrule enlarge1
(declare (salience 4900))
(id-root ?id enlarge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enlarge.clp 	enlarge1   "  ?id "  baDZA )" crlf))
)

;"enlarge","VI","1.baDZAnA"
;That building has been considerably enlarged.
;
;
