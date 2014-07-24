;$$$--- Modified by Nandini(28-4-14)
;You should limber up regularly if you want to win in the race.
;yaxi wuma xOdZa meM jIwanA cAhawe ho wo wumheM niwya aByAsa karanA hogA
(defrule limber0
(declare (salience 5000))
(id-root ?id limber)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 krIdA-pUrva_vyAyAma_kara));meaning change by Nandini
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " limber.clp	limber0  "  ?id "  " ?id1 "  krIdA-pUrva_vyAyAma_kara  )" crlf))
)

;$$$--- Modified by Nandini(28-4-14)
;I have to practise to keep myself limber. [Oxford-dict] ;Added eng-sentence  by Nandini 
;mE kuxako lachilA raKane ke liye aByAsa karawI hUz. ;Added hin-sentence  by Nandini 
(defrule limber1
(declare (salience 4900))
(id-root ?id limber)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective);change cat_course by Nandini
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lachilA)) ;meaning change by Nandini
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  limber.clp 	limber1   "  ?id " lachilA )" crlf))
)

;"limber","V","1.krIdA-pUrva vyAyAma"
;They limbered up before going to the ground for the match.
;
;
