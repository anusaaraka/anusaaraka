
(defrule offend0
(declare (salience 5000))
(id-root ?id offend)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 against)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 viruxXa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " offend.clp	offend0  "  ?id "  " ?id1 "  viruxXa_jA  )" crlf))
)

; His deed offends against God.
;usakA yaha kArya sixXAnwa ke viruxXa hE
(defrule offend1
(declare (salience 4900))
(id-root ?id offend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aprasanna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  offend.clp 	offend1   "  ?id "  aprasanna_kara )" crlf))
)

;"offend","VTI","1.aprasanna_karanA"
;Her tactless remark offended me.
;
