
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)13-Feb-2014
;She buffed up the brass with a cloth.[oald]
;उसने कपड़े से तूर्य को चमकाया . 
(defrule buff2
(declare (salience 5000))
(id-root ?id buff)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 camakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " buff.clp	buff2  "  ?id "  " ?id1 " camakA )" crlf)
)
)


;****************************DEFAULT RULES*******************************

(defrule buff0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id buff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAxAmI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buff.clp 	buff0   "  ?id " bAxAmI )" crlf))
)


;"buff","Adj","1.bAxAmI"
;She was wearing a buff color saree.
;


;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)13-Feb-2014
(defrule buff1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id buff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camadZA));changed the meaning from 'BEMsa_Axi_kA_camadZA' to 'camadZA'
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buff.clp 	buff1   "  ?id " camadZA )" crlf))
)


;"buff","N","1.BEMsa_Axi_kA_camadZA"
;In the buff
;
