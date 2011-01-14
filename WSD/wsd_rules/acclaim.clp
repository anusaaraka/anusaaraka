
(defrule acclaim0
(declare (salience 5000))
(id-root ?id acclaim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAha_vAhI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  acclaim.clp 	acclaim0   "  ?id "  vAha_vAhI )" crlf))
)

;"acclaim","N","1.vAha_vAhI/sammAna"
;His new book was recieved with great critical acclaim.
;
(defrule acclaim1
(declare (salience 4900))
(id-root ?id acclaim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAha_vAha_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  acclaim.clp 	acclaim1   "  ?id "  vAha_vAha_kara )" crlf))
)

;"acclaim","V","1.vAha_vAha_karanA"
;The critics acclaimed his new book.
;

;;Example:-She is an acclaimed dancer.
 (defrule acclaimed1
 (declare (salience 6400))
 (id-root ?id acclaim)
 ?mng <-(meaning_to_be_decided ?id)
 (id-cat_coarse ?id adjective)
 =>
 (retract ?mng)
 (assert (id-wsd_root_mng ?id viKyAwa))
 (if ?*debug_flag* then
 (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  acclaim.clp acclaimed1 " ?id " viKyAwa)" crlf))
 )

