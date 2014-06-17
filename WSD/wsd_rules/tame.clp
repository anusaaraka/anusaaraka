
(defrule tame0
(declare (salience 5000))
(id-root ?id tame)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAlawU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tame.clp 	tame0   "  ?id "  pAlawU )" crlf))
)

;"tame","Adj","1.pAlawU"
;The tamed animal is used for labour.
;--"2.xabbU"
;She gets her tame sister to help her with domestic work.
;--"3.nIrasa"
;It was a tame Christmas party.
;
(defrule tame1
(declare (salience 4900))
(id-root ?id tame)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaSa_meM_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tame.clp 	tame1   "  ?id "  vaSa_meM_ho )" crlf))
)

;"tame","VI","1.vaSa_meM_honA"
;The lion is tamed for the show.
;
(defrule tame2
(declare (salience 4800))
(id-root ?id tame)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tame.clp 	tame2   "  ?id "  vaSa_kara )" crlf))
)

;"tame","VT","1.vaSa_karanA"
;The mahout tamed the elephant.
;

;@@@ Added by Prachi Rathore[25-2-14]
;--"2.xabbU"
;She gets her tame sister to help her with domestic work.
(defrule tame3
(declare (salience 5050))
(id-root ?id tame)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabbu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tame.clp 	tame3   "  ?id "  xabbu )" crlf))
)


