
(defrule yet0
(declare (salience 5000))
(id-root ?id yet)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) and)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yet.clp 	yet0   "  ?id "  Pira_BI )" crlf))
)

;He completed his work early && yet he did not go home.
(defrule yet1
(declare (salience 4900))
(id-root ?id yet)
?mng <-(meaning_to_be_decided ?id)
(left_word_punct  =(- ?id 1) yes)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yet.clp 	yet1   "  ?id "  Pira_BI )" crlf))
)

;In this age of science && technology, psychology has been considered as one of the youngest; yet one of the most influential sciences.
(defrule yet2
(declare (salience 4800))
(id-root ?id yet)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBI_waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yet.clp 	yet2   "  ?id "  aBI_waka )" crlf))
)

;Has he not come yet?
(defrule yet3
(declare (salience 4700))
(id-root ?id yet)
?mng <-(meaning_to_be_decided ?id)
(niReXAwmaka_vAkya      )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBI_waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yet.clp 	yet3   "  ?id "  aBI_waka )" crlf))
)

(defrule yet4
(declare (salience 4600))
(id-root ?id yet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBI_waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yet.clp 	yet4   "  ?id "  aBI_waka )" crlf))
)

;"yet","Adv","1.aBI_waka"
;I haven't found the book yet.
;
(defrule yet5
(declare (salience 4500))
(id-root ?id yet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wo_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  yet.clp 	yet5   "  ?id "  wo_BI )" crlf))
)

;"yet","Conj","1.wo_BI"
;He is slow yet steady in his work.
;
