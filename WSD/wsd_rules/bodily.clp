
(defrule bodily0
(declare (salience 5000))
(id-root ?id bodily)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SArIrika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bodily.clp 	bodily0   "  ?id "  SArIrika )" crlf))
)

;"bodily","Adj","1.SArIrika"
;The soldiers stood by the post without worrying about any bodily harm.
;
(defrule bodily1
(declare (salience 4900))
(id-root ?id bodily)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saSarIra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bodily.clp 	bodily1   "  ?id "  saSarIra )" crlf))
)

;"bodily","Adv","1.saSarIra"
;He was bodily removed from the room
;use saSarIra uTA liyA gayA
;--"2.pUrNa_rUpa_se"
;The pillar was moved  bodily to a new site
;KamBe ko pUrNa rUpa se nae sWAna para hatAyA gayA 
;
