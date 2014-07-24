
(defrule leaf0
(declare (salience 5000))
(id-root ?id leaf)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id leaves) ;$$$ Modified ?id1 to ?id by Roja(11-04-14)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawwA))
(assert (id-wsd_root ?id leaf))
(assert (id-wsd_number ?id p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leaf.clp 	leaf0   "  ?id "  pawwA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number   " ?*wsd_dir* "  leaf.clp      leaf0   "  ?id " p )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leaf.clp      leaf0   "  ?id " leaf )" crlf))
)

;"leaves","N","1.pawwiyAz"
;The path was strewn with leaves.
;
;
(defrule leaf1
(declare (salience 4900))
(id-root ?id leaf)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawwA))
(assert (id-wsd_root ?id leaf))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leaf.clp 	leaf1   "  ?id "  pawwA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  leaf.clp      leaf1   "  ?id " leaf )" crlf))
)
;@@@   --- Added by Nandini(9-4-14)
;While I was waiting I leafed through a magazine.[OALD]
;jaba mEM  prawIkRA_kara rahA WA mEMne pawrikA ko sarasarI_wOra_se paDA.
(defrule leaf2
(declare (salience 4900))
(id-root ?id leaf)
?mng <-(meaning_to_be_decided ?id)
(kriyA-through_saMbanXI  ?id ?id1)
(id-root ?id1 magazine|book)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarasarI_wOra_se_paDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leaf.clp 	leaf2   "  ?id "  sarasarI_wOra_se_paDZa )" crlf))
)

;@@@   --- Added by Nandini(10-4-14)
;Please shut one leaf of the door.   [From clp]
;kqpayA xaravAje kA eka pallA banxa kIjie.
(defrule leaf3
(declare (salience 4900))
(id-root ?id leaf)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(id-root ?id1 shut)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pallA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leaf.clp 	leaf3   "  ?id "  pallA )" crlf))
)


;default_sense && category=noun	pawwA	0
;"leaf","N","1.pawwA"
;Leaf of a plant or tree. 
;--"2.pannA{puswaka kA}"
;Leaf of a book. 
;--"3.baraka{cAzxI yA sone kA}"
;Silver or gold-leaf. 
;--"4.pallA"
;Shut one leaf of the door.
;
;
