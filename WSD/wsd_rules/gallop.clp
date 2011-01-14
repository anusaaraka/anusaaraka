
(defrule gallop0
(declare (salience 5000))
(id-root ?id gallop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jalxI_se_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " gallop.clp	gallop0  "  ?id "  " ?id1 "  jalxI_se_kara  )" crlf))
)

;He galloped through his work so that he could go home early.
;usane apanA kAma jalxI se kiyA wAki vaha jalxI Gara pahuzca sake
(defrule gallop1
(declare (salience 4900))
(id-root ?id gallop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarapata_xOdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gallop.clp 	gallop1   "  ?id "  sarapata_xOdZa )" crlf))
)

;"gallop","N","1.sarapata_xOdZa"
;I saw the gallop of the horse.
;
(defrule gallop2
(declare (salience 4800))
(id-root ?id gallop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarapata_xOdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gallop.clp 	gallop2   "  ?id "  sarapata_xOdZa )" crlf))
)

;"gallop","V","1.sarapata_xOdZanA"
;The horse was galloping.
;
