
(defrule pine0
(declare (salience 5000))
(id-root ?id pine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIda_kA_peda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pine.clp 	pine0   "  ?id "  cIda_kA_peda )" crlf))
)

;"pine","N","1.cIda_kA_peda/xevaxAru"
;Pine trees are found in cool northern regions && are used for making furniture.
;
(defrule pine1
(declare (salience 4900))
(id-root ?id pine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAlasA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pine.clp 	pine1   "  ?id "  lAlasA_kara )" crlf))
)

;"pine","V","1.lAlasA_karanA"
;A cat was pining for her kittens.
;


;@@@ Added by Sonam Gupta MTech IT Banasthali 15-3-2014
;Carter died in 1904 after an accident and Leno pined away and died in London six months later. [cambridge]
;कार्टर की मृत्यु १९०४ में हुई थी एक हादसे के बाद और लिनो शोक में डूब गया और लन्दन में छः महीने बाद मर गया . 
(defrule pine2
(declare (salience 4900))
(id-root ?id pine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 away)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Soka_meM_dUba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pine.clp  pine2  "  ?id "  " ?id1 "  Soka_meM_dUba  )" crlf))
)




;@@@ Added by Sonam Gupta MTech IT Banasthali 15-3-2014
;Pine furniture. [cambridge]
;चीड़ की लकड़ी का फर्नीचर .
(defrule pine3
(declare (salience 4900))
(id-root ?id pine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIdZa_kI_lakadZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pine.clp 	pine3   "  ?id "  cIdZa_kI_lakadZI )" crlf))
)


