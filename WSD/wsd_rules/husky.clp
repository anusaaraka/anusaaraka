
(defrule husky0
(declare (salience 5000))
(id-root ?id husky)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarrAyI_huI_AvAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  husky.clp 	husky0   "  ?id "  BarrAyI_huI_AvAja )" crlf))
)

;"husky","Adj","1.BarrAyI_huI_AvAja"
;TaMda se usakI AvAjZa meM 'husky' hE.
;
(defrule husky1
(declare (salience 4900))
(id-root ?id husky)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eskimo_kuwwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  husky.clp 	husky1   "  ?id "  eskimo_kuwwA )" crlf))
)

;"husky","N","1.eskimo_kuwwA"
;himagAdI ko uwwaraXruvIya kRewra meM' husky' KIMcawe hEM.
;
