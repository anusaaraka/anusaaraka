
(defrule sail0
(declare (salience 5000))
(id-root ?id sail)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sailing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jalayAwrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sail.clp  	sail0   "  ?id "  jalayAwrA )" crlf))
)

;"sailing","N","1.jalayAwrA"
;Shikha took two sailings from one side to other.
;
(defrule sail1
(declare (salience 4900))
(id-root ?id sail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sail.clp 	sail1   "  ?id "  pAla )" crlf))
)

(defrule sail2
(declare (salience 4800))
(id-root ?id sail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalayAwrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sail.clp 	sail2   "  ?id "  jalayAwrA_kara )" crlf))
)

;"sail","V","1.jalayAwrA karanA"
;She sailed on her boat.
;--"2.ravAnA honA"
;When does the ferry sail?
;--"3.pAra karanA"
;Sail the Aegean in a cruiser.
;
;