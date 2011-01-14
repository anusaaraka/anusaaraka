
(defrule well0
(declare (salience 5000))
(id-root ?id well)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  well.clp 	well0   "  ?id "  acCA )" crlf))
)

;default_sense && category=adjective	niroga	0
;"well","Adj","1.niroga"
;We are all well here.
;--"2.sanwoRajanaka"
;One should have a sound mind && well disciplined body.
;
(defrule well1
(declare (salience 4900))
(id-root ?id well)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acCI_waraha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  well.clp 	well1   "  ?id "  acCI_waraha )" crlf))
)

;"well","Adv","1.acCI_waraha"
;The students behaved well.
;
(defrule well2
(declare (salience 4800))
(id-root ?id well)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id interjection)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id are_vAha!))
)

;"well","Interj","1.are_vAha!"
;Well, what a thing to say.
;
(defrule well3
(declare (salience 4700))
(id-root ?id well)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuzA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  well.clp 	well2   "  ?id "  kuzA )" crlf))
)

;"well","N","1.kuzA"
;There is a well near the tree.
;
