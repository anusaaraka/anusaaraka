
(defrule furious0
(declare (salience 5000))
(id-root ?id furious)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) so )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kruxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  furious.clp 	furious0   "  ?id "  kruxXa )" crlf))
)

(defrule furious1
(declare (salience 4900))
(id-root ?id furious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  furious.clp 	furious1   "  ?id "  jora )" crlf))
)

(defrule furious2
(declare (salience 4800))
(id-root ?id furious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kupiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  furious.clp 	furious2   "  ?id "  kupiwa )" crlf))
)

;"furious","Adj","1.kupiwa"
;The teacher made a furious statement at the student.
;--"2.BIRaNa"
;A furious storm uprooted the trees.
;
;
