;$$$ Modified by Preeti(26-2-14)
;The results are entirely consistent with our earlier research.[Oxford Advanced Learner's Dictionary] 
;pariNAma hamAre pahale ke SoXa ke sAWa sampUrNawayA saMgawa hEM.
(defrule consistent0
(declare (salience 1000))
(id-root ?id consistent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-with_saMbanXI  ?id ?) ;Added by Preeti 26-2-14
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMgawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consistent.clp 	consistent0   "  ?id "  saMgawa )" crlf))
)

;$$$ Modified by Preeti(26-2-14) changed meaning from 'aparivarwanaSIla' to  'anurUpa'
;There has been a consistent improvement in her attitude.[Oxford Advanced Learner's Dictionary] 
;usakI pravqwi meM eka anurUpa suXAra huA hE.
(defrule consistent1
(id-root ?id consistent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anurUpa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consistent.clp 	consistent1   "  ?id "  anurUpa )" crlf))
)

;"consistent","Adj","1.aparivarwanaSIla/samAna/eka_sA"
;Steffi Graf had been very consistent in her game.
;
;
