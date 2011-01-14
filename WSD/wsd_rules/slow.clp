
(defrule slow0
(declare (salience 5000))
(id-root ?id slow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kama_mehanawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " slow.clp	slow0  "  ?id "  " ?id1 "  kama_mehanawa_kara  )" crlf))
)

(defrule slow1
(declare (salience 4900))
(id-root ?id slow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kama_mehanawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " slow.clp	slow1  "  ?id "  " ?id1 "  kama_mehanawa_kara  )" crlf))
)

(defrule slow2
(declare (salience 4800))
(id-root ?id slow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gawi_XImI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " slow.clp	slow2  "  ?id "  " ?id1 "  gawi_XImI_kara  )" crlf))
)

(defrule slow3
(declare (salience 4700))
(id-root ?id slow)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gawi_XImI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " slow.clp	slow3  "  ?id "  " ?id1 "  gawi_XImI_kara  )" crlf))
)

(defrule slow4
(declare (salience 4600))
(id-root ?id slow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_mehanawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slow.clp 	slow4   "  ?id "  kama_mehanawa_kara )" crlf))
)

(defrule slow5
(declare (salience 4500))
(id-root ?id slow)
?mng <-(meaning_to_be_decided ?id)
(or (id-cat ?id adjective|adjective_comparative|adjective_superlative)(id-cat_coarse ?id adjective))
;Modified category by Sheetal (02-08-10)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XImA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slow.clp 	slow5   "  ?id "  XImA )" crlf))
)
; Modified XIre_XIre as XImA by sukhada
;"slow","Adj","1.XIre_XIre"
;Patients suffering from jaundice make slow recovery.
;--"2.maMxa_gawi_vAlA"    
;He is slow in understanding.
;--"3.suswa"
;He is slow in his work.
;
;
