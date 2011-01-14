
(defrule halfway0
(declare (salience 5000))
(id-root ?id halfway)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bIca_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  halfway.clp 	halfway0   "  ?id "  bIca_vAlA )" crlf))
)

;"halfway","Adj","1.bIca_vAlA"
;They reached the halfway point of the race-track && came back .
;ve xOdZa ke mArga ke bIca vAle sWAna waka jA kara vApasa lOta Ae .
;
(defrule halfway1
(declare (salience 4900))
(id-root ?id halfway)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXA_rAswA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  halfway.clp 	halfway1   "  ?id "  AXA_rAswA )" crlf))
)

;"halfway","Adv","1.AXA_rAswA"
;The pilgrims of Maan Srovar came back from the half-way due to landslide .
;mAna sarovara yAwrI BUsKalana ke kAraNa AXe rAswe se lOta Ae.
;
